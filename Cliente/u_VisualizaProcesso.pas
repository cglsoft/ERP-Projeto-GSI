unit u_VisualizaProcesso;

interface

uses
  Windows, SysUtils, Messages, DB, DBClient, Grids, DBGrids, Controls, StdCtrls,
  ComCtrls, Buttons, Classes, ExtCtrls, Forms;

type
  TfrmVisualizaProcesso = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Cds: TClientDataSet;
    ds: TDataSource;
    cmbSigla: TComboBox;
    dbgrdPadraoPesquisa: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbSiglaExit(Sender: TObject);
    procedure dbgrdPadraoPesquisaTitleClick(Column: TColumn);
    procedure dbgrdPadraoPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AdicionarProcessoDI;
  public
    { Public declarations }
    procedure ExecutaFiltro;
  end;

var
  frmVisualizaProcesso : TfrmVisualizaProcesso;
  TipoProcessoId       : String;

implementation

uses u_dmIT, funcoesCliente;

{$R *.dfm}

procedure TfrmVisualizaProcesso.AdicionarProcessoDI;
var cds2, cds3 : TClientDataSet;
    iSQL : String;

 procedure AtualizaProcesso;
 begin
  iSQL := 'UPDATE IT_PROCESSOITEM SET ' +
           ' DECLARACAOID = ' + dmIT.cdsMercadoriaDECLARACAOID.AsString +
           ' WHERE ' +
           ' PROCESSOID         = ' + cds.FieldByName( 'Processo' ).AsString +
           ' AND TIPOPROCESSOID = ' + cds.FieldByName( 'Tipo Processo' ).AsString +
           ' AND DATAPROCESSOID = ' + QuotedStr( cds.FieldByName( 'Data do Processo' ).AsString ) +
           ' AND ITEMID         = ' + Cds.FieldByName( 'Item' ).AsString;
  ExecDML( iSQL);
 end;


