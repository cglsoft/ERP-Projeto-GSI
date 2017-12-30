unit u_0013;

interface

uses
  Windows, Forms, Messages, SysUtils, DB, DBClient, StdCtrls, Buttons, Dialogs,
  ImgList, Controls, Grids, DBGrids, ComCtrls, ExtCtrls,
  wwdbdatetimepicker, Classes, ActnList, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, ActnMenus;

type
  Tfrm0013 = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ds0013: TDataSource;
    cds0013: TClientDataSet;
    wwdtpcktDtInicial: TwwDBDateTimePicker;
    wwdtpcktDtFinal: TwwDBDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    cds0013C: TClientDataSet;
    ds0013C: TDataSource;
    cds0013CEMPRESAID: TBCDField;
    cds0013CGRUPO: TStringField;
    cds0013CSUBGRUPO: TStringField;
    cds0013CDATAFIM: TSQLTimeStampField;
    cds0013CSALDO: TBCDField;
    cds0013CCUSTOMEDIO: TFMTBCDField;
    cds0013CDATAINI: TSQLTimeStampField;
    imglstMenu: TImageList;
    cds0013B: TClientDataSet;
    ds0013B: TDataSource;
    cds0013CCUSTOMEDIOTOTAL: TFloatField;
    cds0013EMPRESAID: TBCDField;
    cds0013PRODUTOID: TBCDField;
    cds0013DESCRICAO: TStringField;
    cds0013GRUPO: TStringField;
    cds0013SUBGRUPO: TStringField;
    cds0013DATAULTIMOMOVIMENTO: TSQLTimeStampField;
    cds0013SALDO: TBCDField;
    cds0013CUSTOMEDIO: TFMTBCDField;
    cds0013CUSTOMEDIOTOTAL: TFMTBCDField;
    cds0013BEMPRESAID: TBCDField;
    cds0013BSUBGRUPO: TStringField;
    cds0013BL_DESCRICAOSUBGRUPO: TStringField;
    cds0013BSIGLAGRUPO: TStringField;
    cds0013BL_DESCRICAOGRUPO: TStringField;
    cds0013BSALDO: TFMTBCDField;
    cds0013BCUSTOMEDIO: TFMTBCDField;
    cds0013BCUSTOMEDIOTOTAL: TFMTBCDField;
    rgrpTipoRelat: TRadioGroup;
    rgrpEmpresa: TRadioGroup;
    cdsGrp: TClientDataSet;
    cdsGrpGRUPO: TStringField;
    cdsGrpSUBGRUPO: TStringField;
    cdsGrpFaixa: TClientDataSet;
    cdsGrpFaixaEMPRESAID: TBCDField;
    cdsGrpFaixaDATAINI: TSQLTimeStampField;
    cdsGrpFaixaDATAFIM: TSQLTimeStampField;
    cdsGrpFaixaGRUPO: TStringField;
    cdsGrpFaixaSUBGRUPO: TStringField;
    cdsGrpFaixaSALDO: TBCDField;
    cdsGrpFaixaCUSTOMEDIO: TFMTBCDField;
    cdsGrpFaixaCUSTOMEDIOTOTAL: TFloatField;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    dsGrp: TDataSource;
    dsGrpFaixa: TDataSource;
    actmngPrincipal: TActionManager;
    actCriarNovaFaixa: TAction;
    actGravarXML: TAction;
    actExcluir: TAction;
    actTransferencia: TAction;
    actSair: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    actProcessar: TAction;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    rgrpTipoMovSaida: TRadioGroup;
    Memo1: TMemo;
    cds0013PARTNUMBERID: TStringField;
    cds0013TIPOITEMID: TBCDField;
    cds0013L_DESCRICAOTIPOITEM: TStringField;
    cds0013GENEROITEMID: TBCDField;
    cds0013L_DESCRICAOGENEROITEM: TStringField;
    cds0013APLICACAO: TStringField;
    cds0013OBSERVACAO: TStringField;
    cds0013MODELOID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure InicializaCds0013;
    procedure BitBtn2Click(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actCriarNovaFaixaExecute(Sender: TObject);
    procedure actGravarXMLExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure actTransferenciaExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actProcessarExecute(Sender: TObject);
    procedure FaixasExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure AgruparGrupos;
    procedure VerifData;
    procedure AgruparGruposFaixas;
    procedure ProdutoSemMovimento;
    procedure UltMovProduto;
    procedure ProdutosMovDataX;
  public
    { Public declarations }
  end;

const Diretorio_OFFLINE = 'OFFLINE\';
      xml_0013C      = '0013C.XML';

var
  frm0013: Tfrm0013;

implementation

uses FuncoesCliente,  u_Rel0013, u_dmEF, u_Exportar, u_Rel0013B;

{$R *.dfm}

procedure Tfrm0013.VerifData;
begin
 cdsGrpFaixa.First;
 while not cdsGrpFaixa.Eof do
 begin
   if ( cds0013DATAULTIMOMOVIMENTO.AsDateTime >= cdsGrpFaixaDATAINI.AsDateTime ) and
      ( cds0013DATAULTIMOMOVIMENTO.AsDateTime <= cdsGrpFaixaDATAFIM.AsDateTime ) and
      ( cdsGrpFaixaGRUPO.Value    = cds0013GRUPO.Value ) and
      ( cdsGrpFaixaSUBGRUPO.Value = cds0013SUBGRUPO.Value ) then
      begin
       cdsGrpFaixa.Edit;
       cdsGrpFaixaSALDO.AsCurrency           := cdsGrpFaixaSALDO.AsCurrency + cds0013SALDO.AsCurrency;
       cdsGrpFaixaCUSTOMEDIO.AsCurrency      := cdsGrpFaixaCUSTOMEDIO.AsCurrency + cds0013CUSTOMEDIO.AsCurrency;
       cdsGrpFaixaCUSTOMEDIOTOTAL.AsCurrency := cdsGrpFaixaCUSTOMEDIOTOTAL.AsCurrency + cds0013CUSTOMEDIOTOTAL.AsCurrency;
       cdsGrpFaixa.Post;
      end;

  cdsGrpFaixa.Next
 end;

end;

procedure Tfrm0013.AgruparGrupos;
begin
 Screen.Cursor := crHourGlass;

 cdsGrp.Close;
 cdsGrp.CreateDataSet;
 cdsGrp.AddIndex( 'idx1','GRUPO;SUBGRUPO',[ixPrimary],'','',0);
 cdsGrp.IndexName := 'idx1';

 try
  cds0013.First;
  while not cds0013.Eof do
  begin
    if not cdsGrp.FindKey([cds0013GRUPO.Value,cds0013SUBGRUPO.Value]) then
       begin
        cdsGrp.Insert;
        cdsGrpGRUPO.Value    := cds0013GRUPO.Value;
        cdsGrpSUBGRUPO.Value := cds0013SUBGRUPO.Value;
        cdsGrp.Post;
       end;

   cds0013.Next;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;


procedure Tfrm0013.AgruparGruposFaixas;
begin
 Screen.Cursor := crHourGlass;

 cdsGrpFaixa.Close;
 cdsGrpFaixa.CreateDataSet;

 try
  cds0013C.First;
  while not cds0013C.Eof do
  begin

    cdsGrp.First;
    while not cdsGrp.Eof do
    begin
     cdsGrpFaixa.Insert;
     cdsGrpFaixaEMPRESAID.Value := cds0013CEMPRESAID.Value;
     cdsGrpFaixaDATAINI.Value   := cds0013CDATAINI.Value;
     cdsGrpFaixaDATAFIM.Value   := cds0013CDATAFIM.Value;
     cdsGrpFaixaGRUPO.Value     := cdsGrpGRUPO.Value;
     cdsGrpFaixaSUBGRUPO.Value  := cdsGrpSUBGRUPO.Value;
     cdsGrpFaixa.Post;

     cdsGrp.Next;
    end;

   cds0013C.Next;
  end;

 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure Tfrm0013.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action  := cafree;
 frm0013 := nil;
end;

procedure Tfrm0013.BitBtn3Click(Sender: TObject);
begin
 frm0013.Close;
end;

procedure Tfrm0013.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, ds0013C, DBGrid1);
end;

