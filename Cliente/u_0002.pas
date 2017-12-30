unit u_0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, Buttons, DB, DBClient,
  Grids, DBGrids, DBCtrls;

type
  Tfrm0002 = class(TForm)
    Panel20: TPanel;
    Panel23: TPanel;
    Label59: TLabel;
    GroupBox1: TGroupBox;
    Periodo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel11: TPanel;
    lblContador: TLabel;
    Label7: TLabel;
    ds002: TDataSource;
    RadioGroup1: TRadioGroup;
    cds002: TClientDataSet;
    BitBtn2: TBitBtn;
    ds002B: TDataSource;
    BitBtn6: TBitBtn;
    dsDifBase: TDataSource;
    cdsDifBase: TClientDataSet;
    cdsDifBaseEMPRESAID: TIntegerField;
    cdsDifBaseNOTAID: TIntegerField;
    cdsDifBaseDATAEMISSAOID: TDateField;
    cdsDifBaseDIFERENCAICMS: TFloatField;
    cdsDifBaseDIFERENCAIPI: TFloatField;
    cdsDifBaseVLRTOTALNOTA: TFloatField;
    cdsDifBaseVLRSOMA: TFloatField;
    ckbxAtiva: TCheckBox;
    CheckBox6: TCheckBox;
    ckbxAtivaSimilar: TCheckBox;
    cds002B: TClientDataSet;
    cds002BEMPRESAID: TIntegerField;
    cds002BNOTAID: TIntegerField;
    cds002BDATAEMISSAOID: TDateField;
    cds002BTIPONOTA: TStringField;
    cds002BCPFCNPJ: TStringField;
    cds002BNOME: TStringField;
    cds002BDATAENTRADA: TDateField;
    cds002BNATUREZAOPID: TIntegerField;
    cds002BDESCRICAOOPERACAONOTA: TStringField;
    cds002BCFOP: TStringField;
    cds002BSIGLANATUREZAID: TIntegerField;
    cds002BTRANSFCONSUMO: TIntegerField;
    cds002BCANCELADA: TIntegerField;
    cds002BVLRTOTALNOTA: TFloatField;
    cds002BVLRTOTALICMS: TFloatField;
    cds002BVLRTOTALBASEICMS: TFloatField;
    cds002BVLRTOTALIPI: TFloatField;
    cds002BVLRTOTALBASEIPI: TFloatField;
    cds002BVLRTOTALISENTASICMS: TFloatField;
    cds002BVLRTOTALISENTASIPI: TFloatField;
    cds002BVLRTOTALOUTRASICMS: TFloatField;
    cds002BVLRTOTALOUTRASIPI: TFloatField;
    cds002BVLRTOTALSERVICO: TFloatField;
    cds002BOSID: TStringField;
    cds002BSERIEID: TStringField;
    cds002BMODELOID: TStringField;
    chkbxREDFEspec: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AbreNfe( var cds : TClientdataSet );
    procedure AbreNfs( var cds : TClientdataSet );
    procedure InicializaCds002;
    procedure OrdenaCds;
    procedure ImprimeRelatorio;
    procedure InsereDadosCds002B( var cds : TClientDataSet; Relatorio : Integer );
    procedure InicializaVariaveis;
    procedure ProcessarDiferenca( Relatorio : Integer; cds : TClientDataSet );
  public
    { Public declarations }
    RelatorioId  : Integer;

    VLRTOTALNOTA,VLRTOTALIPI,VLRTOTALBASEIPI : Real;
    VLRTOTALICMS,VLRTOTALBASEICMS            : Real;
    VLRTOTALISENTASICMS,VLRTOTALISENTASIPI   : Real;
    VLRTOTALOUTRASIPI,VLRTOTALOUTRASICMS     : Real;

    SVLRTOTALNOTA,SVLRTOTALIPI,SVLRTOTALBASEIPI  : Real;
    SVLRTOTALICMS,SVLRTOTALBASEICMS              : Real;
    SVLRTOTALISENTASICMS,SVLRTOTALISENTASIPI     : Real;
    SVLRTOTALOUTRASIPI,SVLRTOTALOUTRASICMS       : Real;
  end;

var
  frm0002: Tfrm0002;
  cdsAuxNfe,cdsAuxNfs : TClientDataSet;

implementation

uses FuncoesCliente, u_Rel002, u_Rel002A, u_Exportar, u_Rel002B;