begin
 try
  if Cds.FieldByName( 'Ncm' ).IsNull then
     raise Exception.Create( 'Ncm não informado no Processo.' );
  if Cds.FieldByName( 'Vlr. Fob Us' ).IsNull then
     raise Exception.Create( 'Vlr Fob Us não informado no Processo.' );
  if Cds.FieldByName( 'Qtd. Liberada' ).IsNull then
     raise Exception.Create( 'Qtd. Liberada não informada no Processo.' );


  iSQL := ' SELECT DECLARACAOID, PROCESSOID, TIPOPROCESSOID, DATAPROCESSOID, ITEMPROCESSOID ' +
          '  FROM IT_MERCADORIA ' +
          ' WHERE PROCESSOID = ' +  Cds.FieldByName( 'Processo' ).AsString +
          '   AND TIPOPROCESSOID = ' + Cds.FieldByName( 'Tipo Processo' ).AsString +
          '   AND DATAPROCESSOID = ' + QuotedStr( Cds.FieldByName( 'Data do Processo' ).AsString ) +
          '   AND ITEMPROCESSOID = ' + Cds.FieldByName( 'Item' ).AsString;

  ExecDynamicProvider( -1, iSQL, Cds3 );

  if not cds3.IsEmpty then
    raise Exception.Create('Item de processo já utilizando na Declaracao: ' +  cds3.FieldByName('DECLARACAOID').AsString  );


  dmIT.cdsMercadoria.Append;

  dmIT.cdsMercadoriaEMPRESAID.Value      := dmIT.cdsDeclaracaoEMPRESAID.Value;
  dmIT.cdsMercadoriaNCMID.Value          := Cds.FieldByName( 'Ncm' ).Value;
  dmIT.cdsMercadoriaVLRFOBUS.AsFloat     := Cds.FieldByName( 'Vlr. Fob Us' ).AsFloat * Cds.FieldByName( 'Qtd. Liberada' ).AsFloat;
  dmIT.cdsMercadoriaQUANTIDADE.AsFloat   := Cds.FieldByName( 'Qtd. Liberada' ).AsFloat;
  dmIT.cdsMercadoriaPRODUTOID.Value      := Cds.FieldByName( 'Produto' ).Value;
  dmIT.cdsMercadoriaPROCESSOID.Value     := Cds.FieldByName( 'Processo' ).Value;
  dmIT.cdsMercadoriaTIPOPROCESSOID.Value := Cds.FieldByName( 'Tipo Processo' ).Value;
  dmIT.cdsMercadoriaDATAPROCESSOID.Value := Cds.FieldByName( 'Data do Processo' ).AsSQLTimeStamp;
  dmIT.cdsMercadoriaITEMPROCESSOID.Value := Cds.FieldByName( 'Item' ).Value;

  if dmIT.cdsDeclaracaoADMISSAOTEMP.AsInteger = 0 then
     begin
      iSQL := 'SELECT NVL( MAX( ALIQUOTAII ), 0 ), NVL( MAX( ALIQUOTAIPI ), 0 ) ' +
               ' FROM EF_TECWIN ' +
              ' WHERE NCMID = ' + dmIT.cdsMercadoriaNCMID.AsString;

      ExecDynamicProvider( -1, iSQL, Cds2 );

      dmIT.cdsMercadoriaALIQUOTAII.Value  := Cds2.Fields[0].AsBCD;
      dmIT.cdsMercadoriaALIQUOTAIPI.Value := Cds2.Fields[1].AsBCD;

      Cds2.Close;
     end
  else
     begin
      dmIT.cdsMercadoriaALIQUOTAII.AsFloat  := 0;
      dmIT.cdsMercadoriaALIQUOTAIPI.AsFloat := 0;
     end;

  iSQL := 'SELECT NVL( PESO, 0 ) ' +
           ' FROM EF_PRODUTO ' +
          ' WHERE EMPRESAID = ' + dmIT.cdsMercadoriaEMPRESAID.AsString +
          ' AND PRODUTOID = ' + dmIT.cdsMercadoriaPRODUTOID.AsString;

  ExecDynamicProvider( -1, iSQL, Cds2 );

  dmIT.cdsMercadoriaPESOLIQUIDO.Value := Cds2.Fields[0].AsBCD;

  dmIT.cdsMercadoria.Post;

  AtualizaProcesso;

  Cds2.Close;
  Cds3.Close;
 finally
  FreeAndNil( Cds2 );
  FreeAndNil( cds3 );
 end;

end;


procedure TfrmVisualizaProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmVisualizaProcesso := nil;
end;

procedure TfrmVisualizaProcesso.FormCreate(Sender: TObject);
begin
 if not dmIT.cdsTipoProcesso.Active then
    dmIT.cdsTipoProcesso.Open;
 dtpFinal.DateTime   := pCnnMain.AppServer.IServerDate;
 dtpInicial.DateTime := pCnnMain.AppServer.IServerDate;
end;

procedure TfrmVisualizaProcesso.BitBtn1Click(Sender: TObject);
begin
 ExecutaFiltro;
end;