procedure Tfrm0013.InicializaCds0013;
begin
 with cds0013 do
 begin
  EmptyDataSet;
  Close;
  Open;
 end;
end;

procedure Tfrm0013.BitBtn2Click(Sender: TObject);
begin
 frmExportar := TfrmExportar.Create( nil );
 frmExportar.DataSource := ds0013;
 frmExportar.Show;
end;

procedure Tfrm0013.ProdutosMovDataX;
var sSQL : String;
begin
 sSQL := ' SELECT EF_PRODUTO.EMPRESAID,'+
         '        EF_PRODUTO.PRODUTOID,'+
         '        EF_PRODUTO.DESCRICAOPORTUGUES DESCRICAO,'+
         '        EF_GRUPO.SIGLAGRUPO GRUPO,'+
         '        EF_PRODUTO.PARTNUMBERID,' +
         '        EF_PRODUTO.TIPOITEMID,' +
         '        EF_TIPOITEM.DESCRICAO L_DESCRICAOTIPOITEM,' +
         '        EF_PRODUTO.GENEROITEMID, ' +
         '        EF_GENEROITEM.DESCRICAO L_DESCRICAOGENEROITEM, ' +
         '        EF_PRODUTO.MODELOID,' +
         '        EF_PRODUTO.APLICACAO,' +
         '        EF_PRODUTO.OBSERVACAO,' +
         '        EF_SUBGRUPO.SIGLAGRUPO SUBGRUPO,'+
         '        KDX_ULT_MOV.DATAULTIMOMOVIMENTO,'+
         '        EF_KARDEX.QUANTIDADESALDO SALDO,'+
         '        NVL( ROUND( EF_KARDEX.VLRCUSTOMEDIO,2 ), 0 ) CUSTOMEDIO ,'+
         '        NVL( ROUND( EF_KARDEX.VLRCUSTOMEDIOTOTAL,2 ), 0 ) CUSTOMEDIOTOTAL '+
         '   FROM EF_KARDEX,'+
         '        EF_PRODUTO,'+
         '        EF_SUBGRUPO,'+
         '        EF_GRUPO,'+
         '        EF_TIPOITEM, ' +
         '        EF_GENEROITEM, ' +
         '   /* Ultima data de Entrada */' +
         '   ( SELECT EMPRESAID, PRODUTOID, MAX(DATAOCORRENCIA) AS DATAULTIMOMOVIMENTO' +
         '      FROM EF_KARDEX, EF_NATUREZAOP EF_NATUREZAOP' +
         '      WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID';

         if rgrpTipoMovSaida.ItemIndex = 0 then
            sSQL := sSQL + ' AND EF_NATUREZAOP.MOVIMENTOESTOQUE = ''N'' ';

         sSQL := sSQL +
         '   AND EF_KARDEX.DATAOCORRENCIA <= '+ QuotedStr( DateToStr( frm0013.wwdtpcktDtInicial.Date ) )+
         '   GROUP BY EMPRESAID, PRODUTOID  ) KDX_ULT_MOV' +
         '  WHERE EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID AND'+
         '        EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID AND'+
         '        EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+) AND'+
         '        EF_KARDEX.EMPRESAID = KDX_ULT_MOV.EMPRESAID(+) AND ' +
         '        EF_KARDEX.PRODUTOID = KDX_ULT_MOV.PRODUTOID(+) AND ' +
         '        EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID(+) AND'+
         '        EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID AND ' +
         '        EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID AND ' +
         '        (  EF_KARDEX.EMPRESAID,'+
         '           EF_KARDEX.PRODUTOID,'+
         '           EF_KARDEX.DATAOCORRENCIA,'+
         '           EF_KARDEX.KARDEXID'+
         '         ) IN'+
         '        ('+
         '         SELECT EF_PRODUTO.EMPRESAID,'+
         '                EF_PRODUTO.PRODUTOID,'+
         '                MAX(EF_KARDEX.DATAOCORRENCIA) ULTIMAMOVIMENTACAO,'+
         '                MAX(EF_KARDEX.KARDEXID)' +
         '  FROM EF_PRODUTO EF_PRODUTO, EF_KARDEX EF_KARDEX'+
         ' WHERE EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID'+
         '   AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID'+
         '   AND EF_KARDEX.DATAOCORRENCIA <= '+ QuotedStr( DateToStr( frm0013.wwdtpcktDtInicial.Date ) );

  case rgrpEmpresa.ItemIndex of
  0 : sSQL := sSQL + ' AND EF_PRODUTO.EMPRESAID = ' + IntToStr( EmpresaAtualId );
  1 : sSQL := sSQL + ' AND EF_PRODUTO.EMPRESAID IN ( 1,12,15) ';
  end;

  sSQL := sSQL +
         ' GROUP BY EF_PRODUTO.PRODUTOID,'+
         '          EF_PRODUTO.EMPRESAID'+
         ' )'+
         '  ORDER BY EF_PRODUTO.PRODUTOID';


 try
  ExecDynamicProvider( -1, sSQL, cds0013 );

  except on
   E : Exception do
   raise Exception.Create( E.Message );
  end;
