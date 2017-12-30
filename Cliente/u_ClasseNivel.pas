unit u_ClasseNivel;

interface

uses
  Windows, Forms, SysUtils, Classes, ActnList, XPStyleActnCtrls, ActnMan, ImgList,
  Controls, tmbToolEdicaoBottom, ComCtrls, ActnCtrls, tmbToolEdicaoTop,
  ToolWin, tmbToolEdicaoLista, wwdbedit, Wwdotdot, StdCtrls, ExtCtrls,
  DBCtrls, Mask ;

type
  TfrmClasseNivel = class(TForm)
    pnlAdiantamento: TPanel;
    lblAdiantamentoId: TLabel;
    DBEdit2: TDBEdit;
    gbDadosAdiantamento: TGroupBox;
    CoolBar1: TCoolBar;
    tmbEdicaoTop2: TtmbEdicaoTop;
    tmbEdicaoTop1: TtmbEdicaoTop;
    ActionToolBar2: TActionToolBar;
    lblFuncionarioId: TLabel;
    dbcmbdlgClasse1: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    lblSolicitante: TLabel;
    DBEdit1: TDBEdit;
    StatusBar: TStatusBar;
    Panel3: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label2: TLabel;
    dbcmbdlgClasse: TwwDBComboDlg;
    DBEdit5: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label3: TLabel;
    dbcmbdlgClasse3: TwwDBComboDlg;
    DBEdit6: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    Label4: TLabel;
    dbcmbdlgClasse4: TwwDBComboDlg;
    DBEdit7: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    Label5: TLabel;
    dbcmbdlgClasse5: TwwDBComboDlg;
    DBEdit8: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    Label6: TLabel;
    dbcmbdlgClasse6: TwwDBComboDlg;
    DBEdit9: TDBEdit;
    DBRadioGroup6: TDBRadioGroup;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcmbdlgClasse1CustomDlg(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcmbdlgClasseCustomDlg(Sender: TObject);
    procedure dbcmbdlgClasse6CustomDlg(Sender: TObject);
    procedure dbcmbdlgClasse3CustomDlg(Sender: TObject);
    procedure dbcmbdlgClasse4CustomDlg(Sender: TObject);
    procedure dbcmbdlgClasse5CustomDlg(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClasseNivel: TfrmClasseNivel;

implementation

uses FuncoesCliente, u_dmPP;

{$R *.dfm}

procedure TfrmClasseNivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario(dmPP.cdsClasseNivel,' da Classe Nível') then
    Action := caNone
 else
    begin
     Action         := caFree;
     frmClasseNivel := Nil;
    end;
end;

procedure TfrmClasseNivel.dbcmbdlgClasse1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID',dmPP.cdsClasseNivelCLASSEVENDEDOR1ID.AsString );
 ExecLoockupRetorno( dmPP.cdsClasseNivel,'CLASSEVENDEDOR1ID','CLASSEVENDEDORID' );
end;

procedure TfrmClasseNivel.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {ENTER}
 if Key = #13 then
    SelectNext( Screen.ActiveControl, True, True );
end;

procedure TfrmClasseNivel.dbcmbdlgClasseCustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID',dmPP.cdsClasseNivelCLASSEVENDEDOR2ID.AsString );
 ExecLoockupRetorno( dmPP.cdsClasseNivel,'CLASSEVENDEDOR2ID','CLASSEVENDEDORID' );
end;

procedure TfrmClasseNivel.dbcmbdlgClasse6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID',dmPP.cdsClasseNivelCLASSEVENDEDOR6ID.AsString );
 ExecLoockupRetorno( dmPP.cdsClasseNivel,'CLASSEVENDEDOR6ID','CLASSEVENDEDORID' );
end;

procedure TfrmClasseNivel.dbcmbdlgClasse3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID',dmPP.cdsClasseNivelCLASSEVENDEDOR3ID.AsString );
 ExecLoockupRetorno( dmPP.cdsClasseNivel,'CLASSEVENDEDOR3ID','CLASSEVENDEDORID' );

end;

procedure TfrmClasseNivel.dbcmbdlgClasse4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID',dmPP.cdsClasseNivelCLASSEVENDEDOR4ID.AsString );
 ExecLoockupRetorno( dmPP.cdsClasseNivel,'CLASSEVENDEDOR4ID','CLASSEVENDEDORID' );
end;

procedure TfrmClasseNivel.dbcmbdlgClasse5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa(dmPP.dsClasseVendedor,'CLASSEVENDEDORID',dmPP.cdsClasseNivelCLASSEVENDEDOR5ID.AsString );
 ExecLoockupRetorno( dmPP.cdsClasseNivel,'CLASSEVENDEDOR5ID','CLASSEVENDEDORID' );
end;

end.