procedure TfrmVisualizaProcesso.ExecutaFiltro;
var iSQL, iParam : String;
begin
 iParam := '';
 if dtpInicial.Checked then
    iParam := iParam + ' AND IT_PROCESSO.DATAPROCESSOID >= ''' + FormatDateTime( 'dd/mm/yyyy', dtpInicial.DateTime ) + '''';
 if dtpFinal.Checked then
    iParam := iParam + ' AND IT_PROCESSO.DATAPROCESSOID <= ''' + FormatDateTime( 'dd/mm/yyyy', dtpFinal.DateTime ) + '''';
 if Trim( cmbSigla.Text ) <> '' then
    iParam := iParam + ' AND IT_PROCESSO.TIPOPROCESSOID = ' + TipoProcessoId;

 iSQL := ' SELECT IT_PROCESSO.PROCESSOID "Processo", ' +
                ' IT_PROCESSO.TIPOPROCESSOID "Tipo Processo", ' +
                ' IT_PROCESSOITEM.ITEMID "Item", ' +
                ' IT_PROCESSO.DATAPROCESSOID "Data do Processo", ' +
                ' IT_PROCESSOITEM.PARTNUMBERID "Part Number", ' +
                ' EF_GRUPO.GRUPOID "Grupo ID", ' +
                ' IT_PROCESSOITEM.NCMID "Ncm", ' +
                ' IT_PROCESSOITEM.VLRFOBUS "Vlr. Fob Us", ' +
                ' IT_PROCESSOITEM.PRODUTOID "Produto", ' +
                ' IT_PROCESSOITEM.DESCRICAOINGLES "Descrição em Inglês", ' +
                ' IT_PROCESSOITEM.DESCRICAOPORTUGUES "Descrição em Português", ' +
                ' IT_PROCESSOITEM.QTDPEDIDA "Qtd. Pedida", ' +
                ' IT_PROCESSOITEM.QTDLIBERADA "Qtd. Liberada", ' +
                ' IT_PROCESSOITEM.USUARIO "Usuário" ' +
           ' FROM IT_PROCESSO IT_PROCESSO, ' +
                ' IT_PROCESSOITEM IT_PROCESSOITEM, ' +
                ' EF_GRUPO'+
          ' WHERE IT_PROCESSOITEM.PROCESSOID = IT_PROCESSO.PROCESSOID ' +
            ' AND IT_PROCESSOITEM.TIPOPROCESSOID = IT_PROCESSO.TIPOPROCESSOID ' +
            ' AND IT_PROCESSOITEM.DATAPROCESSOID = IT_PROCESSO.DATAPROCESSOID ' +
            ' AND IT_PROCESSO.LIBERACHEFIA = 1  ' +
            ' AND IT_PROCESSOITEM.GRUPOID = EF_GRUPO.GRUPOID(+)'+
            ' AND IT_PROCESSOITEM.PRODUTOID IS NOT NULL ' + iParam +
          ' MINUS ' +
         ' SELECT IT_PROCESSO.PROCESSOID "Processo", ' +
                ' IT_PROCESSO.TIPOPROCESSOID "Tipo Processo", ' +
                ' IT_PROCESSOITEM.ITEMID "Item", ' +
                ' IT_PROCESSO.DATAPROCESSOID "Data do Processo", ' +
                ' IT_PROCESSOITEM.PARTNUMBERID "Part Number", ' +
                ' IT_PROCESSOITEM.GRUPOID "Grupo", ' +
                ' IT_PROCESSOITEM.NCMID "Ncm", ' +
                ' IT_PROCESSOITEM.VLRFOBUS "Vlr. Fob Us", ' +
                ' IT_PROCESSOITEM.PRODUTOID "Produto", ' +
                ' IT_PROCESSOITEM.DESCRICAOINGLES "Descrição em Inglês", ' +
                ' IT_PROCESSOITEM.DESCRICAOPORTUGUES "Descrição em Português", ' +
                ' IT_PROCESSOITEM.QTDPEDIDA "Qtd. Pedida", ' +
                ' IT_PROCESSOITEM.QTDLIBERADA "Qtd. Liberada", ' +
                ' IT_PROCESSOITEM.USUARIO "Usuário" ' +
           ' FROM IT_PROCESSO IT_PROCESSO, ' +
                ' IT_PROCESSOITEM IT_PROCESSOITEM, ' +
                ' IT_MERCADORIA IT_MERCADORIA ' +
          ' WHERE IT_PROCESSOITEM.PROCESSOID = IT_PROCESSO.PROCESSOID ' +
            ' AND IT_PROCESSOITEM.TIPOPROCESSOID = IT_PROCESSO.TIPOPROCESSOID ' +
            ' AND IT_PROCESSOITEM.DATAPROCESSOID = IT_PROCESSO.DATAPROCESSOID ' +
            ' AND IT_MERCADORIA.PROCESSOID = IT_PROCESSO.PROCESSOID ' +
            ' AND IT_MERCADORIA.TIPOPROCESSOID = IT_PROCESSO.TIPOPROCESSOID ' +
            ' AND IT_MERCADORIA.DATAPROCESSOID = IT_PROCESSO.DATAPROCESSOID ' +
            ' AND IT_MERCADORIA.ITEMPROCESSOID = IT_PROCESSOITEM.ITEMID ' +
            ' AND IT_PROCESSO.LIBERACHEFIA = 0 ' +
            ' AND IT_PROCESSOITEM.PRODUTOID IS NOT NULL ' + iParam;

 ExecDynamicProvider( -1, iSQL, Cds );

 Cds.Open;
 Cds.FieldByName( 'Processo' ).DisplayWidth := 7;
 Cds.FieldByName( 'Tipo Processo' ).DisplayWidth := 11;
 Cds.FieldByName( 'Item' ).DisplayWidth := 4;
 Cds.FieldByName( 'Data do Processo' ).DisplayWidth := 15;
 Cds.FieldByName( 'Part Number' ).DisplayWidth := 20;
 Cds.FieldByName( 'Grupo ID' ).DisplayWidth := 5;
 Cds.FieldByName( 'Ncm' ).DisplayWidth := 10;
 Cds.FieldByName( 'Vlr. Fob Us' ).DisplayWidth := 15;
 TNumericField( Cds.FieldByName( 'Vlr. Fob Us' ) ).DisplayFormat := '###,###,###,##0.00';
 Cds.FieldByName( 'Produto' ).DisplayWidth := 8;
 Cds.FieldByName( 'Descrição em Inglês' ).DisplayWidth := 50;
 Cds.FieldByName( 'Descrição em Português' ).DisplayWidth := 50;
 Cds.FieldByName( 'Qtd. Pedida' ).DisplayWidth := 10;
 Cds.FieldByName( 'Qtd. Liberada' ).DisplayWidth := 11;
 Cds.FieldByName( 'Usuário' ).DisplayWidth := 18;
end;

procedure TfrmVisualizaProcesso.BitBtn2Click(Sender: TObject);
begin
 Close;
end;


procedure TfrmVisualizaProcesso.FormShow(Sender: TObject);
var iSQL : String;
begin
 iSQL := ' SELECT IT_TIPOPROCESSO.TIPOPROCESSOID,'+
              'IT_TIPOPROCESSO.SIGLA, '+
              'IT_TIPOPROCESSO.DESCRICAO'+
         '   FROM IT_TIPOPROCESSO';
 AdicionarCamposCombo( cmbSigla ,iSQL,'SIGLA');
end;

procedure TfrmVisualizaProcesso.cmbSiglaExit(Sender: TObject);
var cds  : TClientDataSet;
    iSQL : String;
begin
 try
  try
   cds := nil;
   iSQL :='SELECT IT_TIPOPROCESSO.TIPOPROCESSOID'+
          '  FROM IT_TIPOPROCESSO '+
          ' WHERE IT_TIPOPROCESSO.SIGLA = '+ QuotedStr( cmbSigla.Text );
   ExecDynamicProvider( -1,iSQL,cds );
   if not cds.IsEmpty then
      TipoProcessoId := cds.FieldByName('TIPOPROCESSOID').AsString;
   cds.Close;
  except
   on E: Exception do
      raise Exception.Create(E.message);
  end;
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmVisualizaProcesso.dbgrdPadraoPesquisaTitleClick(
  Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, ds, dbgrdPadraoPesquisa);
end;

procedure TfrmVisualizaProcesso.dbgrdPadraoPesquisaDblClick(
  Sender: TObject);
begin
 AdicionarProcessoDI;
end;

end.
