unit u_VisualTabelaPreco;

interface

uses
  Windows, Messages, DB, Forms, DBClient, Wwdbigrd, Wwdbgrid, Buttons, StdCtrls,
  Graphics, ExtCtrls, Grids, DBGrids, ComCtrls, Mask, Controls, Classes,
  SysUtils, Dialogs;

type
  TfrmVisualTabelaPreco = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    btnPesquisa: TBitBtn;
    mktModelo: TMaskEdit;
    mktDescrPort: TMaskEdit;
    btnFechar: TBitBtn;
    mktDescrIngles: TMaskEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    sbUmUP: TSpeedButton;
    sbRetUmUP: TSpeedButton;
    sbRetTodosUP: TSpeedButton;
    pgctPrincipal: TPageControl;
    TabSheet2: TTabSheet;
    wwDBGridComp: TwwDBGrid;
    cds: TClientDataSet;
    ds: TDataSource;
    PnLocalizar: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Label6: TLabel;
    mktGrupo: TMaskEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbUmUPClick(Sender: TObject);
    procedure sbRetUmUPClick(Sender: TObject);
    procedure sbRetTodosUPClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure AtualizaComposicao;
    procedure AtualizarItensProposta( ModeloEquipamentoId : String);
    function VrfPropEquipamento( PropostaID, EquipamentoID : String): boolean;

  public
    { Public declarations }
  end;

  const Select_Equipamento = 'SELECT' +
                             '  PP_EQUIPAMENTO.MODELOEQUIPAMENTOID,' +
                             '  PP_CATALOGO.DESCRICAOPORTUGUES AS L_DESCRICAOPORTUGUES,' +
                             '  PP_CATALOGO.DESCRICAOINGLES AS L_DESCRICAOINGLES,' +
                             '  PP_CATALOGO.COMENTARIO AS L_COMENTARIO,' +
                             '  PP_CATALOGO.GRUPOID AS L_GRUPOID,' +
                             '  EF_GRUPO.DESCRICAO AS L_DESCR_GRUPO,' +
                             '  PP_EQUIPAMENTO.REVISAOID,' +
                             '  PP_EQUIPAMENTO.DATAINCLUSAO,' +
                             '  PP_EQUIPAMENTO.DATAALTERACAO,' +
                             '  PP_EQUIPAMENTO.USUARIO' +
                             '  FROM' +
                             '  PP_EQUIPAMENTO PP_EQUIPAMENTO,' +
                             '  PP_CATALOGO PP_CATALOGO,' +
                             '  EF_GRUPO EF_GRUPO' +
                             ' WHERE' +
                             '  PP_CATALOGO.MODELOID = PP_EQUIPAMENTO.MODELOEQUIPAMENTOID' +
                             '  AND EF_GRUPO.GRUPOID(+) = PP_CATALOGO.GRUPOID ';

var
  frmVisualTabelaPreco: TfrmVisualTabelaPreco;

implementation

uses FuncoesCliente, u_dmPP;

{$R *.dfm}

procedure TfrmVisualTabelaPreco.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisualTabelaPreco.FormCreate(Sender: TObject);
begin
 btnPesquisaClick( Sender );
end;

procedure TfrmVisualTabelaPreco.btnPesquisaClick(Sender: TObject);
var iSQL, iParam : String;
begin
 iParam := '';
 if mktGrupo.Text <> '' then
    iParam := iParam + ' AND PP_CATALOGO.GRUPOID LIKE ' +
                         QuotedStr( '%' + mktGrupo.Text + '%' );

 if mktModelo.Text <> '' then
    iParam := iParam + ' AND PP_EQUIPAMENTO.MODELOEQUIPAMENTOID LIKE ' +
                         QuotedStr( '%' + mktModelo.Text + '%' );

 if mktDescrPort.Text <> '' then
    iParam := iParam + ' AND PP_CATALOGO.DESCRICAOPORTUGUES LIKE ' +
                         QuotedStr( '%' + mktDescrPort.Text + '%' );

 if mktDescrIngles.Text <> '' then
    iParam := iParam + ' AND PP_CATALOGO.DESCRICAOINGLES LIKE ' +
                         QuotedStr( '%' + mktDescrIngles.Text + '%' );

 iSQL := Select_Equipamento + iParam;
 ExecDynamicProvider( -1, iSQL, Cds );
 Cds.Open;
end;