end;

procedure Tfrm0013.ProdutoSemMovimento;
var sSQL, sSQLTotal : String;
begin
 sSQL := ' SELECT EF_PRODUTO.EMPRESAID,'+
         '        EF_PRODUTO.PRODUTOID,'+
         '        EF_PRODUTO.DESCRICAOPORTUGUES DESCRICAO,'+
         '        EF_PRODUTO.PARTNUMBERID, ' +
         '        EF_GRUPO.SIGLAGRUPO GRUPO,'+
         '        EF_SUBGRUPO.SIGLAGRUPO SUBGRUPO,'+
         '        EF_PRODUTO.TIPOITEMID,' +
         '        EF_TIPOITEM.DESCRICAO L_DESCRICAOTIPOITEM,' +
         '        EF_PRODUTO.GENEROITEMID, ' +
         '        EF_GENEROITEM.DESCRICAO L_DESCRICAOGENEROITEM, ' +
         '        EF_PRODUTO.MODELOID,' +
         '        EF_PRODUTO.APLICACAO,' +
         '        EF_PRODUTO.OBSERVACAO,' +
         '        EF_KARDEX.DATAOCORRENCIA DATAULTIMOMOVIMENTO,'+
         '        EF_KARDEX.QUANTIDADESALDO SALDO,'+
         '        NVL( ROUND( EF_KARDEX.VLRCUSTOMEDIO,2 ), 0 ) CUSTOMEDIO ,'+
         '        NVL( ROUND( EF_KARDEX.VLRCUSTOMEDIOTOTAL,2 ), 0 ) CUSTOMEDIOTOTAL '+
         '   FROM EF_KARDEX,'+
         '        EF_PRODUTO,'+
         '        EF_SUBGRUPO,'+
         '        EF_GRUPO,'+
         '        EF_NATUREZAOP,' +
         '        EF_TIPOITEM, ' +
         '        EF_GENEROITEM ' +
         '  WHERE EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID AND'+
         '        EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID AND'+
         '        EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+) AND'+
         '        EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID AND ' +
         '        EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID AND ' +
         '        EF_SUBGRUPO.SUBGRUPOID = EF_PRODUTO.SUBGRUPOID AND'+
         '        EF_NATUREZAOP.NATUREZAOPID(+) = EF_KARDEX.NATUREZAOPID AND'+
         '        (  EF_KARDEX.EMPRESAID,'+
         '           EF_KARDEX.PRODUTOID,'+
         '           EF_KARDEX.DATAOCORRENCIA,'+
         '           EF_KARDEX.KARDEXID'+
         '         ) IN'+
         '        ('+
         '         SELECT EF_PRODUTO.EMPRESAID,'+
         '                EF_PRODUTO.PRODUTOID,'+
         '                MAX(EF_KARDEX.DATAOCORRENCIA) ULTIMAMOVIMENTACAO,'+
         '                MAX(EF_KARDEX.KARDEXID)'+
         '  FROM EF_PRODUTO EF_PRODUTO, EF_KARDEX EF_KARDEX'+
         ' WHERE EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID'+
         '   AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID'+
         '   AND EF_KARDEX.DATAOCORRENCIA <= '+ QuotedStr( DateToStr( frm0013.wwdtpcktDtInicial.Date ) );

  case rgrpEmpresa.ItemIndex of
  0 : sSQL := sSQL + ' AND EF_PRODUTO.EMPRESAID = ' + IntToStr( EmpresaAtualId );
  1 : sSQL := sSQL + ' AND EF_PRODUTO.EMPRESAID IN ( 1,12,15) ';
  end;

  sSQL := sSQL +
         '   AND (SELECT COUNT(*)'+
         '          FROM EF_PRODUTO    EFPRODUTO,'+
         '               EF_SUBGRUPO   EF_SUBGRUPO,'+
         '               EF_KARDEX     EF_KARDEX,'+
         '               EF_NATUREZAOP EF_NATUREZAOP'+
         '         WHERE EF_KARDEX.EMPRESAID = EFPRODUTO.EMPRESAID'+
         '           AND EF_KARDEX.PRODUTOID = EFPRODUTO.PRODUTOID'+
         '           AND EF_NATUREZAOP.NATUREZAOPID = EF_KARDEX.NATUREZAOPID';

         if rgrpTipoMovSaida.ItemIndex = 0 then
            sSQL := sSQL +  ' AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N');

       sSQL := sSQL +
         '           AND EF_KARDEX.DATAOCORRENCIA >= '+ QuotedStr( DateToStr( wwdtpcktDtInicial.Date ) ) +
         '           AND EF_KARDEX.DATAOCORRENCIA <= '+ QuotedStr( DateToStr( wwdtpcktDtFinal.Date ) ) +
         '           AND EF_SUBGRUPO.SUBGRUPOID = EFPRODUTO.SUBGRUPOID';

  case rgrpEmpresa.ItemIndex of
  0 : sSQL := sSQL + ' AND EFPRODUTO.EMPRESAID = ' + IntToStr( EmpresaAtualId );
  1 : sSQL := sSQL + ' AND EFPRODUTO.EMPRESAID IN ( 1,12,15) ';
  end;

  sSQL := sSQL +
         '           AND EFPRODUTO.EMPRESAID = EF_PRODUTO.EMPRESAID ' +
         '           AND EFPRODUTO.PRODUTOID = EF_PRODUTO.PRODUTOID) = 0';

  case rgrpEmpresa.ItemIndex of
  0 : sSQL := sSQL + ' AND EF_PRODUTO.EMPRESAID = ' + IntToStr( EmpresaAtualId );
  1 : sSQL := sSQL + ' AND EF_PRODUTO.EMPRESAID IN ( 1,12,15) ';
  end;

  sSQL := sSQL +
         ' GROUP BY EF_PRODUTO.PRODUTOID,'+
         '          EF_PRODUTO.EMPRESAID'+
         ' )'+
         '  ORDER BY EF_PRODUTO.PRODUTOID';


 sSQLTotal :=  'SELECT EF_PRODUTO.EMPRESAID,' +
               '       EF_SUBGRUPO.SIGLAGRUPO SUBGRUPO,' +
               '       EF_SUBGRUPO.DESCRICAO L_DESCRICAOSUBGRUPO,' +
               '       EF_GRUPO.SIGLAGRUPO SIGLAGRUPO,' +
               '       EF_GRUPO.DESCRICAO L_DESCRICAOGRUPO,' +
               '       SUM(ROUND(EF_KARDEX.QUANTIDADESALDO, 2)) SALDO,' +
               '       SUM(ROUND(EF_KARDEX.VLRCUSTOMEDIO, 2)) CUSTOMEDIO,' +
               '       SUM(ROUND(EF_KARDEX.VLRCUSTOMEDIOTOTAL, 2)) CUSTOMEDIOTOTAL' +
               '  FROM EF_KARDEX, EF_PRODUTO, EF_SUBGRUPO, EF_GRUPO' +
               ' WHERE EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID' +
               '   AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID' +
               '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' +
               '   AND EF_SUBGRUPO.SUBGRUPOID(+) = EF_PRODUTO.SUBGRUPOID' +
               '   AND (EF_KARDEX.EMPRESAID, EF_KARDEX.PRODUTOID, EF_KARDEX.DATAOCORRENCIA,' +
               '        EF_KARDEX.KARDEXID) IN' +
               '       (SELECT EF_PRODUTO.EMPRESAID,' +
               '               EF_PRODUTO.PRODUTOID,' +
               '               MAX(EF_KARDEX.DATAOCORRENCIA) ULTIMAMOVIMENTACAO,' +
               '               MAX(EF_KARDEX.KARDEXID)' +
               '          FROM EF_PRODUTO EF_PRODUTO, EF_KARDEX EF_KARDEX' +
               '         WHERE EF_KARDEX.EMPRESAID = EF_PRODUTO.EMPRESAID' +
               '           AND EF_KARDEX.PRODUTOID = EF_PRODUTO.PRODUTOID' +
               '   AND EF_KARDEX.DATAOCORRENCIA <= '+ QuotedStr( DateToStr( wwdtpcktDtInicial.Date ) );

  case rgrpEmpresa.ItemIndex of
  0 : sSQLTotal := sSQLTotal + ' AND EF_PRODUTO.EMPRESAID = ' + IntToStr( EmpresaAtualId );
  1 : sSQLTotal := sSQLTotal + ' AND EF_PRODUTO.EMPRESAID IN ( 1,12,15) ';
  end;

  sSQLTotal := sSQLTotal +
               '         GROUP BY EF_PRODUTO.PRODUTOID, EF_PRODUTO.EMPRESAID)'+
               ' GROUP BY EF_PRODUTO.EMPRESAID,' +
               '          EF_SUBGRUPO.SIGLAGRUPO,' +
               '          EF_SUBGRUPO.DESCRICAO,' +
               '          EF_GRUPO.SIGLAGRUPO,' +
               '          EF_GRUPO.DESCRICAO';

 try
  try
   ExecDynamicProvider( -1, sSQL, cds0013 );

   ExecDynamicProvider( -1, sSQLTotal, cds0013B );

   frmRel0013 := TfrmRel0013.Create(nil);
   frmRel0013B := TfrmRel0013B.Create(nil);

   frmRel0013.QuickRep1.Preview;
   frmRel0013B.QuickRep1.Preview;

   except on
    E : Exception do
    raise Exception.Create( E.Message );
   end;

 finally
  FreeAndNil( frmRel0013.QuickRep1 );
  FreeAndNil( frmRel0013 );
  FreeAndNil( frmRel0013B.QuickRep1 );
  FreeAndNil( frmRel0013B );
 end;

