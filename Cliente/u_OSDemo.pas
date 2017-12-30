unit u_OSDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PnAjustaGrid, ExtCtrls, tmbToolEdicaoLista, Grids, DBGrids, Mask,
  DBCtrls, StdCtrls, wwdbdatetimepicker, ComCtrls, ImgList, ActnList,
  XPStyleActnCtrls, ActnMan, ActnCtrls, ActnMenus, ToolWin;

type
  TfrmOSDemo = class(TForm)
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    actmngManutencao: TActionManager;
    actImpOS: TAction;
    ImageList1: TImageList;
    pgctrlDadosDemo: TPageControl;
    TabSheet1: TTabSheet;
    StatusBar1: TStatusBar;
    GroupBox5: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label35: TLabel;
    Label67: TLabel;
    Label69: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    DBEdit49: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    actAdicCatDemo: TAction;
    actFechar: TAction;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    dbgrdOSDemo: TDBGrid;
    tmbedtListDemo: TtmbEdicaoLista;
    tPanel11: tPanel1;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actImpOSExecute(Sender: TObject);
    procedure actAdicCatDemoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOSDemo: TfrmOSDemo;

implementation

uses u_dmOs, u_PadraoEdicao;

{$R *.dfm}

procedure TfrmOSDemo.actAdicCatDemoExecute(Sender: TObject);
begin
 if pgctrlDadosDemo.ActivePageIndex = 0 then
    begin
     MessageDlg('Selecionar a pasta de "Catálogo de Demonstração" e dê duplo click no registro para adicionar!',mtInformation,[mbOK],0);
     exit;
    end;


 dmOS.cdsOSDemo.Insert;
 dmOS.cdsOSDemoDEMOCATALOGOID.Value := dmOS.cdsDemoCatalogoDEMOCATALOGOID.Value;
 dmOS.cdsOSDemoEMPRESAID.Value      := dmOS.cdsDemoCatalogoEMPRESAID.Value;
 dmOS.cdsOSDemoPRODUTOID.Value      := dmOS.cdsDemoCatalogoPRODUTOID.Value;
 dmOS.cdsOSDemoSERIEID.Value        := dmOS.cdsDemoCatalogoSERIEID.Value;
 dmOS.cdsOSDemo.Post;

 dmOS.cdsDemoCatalogoItem.First;
 while not dmOS.cdsDemoCatalogoItem.Eof do
 begin
  dmOS.cdsOSDemo.Insert;
  dmOS.cdsOSDemoDEMOCATALOGOID.Value := dmOS.cdsDemoCatalogoItemDEMOCATALOGOID.Value;
  dmOS.cdsOSDemoEMPRESAID.Value      := dmOS.cdsDemoCatalogoItemEMPRESAID.Value;
  dmOS.cdsOSDemoPRODUTOID.Value      := dmOS.cdsDemoCatalogoItemPRODUTOID.Value;
  dmOS.cdsOSDemoSERIEID.Value        := dmOS.cdsDemoCatalogoItemSERIEID.Value;
  dmOS.cdsOSDemo.Post;

  dmOS.cdsDemoCatalogoItem.Next;
 end;
end;

procedure TfrmOSDemo.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmOSDemo.actImpOSExecute(Sender: TObject);
begin
 beep;
end;

procedure TfrmOSDemo.DBGrid2DblClick(Sender: TObject);
begin
 actAdicCatDemoExecute( Sender );
end;

procedure TfrmOSDemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmOSDemo := Nil;
end;

procedure TfrmOSDemo.FormCreate(Sender: TObject);
begin
 tmbedtListDemo.TtmbClassOwnerEspec := TFrmPadraoEdicao;
 tmbedtListDemo.TtmbFormOwnerEspec  := FrmPadraoEdicao;
end;

end.