procedure TfrmVisualTabelaPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmVisualTabelaPreco.sbUmUPClick(Sender: TObject);
begin
 with dmPP do
 begin
  if (cds.State <> dsInactive) then
     begin
      if not VrfPropEquipamento( dmPP.cdsProposta.FieldByName('PROPOSTAID').AsString, cds.FieldByName('MODELOEQUIPAMENTOID').AsString) then
         begin
          try
           cdsPropEquipamento.Insert;
           cdsPropEquipamentoMODELOEQUIPAMENTOID.Value := cds.FieldByName('MODELOEQUIPAMENTOID').AsString;
           cdsPropEquipamento.Post;
           AtualizarItensProposta( cds.FieldByName('MODELOEQUIPAMENTOID').AsString );
          except
           on E:Exception do
              MessageDLG('Ocorreu um erro na inserção do registro.'+ #13+ 'Mensagem original: ' + #13 + E.Message, mtError, [mbOK], 0);
          end;
         end
      else
       Application.MessageBox('Modelo já incluso.','Mensagem', 0);
     end;
 end;
end;

procedure TfrmVisualTabelaPreco.sbRetUmUPClick(Sender: TObject);
begin
 if not dmPP.cdsPropEquipamento.IsEmpty then
    dmPP.cdsPropEquipamento.Delete;
end;

procedure TfrmVisualTabelaPreco.sbRetTodosUPClick(Sender: TObject);
begin
 dmPP.cdsPropEquipamento.First;
 while not dmPP.cdsPropEquipamento.Eof do
  dmPP.dsPropEquipamento.DataSet.Delete;
end;

procedure TfrmVisualTabelaPreco.AtualizaComposicao;
begin
 with dmPP do
 begin
  cdsComposicao.First;
  while not cdsComposicao.Eof do
  begin
   cdsPropComposicao.Insert;
   cdsPropComposicaoMODELOCOMPONENTEID.Value  := cdsComposicaoMODELOCOMPONENTEID.Value;
   cdsPropComposicaoQUANTIDADE.Value          := cdsComposicaoQUANTIDADE.Value;
   cdsPropComposicaoVLRUNITARIOREVENDA.Value  := cdsComposicaoVLRUNITARIOREVENDA.Value;
   cdsPropComposicaoVLRTOTALREVENDA.Value     := cdsComposicaoVLRTOTALREVENDA.Value;
   cdsPropComposicaoVLRUNITARIOFOB.Value      := cdsComposicaoVLRUNITARIOFOB.Value;
   cdsPropComposicaoVLRTOTALFOB.Value         := cdsComposicaoVLRTOTALFOB.Value;
   cdsPropComposicaoVLRUNITARIONET.Value      := cdsComposicaoVLRUNITARIONET.Value;
   cdsPropComposicaoVLRTOTALNET.Value         := cdsComposicaoVLRTOTALNET.Value;
   cdsPropComposicao.Post;
   cdsComposicao.Next;
  end;
 end;
end;

procedure TfrmVisualTabelaPreco.AtualizarItensProposta(
  ModeloEquipamentoId: String);
var InstSQL : String;
begin
 with dmPP do
 begin
  InstSQL  := 'MODELOEQUIPAMENTOID = ' + QuotedStr( ModeloEquipamentoId );
  GerarPesquisa( dmPP.cdsEquipamento, InstSQL );
  if not dmPP.cdsEquipamento.IsEmpty then
     AtualizaComposicao;
 end;
end;

procedure TfrmVisualTabelaPreco.Edit1Change(Sender: TObject);
begin
 try
  if TClientDataSet(ds.DataSet).IndexFieldNames <> '' then
     TClientDataSet(ds.DataSet).FindNearest([Edit1.Text])
  else
     Edit1.Text := '..Selecione o campo desejado';
 Except
  On E:Exception do
 end;
end;

procedure TfrmVisualTabelaPreco.DBGrid1DblClick(Sender: TObject);
begin
 PnLocalizar.Visible := true;
 Edit1.SetFocus;
end;

procedure TfrmVisualTabelaPreco.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, ds, DBGrid1);
end;

procedure TfrmVisualTabelaPreco.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
    PnLocalizar.Visible := false;
end;

function TfrmVisualTabelaPreco.VrfPropEquipamento( PropostaID, EquipamentoID : String): boolean;
var iSql : String;
    CdsSql : TClientDataSet;
begin
 CdsSql     := nil;
 iSQL    := 'SELECT  PROPOSTAID, MODELOEQUIPAMENTOID FROM  PP_PROPEQUIPAMENTO ' +
            ' WHERE '+
            '  PROPOSTAID = ' +  QuotedStr( PropostaID) +
            '  AND MODELOEQUIPAMENTOID = '+ QuotedStr( EquipamentoID);

 try
  ExecDynamicProvider( -1, iSQL, CdsSql );

  Result := ( not CdsSql.IsEmpty );

 finally
  CdsSql.Close;
  FreeAndNil( CdsSql );
 end;
end;

end.
