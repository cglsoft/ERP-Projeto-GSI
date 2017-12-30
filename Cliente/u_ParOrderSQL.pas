unit u_ParOrderSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmParOrderSQL = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   RelatorioId    : Integer;
  end;

var
  frmParOrderSQL : TfrmParOrderSQL;

implementation

uses u_Rel002A, u_Rel002, u_Pesquisa,FuncoesCliente;

{$R *.dfm}

procedure TfrmParOrderSQL.BitBtn1Click(Sender: TObject);
begin
 if       RadioGroup1.ItemIndex = 2 then
          begin
           try
            frmRel002A := TfrmRel002A.Create(nil);
            frmRel002A.Quickrep1.PreviewModal;
           finally
            FreeAndNil( frmRel002A );
           end;
          end
  else if RadioGroup1.ItemIndex = 3 then
          begin
           try
            frmRel002A := TfrmRel002A.Create(nil);
            frmRel002A.QRDBText7.DataField  := 'NaturezaOpId';
            frmRel002A.QRDBText17.DataField := 'NaturezaOpId';
            frmRel002A.QRGroup1.Expression  := 'IF( CFOP <> '+ QuotedStr('') + ',NATUREZAOPID,'+ QuotedStr( 'OUTRO')+')';
            frmRel002A.Quickrep1.PreviewModal;
           finally
            FreeAndNil( frmRel002A );
           end;
        end
  else    begin
           try
            frmRel002 := TfrmRel002.Create(nil);
            frmRel002.Quickrep1.PreviewModal;
           finally
            FreeAndNil( frmRel002 );
           end;
          end;
 frmParOrderSQL.Close;
end;

procedure TfrmParOrderSQL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action         := cafree;
 frmParOrderSQL := nil;
end;

procedure TfrmParOrderSQL.BitBtn2Click(Sender: TObject);
begin
 Screen.Cursor := crHourGlass;
 frmPesquisa.cdsPesqGenerica.IndexFieldNames := '';
 try
  if      RelatorioId = 1 then
          begin
           if      ( RadioGroup1.ItemIndex = 0 ) then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[1],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
           else if RadioGroup1.ItemIndex = 1 then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[5],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
           else if RadioGroup1.ItemIndex = 2 then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[8],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
           else if ( RadioGroup1.ItemIndex = 3 ) and ( RelatorioId = 1 ) then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[6],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa );
          end
  else if RelatorioId = 2 then
          begin
           if      ( RadioGroup1.ItemIndex = 0 ) then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[1],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
           else if RadioGroup1.ItemIndex = 1 then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[4],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
           else if RadioGroup1.ItemIndex = 2 then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[5],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
           else if ( RadioGroup1.ItemIndex = 3 ) and ( RelatorioId = 1 ) then
                   OrdenaFieldDBGrid( frmPesquisa.dbgrdPadraoPesquisa.Columns.Items[7],frmPesquisa.dsPesqGenerica, frmPesquisa.dbgrdPadraoPesquisa )
          end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

end.