{$R *.dfm}

procedure Tfrm0002.AbreNfe( var cds : TClientdataSet );
var iSQL : String;
begin
 cds  := nil;
 iSQL := 'SELECT '+
         '  EF_NFE.EMPRESAID,'+
         '  EF_NFE.NFEID,'+
         '  EF_NFE.TIPONOTA,'+
         '  EF_NFE.NOME || + ' + QuotedStr( ' - ' ) + ' || EF_NFE.SIGLAUFID AS NOME, ' +
         '  EF_NFE.DATAEMISSAOID,'+
         '  EF_NFE.DATAENTRADA,'+
         '  EF_NFE.NATUREZAOPID,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NATUREZAOP.SIGLANATUREZAID,'+
         '  EF_NATUREZAOP.TRANSFCONSUMO,'+
         '  EF_NFE.CANCELADA,'+
         '  EF_NFE.VLRTOTALNOTA,'+
         '  EF_NFE.VLRTOTALBASEICMS,'+
         '  EF_NFE.VLRTOTALICMS,'+
         '  EF_NFE.VLRTOTALIPI,'+
         '  EF_NFE.VLRTOTALBASEIPI,'+
         '  EF_NFE.VLRTOTALISENTASICMS,'+
         '  EF_NFE.VLRTOTALISENTASIPI,'+
         '  EF_NFE.VLRTOTALOUTRASICMS,'+
         '  EF_NFE.VLRTOTALOUTRASIPI,'+
         '  OS_OS.OSID,'+
         '  OS_OS.SERIEID,'+
         '  OS_OS.MODELOID'+
         '  FROM'+
         '  EF_NFE,'+
         '  EF_NATUREZAOP,'+
         '  OS_OS,'+
         '  EF_SIGLANATUREZA'+
         '  WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFE.NATUREZAOPID'+
         '  AND EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NATUREZAOP.SIGLANATUREZAID'+
         '  AND OS_OS.OSID(+) = EF_NFE.OSID'+
         '  AND EF_NFE.CANCELADA = 0'+
         '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
         '  AND EF_NFE.DATAENTRADA >= '+ QuotedStr( MaskEdit1.Text )+
         '  AND EF_NFE.DATAENTRADA <= '+ QuotedStr( MaskEdit2.Text )+
         '  AND EF_NATUREZAOP.DOCINTERNO = 0';
         //         '  AND TIPONOTA <> '+ QuotedStr('F');

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (15,17) ) ';
     end;

 if chkbxREDFEspec.Checked then
    iSQL :=  iSQL + ' AND TIPONOTA <> ' + QuotedStr('F');

 if MaskEdit3.Text <> '' then
    iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA = '+ QuotedStr( MaskEdit3.Text );

 if MaskEdit4.Text <> '' then
    iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA <> '+ QuotedStr( MaskEdit4.Text );

 if MaskEdit5.Text <> '' then
    iSQL := iSQL + ' AND EF_NATUREZAOP.CFOP >= '+ QuotedStr( MaskEdit5.Text );

 if MaskEdit6.Text <> '' then
    iSQL := iSQL + ' AND EF_NATUREZAOP.CFOP <= '+ QuotedStr( MaskEdit5.Text );

 try
  ExecDynamicProvider( -1,iSQL,cds );
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0002.InicializaCds002;
begin
 with cds002B do
 begin
  EmptyDataSet;
  Close;
  Open;
 end;
end;

procedure Tfrm0002.BitBtn1Click(Sender: TObject);
begin
 RelatorioId := 1;
 InicializaCds002;
 AbreNfe( cds002 );
 OrdenaCds();
 cds002.First;
 ds002.DataSet := cds002;
 ImprimeRelatorio;
end;

