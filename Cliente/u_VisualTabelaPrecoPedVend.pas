unit u_VisualTabelaPrecoPedVend;

interface

uses
  Windows, Messages, DB, Forms, DBClient, Buttons, ExtCtrls, Grids, SysUtils,
  DBGrids, ComCtrls, StdCtrls, Mask, Controls, Classes, Dialogs;

type
  TfrmVisualTabelaPrecoPedVend = class(TForm)
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
    cdsPesqEquip: TClientDataSet;
    dsPesqEquip: TDataSource;
    DBGrid1: TDBGrid;
    dbgrdItem: TDBGrid;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DBGrid3: TDBGrid;
    dsPesqOpcional: TDataSource;
    cdsPesqOpcional: TClientDataSet;
    sbAddUm: TSpeedButton;
    spRemoveUm: TSpeedButton;
    sbRemoveTodos: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbUmUPClick(Sender: TObject);
    procedure sbRetUmUPClick(Sender: TObject);
    procedure sbRetTodosUPClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure sbAddUmClick(Sender: TObject);
    procedure spRemoveUmClick(Sender: TObject);
    procedure sbRemoveTodosClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaComposicao;
    procedure AtualizaItensPedVend( ModeloEquipamentoId : String);
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

  const Select_Opcional    = 'SELECT' +
                             '  PP_OPCIONAL.MODELOCOMPONENTEID,' +
                             '  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,' +
                             '  PP_CATALOGO.DESCRICAOINGLES L_DESCRICAOINGLES,' +
                             '  PP_CATALOGO.GRUPOID L_GRUPOID,' +
                             '  EF_GRUPO.DESCRICAO L_DESCR_GRUPO,' +
                             '  PP_OPCIONAL.MODELOEQUIPAMENTOID,' +
                             '  PP_OPCIONAL.QUANTIDADE,' +
                             '  PP_OPCIONAL.USUARIO' +
                             '  FROM' +
                             '  PP_OPCIONAL PP_OPCIONAL,' +
                             '  PP_CATALOGO PP_CATALOGO,' +
                             '  EF_GRUPO EF_GRUPO' +
                             ' WHERE' +
                             '  PP_CATALOGO.MODELOID = PP_OPCIONAL.MODELOCOMPONENTEID' +
                             '  AND EF_GRUPO.GRUPOID = PP_CATALOGO.GRUPOID';
              var
  frmVisualTabelaPrecoPedVend: TfrmVisualTabelaPrecoPedVend;

implementation

uses FuncoesCliente, u_dmPP;

{$R *.dfm}

procedure TfrmVisualTabelaPrecoPedVend.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmVisualTabelaPrecoPedVend.FormCreate(Sender: TObject);
begin
 btnPesquisaClick( Sender );
end;

procedure TfrmVisualTabelaPrecoPedVend.btnPesquisaClick(Sender: TObject);
var iSQL, iParam : String;
begin
 iParam := '';
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
 ExecDynamicProvider( -1, iSQL, cdsPesqEquip );
 cdsPesqEquip.Open;

 iSQL := Select_Opcional;
 ExecDynamicProvider( -1, iSQL, cdsPesqOpcional );
 cdsPesqEquip.Open;

 cdsPesqOpcional.AddIndex('idx1','MODELOEQUIPAMENTOID;MODELOCOMPONENTEID',[ixCaseInsensitive],'','',0 );
 cdsPesqOpcional.IndexName := 'idx1';
 cdsPesqOpcional.MasterSource    := dsPesqEquip;
 cdsPesqOpcional.MasterFields    := 'MODELOEQUIPAMENTOID';
 cdsPesqOpcional.IndexFieldNames := 'MODELOEQUIPAMENTOID;MODELOCOMPONENTEID'
end;

procedure TfrmVisualTabelaPrecoPedVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action        := caFree;
 frmVisualTabelaPrecoPedVend := Nil;
end;

procedure TfrmVisualTabelaPrecoPedVend.sbUmUPClick(Sender: TObject);
begin
 if cdsPesqEquip.State <> dsInactive then
    begin
     dmPP.cdsPedVendItem.Insert;
     dmPP.cdsPedVendItemMODELOID.Value := cdsPesqEquip.FieldByName('MODELOEQUIPAMENTOID').AsString;
     dmPP.cdsPedVendItem.Post;

     AtualizaItensPedVend( cdsPesqEquip.FieldByName('MODELOEQUIPAMENTOID').AsString );
    end;
end;

procedure TfrmVisualTabelaPrecoPedVend.sbRetUmUPClick(Sender: TObject);
begin
 if not dmPP.cdsPedVendItem.IsEmpty then
    dmPP.cdsPedVendItem.Delete;
end;

procedure TfrmVisualTabelaPrecoPedVend.sbRetTodosUPClick(Sender: TObject);
begin
 dmPP.cdsPedVendItem.First;
 while not dmPP.cdsPedVendItem.Eof do
  dmPP.cdsPedVendItem.Delete;
end;

procedure TfrmVisualTabelaPrecoPedVend.AtualizaComposicao;
begin
{ with dmPP do
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
 end;}
end;

procedure TfrmVisualTabelaPrecoPedVend.AtualizaItensPedVend(
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

procedure TfrmVisualTabelaPrecoPedVend.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, dsPesqEquip, DBGrid1);
end;

procedure TfrmVisualTabelaPrecoPedVend.sbAddUmClick(Sender: TObject);
begin
 if cdsPesqEquip.State <> dsInactive then
    begin
     dmPP.cdsPedVendComp.Insert;
     dmPP.cdsPedVendCompMODELOID.Value := cdsPesqOpcional.FieldByName('MODELOCOMPONENTEID').AsString;
     dmPP.cdsPedVendComp.Post;
    end;
end;

procedure TfrmVisualTabelaPrecoPedVend.spRemoveUmClick(Sender: TObject);
begin
 if not dmPP.cdsPedVendComp.IsEmpty then
    dmPP.cdsPedVendComp.Delete;
end;

procedure TfrmVisualTabelaPrecoPedVend.sbRemoveTodosClick(Sender: TObject);
begin
 dmPP.cdsPedVendComp.First;
 while not dmPP.cdsPedVendComp.Eof do
  dmPP.cdsPedVendComp.Delete;
end;

end.
