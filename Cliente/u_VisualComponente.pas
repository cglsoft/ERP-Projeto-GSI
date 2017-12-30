unit u_VisualComponente;

interface

uses
 SysUtils, Forms, DB, DBClient, ExtCtrls, Wwdbigrd, Wwdbgrid, Grids,
 DBGrids, ComCtrls, Buttons, StdCtrls, Mask, Controls, Classes;

type
  TfrmVisualComponente = class(TForm)
    GroupBox1: TGroupBox;
    btnPesquisa: TBitBtn;
    ds: TDataSource;
    cds: TClientDataSet;
    Label2: TLabel;
    mktModelo: TMaskEdit;
    Label3: TLabel;
    mktDescrPort: TMaskEdit;
    Panel3: TPanel;
    sbUmUP: TSpeedButton;
    sbRetUmUP: TSpeedButton;
    sbRetTodosUP: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pgctPrincipal: TPageControl;
    TabSheet2: TTabSheet;
    wwDBGridComp: TwwDBGrid;
    sbUmDOWN: TSpeedButton;
    sbRetUmDOWN: TSpeedButton;
    sbRetTodosDOWN: TSpeedButton;
    TabSheet3: TTabSheet;
    btnFechar: TBitBtn;
    mktDescrIngles: TMaskEdit;
    Label1: TLabel;
    Splitter2: TSplitter;
    pgctrlItem: TPageControl;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    dbgrdOpcional: TDBGrid;
    dbgrdDependencia: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure btnPesquisaClick(Sender: TObject);
    procedure sbRetUmUPClick(Sender: TObject);
    procedure sbRetUmDOWNClick(Sender: TObject);
    procedure sbRetTodosDOWNClick(Sender: TObject);
    procedure sbRetTodosUPClick(Sender: TObject);
    procedure sbUmDOWNClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgctPrincipalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure sbUmUPClick(Sender: TObject);
  private
    { Private declarations }
    function VrfEquipComposicao(Campo, Conteudo, Tabela : String):boolean;
    procedure AdicionarUM( cdsAdic : TClientDataSet; FCampo, FTabela : String );
  public
    { Public declarations }
  end;

var
  frmVisualComponente: TfrmVisualComponente;

implementation

uses FuncoesCliente, u_dmGSI, u_dmEF, u_PesquisaCampo, u_dmPP;

{$R *.dfm}

procedure TfrmVisualComponente.AdicionarUM( cdsAdic : TClientDataSet; FCampo, FTabela : String );
var iSQL : String;
begin
 iSQL := 'MODELOCOMPONENTEID = ' +
         QuotedStr( dmPP.cdsOpcional.FieldByName('MODELOCOMPONENTEID').AsString ) +
         'AND ' + FCampo +  ' = ' +
         QuotedStr( cds.FieldByName('Modelo Id').AsString );

 if ( not dmPP.cdsComposicao.IsEmpty  ) and ( not dmPP.cdsOpcional.IsEmpty ) then
    if (cds.State <> dsInactive) then
       if not cds.IsEmpty then
          begin
           if VrfEquipComposicao( FCampo, iSQL , FTabela ) then
              begin
               cdsAdic.Insert;
               cdsAdic.FieldByName( FCampo ).Value := cds.FieldByName('Modelo Id').AsString;
               cdsAdic.Post;
              end
           else
               Application.MessageBox('Modelo já incluso.','Mensagem', 0);
          end;
end;