procedure Tfrm0002.OrdenaCds;
begin
 if      RelatorioId = 2 then
         begin
          if      ( RadioGroup1.ItemIndex = 0 ) then
                    cds002.IndexFieldNames := 'NFSID'
          else if RadioGroup1.ItemIndex = 1 then
                  cds002.IndexFieldNames := 'DATAEMISSAOID;NFSID'
          else if RadioGroup1.ItemIndex = 2 then
                  cds002.IndexFieldNames := 'CFOP;NFSID;DATAEMISSAOID'
          else if ( RadioGroup1.ItemIndex = 3 ) then
                  cds002.IndexFieldNames := 'NATUREZAOPID;DATAEMISSAOID';
         end
 else if RelatorioId = 1 then
         begin
          if      ( RadioGroup1.ItemIndex = 0 ) then
                    cds002.IndexFieldNames := 'NFEID'
          else if RadioGroup1.ItemIndex = 1 then
                  cds002.IndexFieldNames := 'DATAENTRADA;NFEID'
          else if RadioGroup1.ItemIndex = 2 then
                  cds002.IndexFieldNames := 'CFOP;NFEID;DATAEMISSAOID'
          else if ( RadioGroup1.ItemIndex = 3 ) then
                  cds002.IndexFieldNames := 'NATUREZAOPID';
         end
 else if RelatorioId = 3 then
         begin
          if CheckBox2.Checked then
             cds002B.IndexName := 'IDX2'
          else
             cds002B.IndexName := 'IDX1';
         end;
end;

procedure Tfrm0002.ImprimeRelatorio;
begin
 if       RelatorioId = 3 then
          begin
           if CheckBox2.Checked = False then
              begin
               try
                frmRel002B := TfrmRel002B.Create(nil);
                frmRel002B.QuickRep1.Preview;
               finally
                FreeAndNil( frmRel002B.QuickRep1 );
                FreeAndNil( frmRel002B );
               end;
              end
           else
              begin
               try
                frmRel002B := TfrmRel002B.Create(nil);

                { *** Entradas *** }
                frmRel002B.QrlVlrTotalNota.Enabled        := True;
                frmRel002B.QrlVlrTotalBaseICMS.Enabled    := True;
                frmRel002B.QrlVlrTotalICMS.Enabled        := True;
                frmRel002B.QrlVlrTotalBaseIPI.Enabled     := True;
                frmRel002B.QrlVlrTotalIPI.Enabled         := True;
                frmRel002B.QrlVlrTotalIsentasICMS.Enabled := True;
                frmRel002B.QrlVlrTotalIsentasIPI.Enabled  := True;
                frmRel002B.QrlVlrTotalOutrasICMS.Enabled  := True;
                frmRel002B.QrlVlrTotalOutrasIPI.Enabled   := True;

                frmRel002B.QrlVlrTotalNota.Caption         := FormatFloat('##,###,##0.00',VlrTotalNota );
                frmRel002B.QrlVlrTotalBaseICMS.Caption     := FormatFloat('##,###,##0.00',VlRTOTALBASEICMS );
                frmRel002B.QrlVlrTotalICMS.Caption         := FormatFloat('##,###,##0.00',VlRTOTALICMS );
                frmRel002B.QrlVlrTotalBaseIPI.Caption      := FormatFloat('##,###,##0.00',VlRTOTALBASEIPI );
                frmRel002B.QrlVlrTotalIPI.Caption          := FormatFloat('##,###,##0.00',VlRTOTALIPI );
                frmRel002B.QrlVlrTotalIsentasICMS.Caption  := FormatFloat('##,###,##0.00',VLRTOTALISENTASICMS );
                frmRel002B.QrlVlrTotalIsentasIPI.Caption   := FormatFloat('##,###,##0.00',VLRTOTALISENTASIPI );
                frmRel002B.QrlVlrTotalOutrasICMS.Caption   := FormatFloat('##,###,##0.00',VLRTOTALOUTRASICMS );
                frmRel002B.QrlVlrTotalOutrasIPI.Caption    := FormatFloat('##,###,##0.00',VLRTOTALOUTRASIPI );

                { *** Saídas *** }
                frmRel002B.QrlSVlrTotalNota.Enabled        := True;
                frmRel002B.QrlSVlrTotalBaseICMS.Enabled    := True;
                frmRel002B.QrlSVlrTotalICMS.Enabled        := True;
                frmRel002B.QrlSVlrTotalBaseIPI.Enabled     := True;
                frmRel002B.QrlSVlrTotalIPI.Enabled         := True;
                frmRel002B.QrlSVlrTotalIsentasICMS.Enabled := True;
                frmRel002B.QrlSVlrTotalIsentasIPI.Enabled  := True;
                frmRel002B.QrlSVlrTotalOutrasICMS.Enabled  := True;
                frmRel002B.QrlSVlrTotalOutrasIPI.Enabled   := True;

                frmRel002B.QrlSVlrTotalNota.Caption        := FormatFloat('##,###,##0.00',SVlrTotalNota );
                frmRel002B.QrlSVlrTotalBaseICMS.Caption    := FormatFloat('##,###,##0.00',SVlRTOTALBASEICMS );
                frmRel002B.QrlSVlrTotalICMS.Caption        := FormatFloat('##,###,##0.00',SVlRTOTALICMS );
                frmRel002B.QrlSVlrTotalBaseIPI.Caption     := FormatFloat('##,###,##0.00',SVlRTOTALBASEIPI );
                frmRel002B.QrlSVlrTotalIPI.Caption         := FormatFloat('##,###,##0.00',SVlRTOTALIPI );
                frmRel002B.QrlSVlrTotalIsentasICMS.Caption := FormatFloat('##,###,##0.00',SVLRTOTALISENTASICMS );
                frmRel002B.QrlSVlrTotalIsentasIPI.Caption  := FormatFloat('##,###,##0.00',SVLRTOTALISENTASIPI );
                frmRel002B.QrlSVlrTotalOutrasICMS.Caption  := FormatFloat('##,###,##0.00',SVLRTOTALOUTRASICMS );
                frmRel002B.QrlSVlrTotalOutrasIPI.Caption   := FormatFloat('##,###,##0.00',SVLRTOTALOUTRASIPI );

                frmRel002B.QuickRep1.Preview;
               finally
                FreeAndNil( frmRel002B.QuickRep1 );
                FreeAndNil( frmRel002B );
               end;
              end;
          end
 else if  RadioGroup1.ItemIndex = 2 then
          begin
           try
            frmRel002A := TfrmRel002A.Create(nil);
            frmRel002A.Quickrep1.Preview;
           finally
            FreeAndNil( frmRel002A.QuickRep1 );
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
            frmRel002A.Quickrep1.Preview;
           finally
            FreeAndNil( frmRel002A.QuickRep1 );
            FreeAndNil( frmRel002A );
           end;
          end
  else    begin
           try
            frmRel002 := TfrmRel002.Create(nil);