end;

procedure Tfrm0013.UltMovProduto;
begin
 Screen.Cursor := crHourGlass;
 cds0013.DisableControls;
 cds0013C.DisableControls;
 cdsGrp.DisableControls;
 cdsGrpFaixa.DisableControls;

 try

  AgruparGrupos;

  AgruparGruposFaixas;

  cds0013.First;
  while not cds0013.Eof do
  begin
   VerifData;

   cds0013.Next;
  end;

 finally
  cds0013.EnableControls;
  cds0013C.EnableControls;
  cdsGrp.EnableControls;
  cdsGrpFaixa.EnableControls;

  Screen.Cursor := crDefault;
 end;
end;

procedure Tfrm0013.actFecharExecute(Sender: TObject);
begin
 frm0013.Close;
end;

procedure Tfrm0013.actCriarNovaFaixaExecute(Sender: TObject);
begin
 if FileExists( Diretorio_OFFLINE + xml_0013C ) then
    cds0013C.LoadFromFile( Diretorio_OFFLINE + xml_0013C )
  else
    begin
     cds0013C.Close;
     cds0013C.CreateDataSet;
    end;
end;

procedure Tfrm0013.actGravarXMLExecute(Sender: TObject);
begin
 cds0013C.SaveToFile( Diretorio_OFFLINE + xml_0013C );