procedure TfrmVisualComponente.btnPesquisaClick(Sender: TObject);
var iSQL, iParam : String;
begin
 iParam := '';
 if mktModelo.Text <> '' then
    iParam := iParam + ' AND PP_CATALOGO.MODELOID LIKE ' +
                         QuotedStr( '%' + mktModelo.Text + '%' );

 if mktDescrPort.Text <> '' then
    iParam := iParam + ' AND PP_CATALOGO.DESCRICAOPORTUGUES LIKE ' +
                         QuotedStr( '%' + mktDescrPort.Text + '%' );

 if mktDescrIngles.Text <> '' then
    iParam := iParam + ' AND PP_CATALOGO.DESCRICAOINGLES LIKE ' +
                         QuotedStr( '%' + mktDescrIngles.Text + '%' );

 if dmPP.cdsEquipamentoL_GRUPOID.AsInteger > 0 then
    iParam := iParam + ' AND PP_CATALOGO.GRUPOID = ' + dmPP.cdsEquipamentoL_GRUPOID.AsString;

 iSQL := 'SELECT ' +
         ' PP_CATALOGO.MODELOID "Modelo Id", ' +
         ' PP_CATALOGO.DESCRICAOPORTUGUES "Descrição em Português",' +
         ' PP_CATALOGO.DESCRICAOINGLES "Descrição em Inglês",' +
         ' PP_CATALOGO.GRUPOID "Grupo",' +
         ' EF_GRUPO.DESCRICAO "Descrição", ' +
         ' PP_CATALOGO.TIPO "Tipo", ' +
         ' PP_CATALOGO.FORNECEDORID "Fornecedor Id", ' +
         ' EF_ENTIDADE.NOME "Nome Fornecedor", ' +
         ' PP_CATALOGO.IMAGEM Imagem ' +
         ' FROM ' +
         ' PP_CATALOGO PP_CATALOGO, ' +
         ' EF_GRUPO EF_GRUPO, ' +
         ' EF_ENTIDADE EF_ENTIDADE ' +
         'WHERE ' +
         ' EF_GRUPO.GRUPOID(+) = PP_CATALOGO.GRUPOID ' +
         ' AND EF_ENTIDADE.ENTIDADEID(+) = PP_CATALOGO.FORNECEDORID ' +
         ' ' + iParam;

 ExecDynamicProvider( -1, iSQL, Cds );

 Cds.FieldByName( 'Modelo Id' ).DisplayWidth := 30;
 Cds.FieldByName( 'Descrição em Português' ).DisplayWidth := 40;
 Cds.FieldByName( 'Descrição em Inglês' ).DisplayWidth := 40;
 Cds.FieldByName( 'Grupo' ).DisplayWidth := 5;
 Cds.FieldByName( 'Descrição' ).DisplayWidth := 15;
 Cds.Open;
end;

procedure TfrmVisualComponente.sbRetUmUPClick(Sender: TObject);
begin
 case pgctPrincipal.ActivePageIndex of
  0 :  if dmPP.cdsComposicao.RecordCount > 0 then
          dmPP.cdsComposicao.Delete;
  1 :  if dmPP.cdsOpcional.RecordCount > 0 then
          dmPP.cdsOpcional.Delete;
 end;
end;

procedure TfrmVisualComponente.sbRetUmDOWNClick(Sender: TObject);
 procedure RetornarUM( cdsAdicUm : TClientDataSet );
 begin
  if cdsAdicUm.RecordCount > 0 then
     cdsAdicUm.Delete;
 end;
begin
 case pgctrlItem.ActivePageIndex of
 0 : RetornarUM( dmPP.cdsDependencia );
 1 : RetornarUM( dmPP.cdsAcessorio );
 2 : RetornarUM( dmPP.cdsIncompativel );
 end;
end;

procedure TfrmVisualComponente.sbRetTodosDOWNClick(Sender: TObject);
 procedure RetornarTODOS( cdsAdicTodos : TClientDataSet );
 begin
  cdsAdicTodos.First;
  while not cdsAdicTodos.Eof do
  cdsAdicTodos.Delete;
 end;
begin
 case pgctrlItem.ActivePageIndex of
 0 : RetornarTODOS( dmPP.cdsDependencia );
 1 : RetornarTODOS( dmPP.cdsAcessorio );
 2 : RetornarTODOS( dmPP.cdsIncompativel );
 end;
end;

procedure TfrmVisualComponente.sbRetTodosUPClick(Sender: TObject);
begin
 with dmPP do
 begin
  case pgctPrincipal.ActivePageIndex of
   0 : begin
        dmPP.cdsComposicao.First;
        while not dmPP.cdsComposicao.Eof do
         dmPP.cdsComposicao.Delete;
       end;
   1 : begin
        cdsOpcional.First;
        while not cdsOpcional.Eof do
         cdsOpcional.Delete;
       end;
  end;
 end;