//            frmRel002.QRExpr9.Expression := TRIM('SUM(VLRTOTALNOTA - VLRTOTALSERVICO)');
            frmRel002.QRLabel12.Enabled := False;
            frmRel002.QuickRep1.Preview;
           finally
            FreeAndNil( frmRel002.QuickRep1 );
            FreeAndNil( frmRel002 );
           end;
          end;
end;

procedure Tfrm0002.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action  := cafree;
 frm0002 := nil;
end;

procedure Tfrm0002.BitBtn4Click(Sender: TObject);
begin
 frm0002.Close;
end;

procedure Tfrm0002.BitBtn3Click(Sender: TObject);
begin
 if not cds002.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds002;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0002.BitBtn2Click(Sender: TObject);
begin
 RelatorioId := 2;
 InicializaCds002;
 AbreNfs( cds002 );
 OrdenaCds;
 cds002.First;
 ImprimeRelatorio;
 ds002.DataSet := cds002;
end;

procedure Tfrm0002.AbreNfs( var cds : TClientdataSet );
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  EF_NFS.EMPRESAID,'+
         '  EF_NFS.NFSID,'+
         '  EF_NFS.TIPONOTA,'+
         '  EF_ENTIDADE.ENTIDADEID,' +
         '  EF_ENTIDADE.CPFCNPJ, ' +  
         '  EF_NFS.NOME || + ' + QuotedStr( ' - ' ) + ' || EF_NFS.SIGLAUFID AS NOME, ' +
         '  EF_NFS.DATAEMISSAOID,'+
         '  EF_NFS.NATUREZAOPID,'+
         '  EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.CANCELADA,'+
         '  EF_NATUREZAOP.SIGLANATUREZAID,'+
         '  EF_NATUREZAOP.TRANSFCONSUMO,'+
         '  EF_NFS.VLRTOTALNOTA,'+
         '  EF_NFS.VLRTOTALSERVICO,'+
         '  EF_NFS.VLRTOTALBASEICMS,'+
         '  EF_NFS.VLRTOTALICMS,'+
         '  EF_NFS.VLRTOTALIPI,'+
         '  EF_NFS.VLRTOTALBASEIPI,'+
         '  EF_NFS.VLRTOTALISENTASICMS,'+
         '  EF_NFS.VLRTOTALISENTASIPI,'+
         '  EF_NFS.VLRTOTALOUTRASICMS,'+
         '  EF_NFS.VLRTOTALOUTRASIPI,'+
         '  OS_OS.OSID,'+
         '  OS_OS.SERIEID,'+
         '  OS_OS.MODELOID'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_ENTIDADE, ' +
         '  EF_NATUREZAOP,'+
         '  OS_OS,'+
         '  EF_SIGLANATUREZA'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID'+
         '  AND EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NATUREZAOP.SIGLANATUREZAID'+
         '  AND OS_OS.OSID(+) = EF_NFS.OSID'+
         '  AND EF_NFS.ENTIDADEID = EF_ENTIDADE.ENTIDADEID ' +
         '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0'+
         '  AND NVL( EF_NATUREZAOP.TRANSFCONSUMO, 0 ) = 0'+
         '  AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( MaskEdit1.Text )+
         '  AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( MaskEdit2.Text )+
         '  AND NVL( EF_NATUREZAOP.DOCINTERNO, 0 ) = 0';

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (15,17) ) ';
     end;


 if MaskEdit3.Text <> '' then
    if CheckBox6.Checked then
       iSQL := iSQL + ' AND ( EF_SIGLANATUREZA.DESCRICAORESUMIDA = '+ QuotedStr( MaskEdit3.Text )+
                              ' OR EF_NFS.VLRTOTALSERVICO > 0 )'
    else
       iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA = '+ QuotedStr( MaskEdit3.Text );

 if MaskEdit4.Text <> '' then
    iSQL := iSQL + ' AND EF_SIGLANATUREZA.DESCRICAORESUMIDA <> '+Trim( QuotedStr( MaskEdit4.Text ) );

 if MaskEdit5.Text <> '' then
    iSQL := iSQL + ' AND EF_NATUREZAOP.CFOP >= '+ QuotedStr( MaskEdit5.Text );

 if MaskEdit6.Text <> '' then
    iSQL := iSQL + ' AND EF_NATUREZAOP.CFOP <= '+ QuotedStr( MaskEdit5.Text );

 try
  ExecDynamicProvider( -1,iSQL,cds );

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 cds.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure Tfrm0002.BitBtn5Click(Sender: TObject);
begin
 RelatorioId := 3;
 InicializaVariaveis;
 InicializaCds002;
 AbreNfe( cdsAuxNfe );
 InsereDadosCds002B( cdsAuxNfe,1 );
 AbreNfs( cdsAuxNfs );
 InsereDadosCds002B( cdsAuxNfs,2 );
 OrdenaCds;
 cds002B.First;
 ImprimeRelatorio;
