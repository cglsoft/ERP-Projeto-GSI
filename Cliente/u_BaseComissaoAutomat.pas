unit u_BaseComissaoAutomat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ActnList, XPStyleActnCtrls, ActnMan, wwDataInspector,
  tmbDataInspector, Grids, DBGrids, ComCtrls, ExtCtrls, PnAjustaGrid, ActnMenus,
  ActnCtrls, ToolWin, tmbToolManutencaoTop, fcStatusBar, Mask, wwdbedit,
  Wwdbspin, StdCtrls, wwdbdatetimepicker;

type
  TfrmBaseComissaoAutomat = class(TForm)
    Splitter1: TSplitter;
    fcstbarStatus: TfcStatusBar;
    pgctrlAnalise: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdBasePagto: TDBGrid;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    tmbDataInspector1: TtmbDataInspector;
    actmngAnalise: TActionManager;
    actPagtoComissao: TAction;
    actRelDemComissao: TAction;
    actRelVendRepr: TAction;
    actRelRecRepres: TAction;
    actAltBasePagto: TAction;
    actVisualDupl: TAction;
    actExportar: TAction;
    actFechar: TAction;
    imglst1: TImageList;
    ppmnuAnalise: TPopupMenu;
    CopiarVendaparaGerente1: TMenuItem;
    VisualizarDuplicatas1: TMenuItem;
    AlterarBasePagto1: TMenuItem;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    wwdtpcktIni: TwwDBDateTimePicker;
    wwdtpcktFim: TwwDBDateTimePicker;
    wwdbspedtProduto: TwwDBSpinEdit;
    Label1: TLabel;
    Label8: TLabel;
    mktPercComissao: TMaskEdit;
    mktDtPagtoComissao: TMaskEdit;
    mktDtConvFob: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseComissaoAutomat: TfrmBaseComissaoAutomat;

implementation

{$R *.dfm}

end.
