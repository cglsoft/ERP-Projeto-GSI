unit u_ParRelLD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TfrmParRelLD = class(TForm)
    GroupBox1: TGroupBox;
    rgEmp: TRadioGroup;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Panel23: TPanel;
    Label59: TLabel;
    BitBtn10: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    F   : TextFile;
    procedure PadraoExport( Conta, Tipo : String ; Valor, VrFOB : Real ; CCusto : String );
    procedure ExportarDI;
  public
    { Public declarations }
  end;

var
  frmParRelLD: TfrmParRelLD;

implementation

uses u_dmIT, u_RelLD, Math, DB, FuncoesDSI, u_Exportar;

{$R *.dfm}

procedure TfrmParRelLD.PadraoExport( Conta, Tipo : String ; Valor, VrFOB : Real ; CCusto : String );
var Valor2, Valor3, x, x2 : String;
    a : integer;
begin
 Valor2 := FormatFloat('0000000000.00', Valor );
 Valor3 := FormatFloat('0000000000.00', VrFob );
 x      := '';
 for a  := 1 to Length( Valor2 ) do
 begin
  if Copy( Valor2, a, 1 ) <> ',' then
     x := x + Copy( Valor2, a, 1 )
  else
     x := x + '.';
 end;

 x2     := '';
 for a  := 1 to Length( Valor3 ) do
 begin
  if Copy( Valor3, a, 1 ) <> ',' then
     x2 := x2 + Copy( Valor3, a, 1 )
  else
     x2 := x2 + '.';
 end;

 Write( F,'"' +  FormatDateTime( 'ddmmyyyy',dmIT.cdsRelLDDATAENTRADANFEID.AsDateTime ) + '",');
 Write( F, '"' + StrZero( dmIT.cdsRelLDNUMEMPRESAEXP.Value,3, 0 ) + '",' );
 Write( F,'"009",' );

 Conta := SubstituiString( Conta, '.','');

 if Tipo = 'D' then
    Write( F , '"' + Conta + '",""' )
 else
    Write( F , '"","' + Conta + '"'  );

 Write( F ,',"' + x + '",' );
 Write( F ,'"' + CCusto + '",' );
 WriteLN( F, '"Importacoes Recebidas no mes:  Nr. DI '+ dmIT.cdsRelLDDIID.AsString + 'Nr. NFE ' + dmIT.cdsRelLDNFEID.AsString +
           'REF. IMPORTACAO ' + dmIT.cdsRelLDREFERENCIA.AsString +
           'DEMONSTR. DESP. Nr. ' + dmIT.cdsRelLDNUMDEMONSDESPESA.AsString +
           'VLR. FOB US$ ' + x2 + '"' );
end;

procedure TfrmParRelLD.ExportarDI;
var VlrImportacao : Currency;
begin
 case rgEmp.ItemIndex  of
 0 : AssignFile( F, ExtractFilePath( Application.ExeName )+ 'EXPORT\IMPORTACAO.001');
 1 : AssignFile( F, ExtractFilePath( Application.ExeName )+ 'EXPORT\IMPORTACAO.012');
 2 : AssignFile( F, ExtractFilePath( Application.ExeName )+ 'EXPORT\IMPORTACAO.015');
 3 : AssignFile( F, ExtractFilePath( Application.ExeName )+ 'EXPORT\IMPORTACAO.017');
 end;

 ReWrite(F);

 dmIT.cdsRelLD.First;
 while not dmIT.cdsRelLD.Eof do
 begin
  VlrImportacao := IfThen( dmIT.cdsRelLDVLRDEBITO.AsCurrency > 0, dmIT.cdsRelLDVLRDEBITO.AsCurrency, dmIT.cdsRelLDVLRCREDITO.AsCurrency );

  PadraoExport( dmIT.cdsRelLDCONTACONTABILID.Value,
                dmIT.cdsRelLDCREDDEB.Value,
                VlrImportacao,
                dmIT.cdsRelLDVLRTOTALFOBUS.AsCurrency,
                dmIT.cdsRelLDCENTROCUSTOID.AsString );

  dmIT.cdsRelLD.Next;
 end;
 CloseFile(F);
end;

procedure TfrmParRelLD.FormCreate(Sender: TObject);
begin
 dtpIni.Date := Date;
 dtpFim.Date := Date;
end;

procedure TfrmParRelLD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmParRelLD := Nil;
 Action      := caFree;
end;

procedure TfrmParRelLD.FormDestroy(Sender: TObject);
begin
 frmParRelLD := nil;
end;

procedure TfrmParRelLD.BitBtn10Click(Sender: TObject);
begin
 Application.CreateForm( TfrmRelLD, frmRelLD );
 try
  dmIT.cdsRelLD.Params[0].AsString := DateToStr( dtpIni.Date );
  dmIT.cdsRelLD.Params[1].AsString := DateToStr( dtpFim.Date );

   case rgEmp.ItemIndex of
   0 : begin
        dmIT.cdsRelLD.Params[2].AsString := '1';
        dmIT.cdsRelLD.Params[3].AsString := '11';
       end;
   1 : begin
        dmIT.cdsRelLD.Params[2].AsString := '12';
        dmIT.cdsRelLD.Params[3].AsString := '13';
       end;
   2 : begin
        dmIT.cdsRelLD.Params[2].AsString := '15';
        dmIT.cdsRelLD.Params[3].AsString := '15';
       end;

   3 : begin
        dmIT.cdsRelLD.Params[2].AsString := '17';
        dmIT.cdsRelLD.Params[3].AsString := '17';
       end;
   end;

  dmIT.cdsRelLD.Open;
  frmRelLD.qrlblPeriodo.Caption := frmRelLD.qrlblPeriodo.Caption + DateToStr( dtpIni.Date ) + ' à ' + DateToStr( dtpFim.Date );
  frmRelLD.qrpRelLD.PreviewModal;

  dmIT.cdsRelLD.AddIndex('idx1','DATAENTRADANFEID',[ixCaseInsensitive],'','',0 );
  dmIT.cdsRelLD.IndexName := 'idx1';
  ExportarDI;

  dmIT.cdsRelLD.DeleteIndex('idx1');
  dmIT.cdsRelLD.Close;
 finally
  FreeAndNil( frmRelLD.qrpRelLD );
  FreeAndNil( frmRelLD );
 end;

end;

procedure TfrmParRelLD.BitBtn2Click(Sender: TObject);
begin
 dmIT.cdsRelLD.Open;
 if not dmIT.cdsRelLD.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmIT.dsRelLD;
     frmExportar.Show;
     dmIT.cdsRelLD.Open;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure TfrmParRelLD.BitBtn8Click(Sender: TObject);
begin
 Close;
end;

end.