end;

procedure Tfrm0002.InsereDadosCds002B( var cds: TClientDataSet; Relatorio : Integer );
begin
 cds.First;
 while not cds.Eof do
 begin
  cds002B.Insert;
  cds002B.FieldByName('EMPRESAID').AsInteger            := cds.FieldByName('EMPRESAID').AsInteger;
  if Relatorio = 1 then
     begin
      cds002B.FieldByName('NOTAID').AsInteger            := cds.FieldByName('NFEID').AsInteger;
      cds002B.FieldByName('DATAENTRADA').AsDateTime      := cds.FieldByName('DATAENTRADA').AsDateTime;
     end
  else
     cds002B.FieldByName('NOTAID').AsInteger             := cds.FieldByName('NFSID').AsInteger;

  cds002B.FieldByName('DATAEMISSAOID').AsDateTime       := cds.FieldByName('DATAEMISSAOID').AsDateTime;
  cds002B.FieldByName('TIPONOTA').AsString              := cds.FieldByName('TIPONOTA').AsString;
  cds002B.FieldByName('NOME').AsString                  := cds.FieldByName('NOME').AsString;
  cds002B.FieldByName('NATUREZAOPID').AsInteger         := cds.FieldByName('NATUREZAOPID').AsInteger;
  cds002B.FieldByName('DESCRICAOOPERACAONOTA').AsString := cds.FieldByName('DESCRICAOOPERACAONOTA').AsString;
  cds002B.FieldByName('CFOP').Value                     := cds.FieldByName('CFOP').Value;
  cds002B.FieldByName('SIGLANATUREZAID').AsInteger      := cds.FieldByName('SIGLANATUREZAID').AsInteger;
  cds002B.FieldByName('TRANSFCONSUMO').AsInteger        := cds.FieldByName('TRANSFCONSUMO').AsInteger;
  cds002B.FieldByName('CANCELADA').AsInteger            := cds.FieldByName('CANCELADA').AsInteger;
  cds002B.FieldByName('VLRTOTALNOTA').AsFloat           := cds.FieldByName('VLRTOTALNOTA').AsFloat;
  cds002B.FieldByName('VLRTOTALBASEICMS').AsFloat       := cds.FieldByName('VLRTOTALBASEICMS').AsFloat;
  cds002B.FieldByName('VLRTOTALICMS').AsFloat           := cds.FieldByName('VLRTOTALICMS').AsFloat;
  cds002B.FieldByName('VLRTOTALBASEIPI').AsFloat        := cds.FieldByName('VLRTOTALBASEIPI').AsFloat;
  cds002B.FieldByName('VLRTOTALIPI').AsFloat            := cds.FieldByName('VLRTOTALIPI').AsFloat;
  cds002B.FieldByName('VLRTOTALISENTASICMS').AsFloat    := cds.FieldByName('VLRTOTALISENTASICMS').AsFloat;
  cds002B.FieldByName('VLRTOTALISENTASIPI').AsFloat     := cds.FieldByName('VLRTOTALISENTASIPI').AsFloat;
  cds002B.FieldByName('VLRTOTALOUTRASICMS').AsFloat     := cds.FieldByName('VLRTOTALOUTRASICMS').AsFloat;
  cds002B.FieldByName('VLRTOTALOUTRASIPI').AsFloat      := cds.FieldByName('VLRTOTALOUTRASIPI').AsFloat;
  cds002B.FieldByName('OSID').AsString                  := cds.FieldByName('OSID').AsString;
  cds002B.FieldByName('SERIEID').AsString               := cds.FieldByName('SERIEID').AsString;
  cds002B.FieldByName('MODELOID').AsString              := cds.FieldByName('MODELOID').AsString;

  if Relatorio = 1 then
     begin
      VLRTOTALNOTA         := VLRTOTALNOTA + cds.FieldByName('VLRTOTALNOTA').AsFloat;
      VLRTOTALBASEICMS     := VLRTOTALBASEICMS + cds.FieldByName('VLRTOTALBASEICMS').AsFloat;
      VLRTOTALICMS         := VLRTOTALICMS + cds.FieldByName('VLRTOTALICMS').AsFloat;
      VLRTOTALBASEIPI      := VLRTOTALBASEIPI + cds.FieldByName('VLRTOTALBASEIPI').AsFloat;
      VLRTOTALIPI          := VLRTOTALIPI + cds.FieldByName('VLRTOTALIPI').AsFloat;
      VLRTOTALISENTASIPI   := VLRTOTALISENTASIPI + cds.FieldByName('VLRTOTALISENTASIPI').AsFloat;
      VLRTOTALISENTASICMS  := VLRTOTALISENTASICMS + cds.FieldByName('VLRTOTALISENTASICMS').AsFloat;
      VLRTOTALOUTRASIPI    := VLRTOTALOUTRASIPI + cds.FieldByName('VLRTOTALOUTRASIPI').AsFloat;
      VLRTOTALOUTRASICMS   := VLRTOTALOUTRASICMS + cds.FieldByName('VLRTOTALOUTRASICMS').AsFloat;
     end
  else
     begin
      SVLRTOTALNOTA         := SVLRTOTALNOTA + cds.FieldByName('VLRTOTALNOTA').AsFloat;
      SVLRTOTALBASEICMS     := SVLRTOTALBASEICMS + cds.FieldByName('VLRTOTALBASEICMS').AsFloat;
      SVLRTOTALICMS         := SVLRTOTALICMS + cds.FieldByName('VLRTOTALICMS').AsFloat;
      SVLRTOTALBASEIPI      := SVLRTOTALBASEIPI + cds.FieldByName('VLRTOTALBASEIPI').AsFloat;
      SVLRTOTALIPI          := SVLRTOTALIPI + cds.FieldByName('VLRTOTALIPI').AsFloat;
      SVLRTOTALISENTASIPI   := SVLRTOTALISENTASIPI + cds.FieldByName('VLRTOTALISENTASIPI').AsFloat;
      SVLRTOTALISENTASICMS  := SVLRTOTALISENTASICMS + cds.FieldByName('VLRTOTALISENTASICMS').AsFloat;
      SVLRTOTALOUTRASIPI    := SVLRTOTALOUTRASIPI + cds.FieldByName('VLRTOTALOUTRASIPI').AsFloat;
      SVLRTOTALOUTRASICMS   := SVLRTOTALOUTRASICMS + cds.FieldByName('VLRTOTALOUTRASICMS').AsFloat;
     end;

  cds002B.Post;
  cds.Next;
 end;