end;

procedure Tfrm0013.Action2Execute(Sender: TObject);
begin
 if not cds0013.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0013;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0013.Action3Execute(Sender: TObject);
begin
 if not cds0013B.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := ds0013B;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0013.actTransferenciaExecute(Sender: TObject);
begin
 if FileExists( Diretorio_OFFLINE + xml_0013C ) then
    cds0013C.LoadFromFile( Diretorio_OFFLINE + xml_0013C )
 else
    begin
     cds0013C.Close;
     cds0013C.CreateDataSet;
    end;

end;

procedure Tfrm0013.actSairExecute(Sender: TObject);
begin
 Close;
end;

procedure Tfrm0013.FormCreate(Sender: TObject);
begin
 wwdtpcktDtInicial.Date := StrToDate( '30/09/2005' );
 wwdtpcktDtFinal.Date  := StrToDate( '30/09/2005' );
end;

procedure Tfrm0013.actProcessarExecute(Sender: TObject);
begin
 if      rgrpTipoRelat.ItemIndex = 0 then
         ProdutoSemMovimento
 else if rgrpTipoRelat.ItemIndex = 1 then
         begin
          ProdutosMovDataX;
          actCriarNovaFaixaExecute( Sender );

          UltMovProduto;
          cdsGrp.DeleteIndex('idx1');
         end;
end;

procedure Tfrm0013.FaixasExecute(Sender: TObject);
begin
 if not cdsGrpFaixa.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsGrpFaixa;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

procedure Tfrm0013.actExcluirExecute(Sender: TObject);
begin
 cds0013C.Delete;
end;

procedure Tfrm0013.Action4Execute(Sender: TObject);
begin
 if not cds0013B.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsGrpFaixa;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );
end;

end.