end;

procedure TfrmVisualComponente.sbUmDOWNClick(Sender: TObject);
begin
 case pgctrlItem.ActivePageIndex of
 0 :  AdicionarUM( dmPP.cdsDependencia, 'MODELODEPENDENCIAID', 'PP_DEPENDENCIA');
 1 :  AdicionarUM( dmPP.cdsAcessorio,   'MODELOACESSORIOID',   'PP_ACESSORIO');
 2 :  AdicionarUM( dmPP.cdsIncompativel,'MODELOINCOMPATIVELID','PP_INCOMPATIVEL');
 end;
end;

procedure TfrmVisualComponente.btnFecharClick(Sender: TObject);
begin
 Close
end;

procedure TfrmVisualComponente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmVisualComponente.pgctPrincipalChange(Sender: TObject);
begin
 sbUmDOWN.Visible       := (pgctPrincipal.ActivePageIndex=1);
 sbRetUmDOWN.Visible    := (pgctPrincipal.ActivePageIndex=1);
 sbRetTodosDOWN.Visible := (pgctPrincipal.ActivePageIndex=1);
end;

procedure TfrmVisualComponente.FormCreate(Sender: TObject);
begin
 btnPesquisaClick( Sender )
end;

procedure TfrmVisualComponente.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column, ds, DBGrid1);
end;

procedure TfrmVisualComponente.sbUmUPClick(Sender: TObject);
begin
 with dmPP do
 begin
   case pgctPrincipal.ActivePageIndex of
    0 : begin
         if (cds.State <> dsInactive) then
            begin
             if VrfEquipComposicao( 'MODELOCOMPONENTEID', 'MODELOCOMPONENTEID= '+ QuotedStr(cds.FieldByName('Modelo Id').AsString) , 'PP_COMPOSICAO') then
                begin
                 dmPP.cdsComposicao.Insert;
                 dmPP.cdsComposicao.FieldByName( 'MODELOCOMPONENTEID').Value := cds.FieldByName('Modelo Id').AsString;
                 dmPP.cdsComposicao.Post;
                end
             else
                Application.MessageBox('Modelo já incluso.','Mensagem', 0);
          end;
        end;
    1 : begin
         if not dmPP.cdsComposicao.IsEmpty then
            begin
              if (cds.State <> dsInactive) then
                begin
                 if VrfEquipComposicao( 'MODELOCOMPONENTEID', 'MODELOCOMPONENTEID='+ QuotedStr( cds.FieldByName('Modelo Id').AsString) , 'PP_OPCIONAL') then
                    begin
                     cdsOpcional.Insert;
                     cdsOpcional.FieldByName('MODELOCOMPONENTEID').Value := cds.FieldByName('Modelo Id').AsString;
                     cdsOpcional.Post;
                    end
                 else
                    Application.MessageBox('Modelo já incluso.','Mensagem', 0);
                end;
            end
            else
             Application.MessageBox('Não há composição cadastrada.','Mensagem', 0);
        end;
   end;
 end;
end;

function TfrmVisualComponente.VrfEquipComposicao(Campo, Conteudo, Tabela: String): boolean;
var iSql : String;
    CdsSql : TClientDataSet;
begin
 CdsSql     := nil;
 iSQL    := 'SELECT MODELOEQUIPAMENTOID, '+ Campo + ' FROM  '+ Tabela +
            ' WHERE '+
            'MODELOEQUIPAMENTOID = ' + QuotedStr( dmPP.cdsEquipamentoMODELOEQUIPAMENTOID.AsString )+' '+
            ' AND ' + Conteudo ;
 try
  ExecDynamicProvider( -1, iSQL, CdsSql );

  Result := CdsSql.IsEmpty;

 finally
  CdsSql.Close;
  FreeAndNil( CdsSql );
 end;
end;

end.