end;


procedure Tfrm0002.InicializaVariaveis;
begin
 VLRTOTALNOTA         := 0;
 VLRTOTALBASEICMS     := 0;
 VLRTOTALICMS         := 0;
 VLRTOTALBASEIPI      := 0;
 VLRTOTALIPI          := 0;
 VLRTOTALISENTASIPI   := 0;
 VLRTOTALISENTASICMS  := 0;
 VLRTOTALOUTRASIPI    := 0;
 VLRTOTALOUTRASICMS   := 0;

 SVLRTOTALNOTA         := 0;
 SVLRTOTALBASEICMS     := 0;
 SVLRTOTALICMS         := 0;
 SVLRTOTALBASEIPI      := 0;
 SVLRTOTALIPI          := 0;
 SVLRTOTALISENTASIPI   := 0;
 SVLRTOTALISENTASICMS  := 0;
 SVLRTOTALOUTRASIPI    := 0;
 SVLRTOTALOUTRASICMS   := 0;
end;

procedure Tfrm0002.BitBtn6Click(Sender: TObject);
begin
 cdsDifBase.EmptyDataSet;
 cdsDifBase.Close;
 cdsDifBase.Open;

 if RelatorioId <> 3 then
    ProcessarDiferenca( RelatorioId, cds002 )
 else
    begin
     ProcessarDiferenca( 1,cdsAuxNfe ); {*** Entradas ***}
     ProcessarDiferenca( 2,cdsAuxNfs ); {*** Saídas ***}
    end;

 if not cdsDifBase.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsDifBase;
     frmExportar.Show;
    end
     else MessageDlg('Não Existem Diferenças!',mtInformation,[mbOK],0 );
end;


procedure Tfrm0002.ProcessarDiferenca( Relatorio : Integer; cds : TClientDataSet );
var Soma : Real;
begin
 cds.First;
 while not cds.Eof do
 begin
  Soma := ( cds.FieldByName('VLRTOTALBASEIPI').Value +
            cds.FieldByName('VLRTOTALIPI').Value +
            cds.FieldByName('VLRTOTALISENTASIPI').Value +
            cds.FieldByName('VLRTOTALOUTRASIPI').Value );

  if FormatFloat( '#.00',Soma )  <> FormatFloat( '#.00', cds.FieldByName('VLRTOTALNOTA').Value ) then
     begin
      cdsDifBase.Insert;
      cdsDifBaseEMPRESAID.Value     := cds.FieldByName('EMPRESAID').Value;
      if Relatorio = 1 then
         begin
          cdsDifBaseNOTAID.Value        := cds.FieldByName('NFEID').AsInteger;
          cdsDifBaseDATAEMISSAOID.Value := cds.FieldByName('DATAENTRADA').Value;
         end
      else
         begin
          cdsDifBaseNOTAID.Value        := cds.FieldByName('NFSID').AsInteger;
          cdsDifBaseDATAEMISSAOID.Value := cds.FieldByName('DATAEMISSAOID').Value;
         end;
      cdsDifBaseVLRSOMA.Value := Soma;
      cdsDifBaseVLRTOTALNOTA.Value  := cds.FieldByName('VLRTOTALNOTA').Value;
      cdsDifBaseDIFERENCAIPI.Value  := ( cds.FieldByName('VLRTOTALBASEIPI').Value +
                                         cds.FieldByName('VLRTOTALIPI').Value +
                                         cds.FieldByName('VLRTOTALISENTASIPI').Value +
                                         cds.FieldByName('VLRTOTALOUTRASIPI').Value ) - cds.FieldByName('VLRTOTALNOTA').Value;
      cdsDifBase.Post;
     end;
  cds.Next;
 end;
end;

procedure Tfrm0002.FormCreate(Sender: TObject);
begin
 RadioGroup1.ItemIndex := 1;
end;

end.
