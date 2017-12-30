unit u_Hora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, tmbToolEdicaoBottom, ToolWin, ComCtrls, tmbToolEdicaoTop,
  fcOutlookList, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, fcClearPanel,
  fcButtonGroup, fcOutlookBar, XPStyleActnCtrls, ActnList, ActnMan, ImgList,
  StdCtrls, DBCtrls, Mask, wwdbedit, Wwdotdot, wwdbdatetimepicker,
  tmbToolEdicaoLista, Grids, Wwdbigrd, Wwdbgrid, Buttons, DBGrids,DB,
  ActnCtrls, ActnMenus, DBClient, tmbToolcdsExportar;

type
  TfrmHora = class(TForm)
    actmngRdv: TActionManager;
    actImprimirHoras: TAction;
    actanalisarExcel: TAction;
    actanalisarExcelItens: TAction;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBComboDlg5: TwwDBComboDlg;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    Label13: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbedtSaldo: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    tmbEdtListHoraItem: TtmbEdicaoLista;
    BitBtn1: TBitBtn;
    StatusBar: TStatusBar;
    Panel3: TPanel;
    tmbEdicaoBottom1: TtmbEdicaoBottom;
    dbgrdHoraItem: TDBGrid;
    DBGrid2: TDBGrid;
    actFechar: TAction;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    cdsConferencia: TClientDataSet;
    dsConferencia: TDataSource;
    dbckbxBloquear: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actImprimirHorasExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actanalisarExcelExecute(Sender: TObject);
    procedure actanalisarExcelItensExecute(Sender: TObject);
    procedure dbgrdHoraItemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
   procedure SetDataSetEdicaoLista;
   procedure StatusHint(Sender: TObject);
    { Private declarations }
    procedure ConsultaHoras;
  public
    { Public declarations }
  end;

var
  frmHora: TfrmHora;

implementation

uses u_dmRD, u_dmGSI, u_PadraoEdicao,FuncoesCliente, u_dmEF, u_parImpHora,
  u_dmAS, u_Exportar;

{$R *.dfm}

procedure TfrmHora.SetDataSetEdicaoLista;
begin
 tmbEdtListHoraitem.TtmbClassOwnerEspec    := TFrmPadraoEdicao;
 tmbEdtListHoraitem.TtmbFormOwnerEspec     := FrmPadraoEdicao;
end;

procedure TfrmHora.FormCreate(Sender: TObject);
begin
 SetDataSetEdicaoLista;
 DateTimePicker1.Date := pCnnMain.AppServer.iServerDate-30;
 DateTimePicker2.Date := pCnnMain.AppServer.iServerDate;
 Application.OnHint := StatusHint;

 if CheckSenha( dmGsi.UsuarioAtivo,'Banco de Horas','Editar dados principais', False ) then
    begin
     dbckbxBloquear.Enabled := True;
    end;

end;

procedure TfrmHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FinalFormulario( dmRD.cdsHora,' das Horas ') then
    Action := caNone
 else
    begin
     if cdsConferencia.Active then
        cdsConferencia.Close;
     dmRD.cdsHoraItem.IndexFieldNames := '';
     Action       := caFree;
     frmHora      := Nil;
    end;
    Application.OnHint := nil;
end;

procedure TfrmHora.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID', dmRD.cdsHoraHORAID.AsString );
 ExecLoockupRetorno( dmRD.cdsHora,'HORAID','ENTIDADEID' );
end;

procedure TfrmHora.StatusHint(Sender: TObject);
begin
 if StatusBar <> nil then
    StatusBar.Panels.Items[2].text := GetLongHint(Application.Hint);
end;

procedure TfrmHora.FormShow(Sender: TObject);
begin
 StatusBar.Panels.Items[0].Text := 'Tabela: '+ Copy( dmRD.cdsHora.Name, (Pos('cds', dmRD.cdsHora.Name)+3), Length(dmRD.cdsHora.Name));
 Case dmRD.cdsHora.State of
  dsEdit  : StatusBar.Panels.Items[1].Text := 'Status: Alteração';
  dsInsert: StatusBar.Panels.Items[1].Text := 'Status: Inserção';
 end;
end;

procedure TfrmHora.Button1Click(Sender: TObject);
begin
 dmRD.cdsHoraItem.Edit;
end;

procedure TfrmHora.actFecharExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmHora.BitBtn1Click(Sender: TObject);
begin
 with dmRD do
 begin
  cdsHoraItem.IndexFieldNames  := 'HORAID;HORAINI';
  cdsHoraItem.SetRangeStart;
  cdsHoraItem['HORAID']        := cdsHoraHoraId.Value;
  cdsHoraItem['HORAINI'] := DateTimePicker1.Date;
  cdsHoraItem.SetRangeEnd;
  cdsHoraItem['HORAID']        := cdsHoraHoraId.Value;
  cdsHoraItem['HORAINI'] := DateTimePicker2.Date+1;
  cdsHoraItem.ApplyRange;
 end;
end;

procedure TfrmHora.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    SelectNext( Screen.ActiveControl,True,True );
end;

procedure TfrmHora.actImprimirHorasExecute(Sender: TObject);
begin
 frmParImpHora := TfrmParImpHora.Create(nil);
 try
  frmParImpHora.RelatorioId := 1;
  frmParImpHora.ShowModal;
 finally
  FreeAndNil( frmParImpHora )
 end;
end;

procedure TfrmHora.ConsultaHoras;
var iSQL : String;
begin
 try
  cdsConferencia.Close;
  iSQL := 'SELECT DISTINCT'+
          '       OS_OSBCOHORA.OSID,'+
          '       OS_OSBCOHORA.DATASERVICO,'+
          '       OS_OSBCOHORA.LIBERADO,'+
          '       OS_OSBCOHORA.TECNICOID,'+
          '       OS_TECNICO.NOME,'+
          '       OS_OSBCOHORA.HORAINI,'+
          '       OS_OSBCOHORA.HORAFIM,'+
          '       OS_OSBCOHORA.USUARIO'+
          '  FROM OS_OSBCOHORA,'+
          '       OS_TECNICO,'+
          '       EF_ENTIDADE'+
          ' WHERE OS_TECNICO.TECNICOID = OS_OSBCOHORA.TECNICOID'+
          '       AND OS_TECNICO.CPF_CNPJ = EF_ENTIDADE.CPFCNPJ'+
          '       AND OS_OSBCOHORA.LIBERADO = 0'+
          '       AND EF_ENTIDADE.ENTIDADEID = '+ dmRD.cdsHoraHORAID.AsString+
          '       AND OS_OSBCOHORA.DATASERVICO BETWEEN '+ QuotedStr( DateToStr( DateTimePicker3.DateTime ) )+
          '       AND '+QuotedStr( DateToStr( DateTimePicker4.DateTime ) )+
          ' ORDER BY OS_OSBCOHORA.OSID,OS_OSBCOHORA.DATASERVICO,OS_OSBCOHORA.TECNICOID';

 ExecDynamicProvider(-1, iSQL, cdsConferencia );

 except
  on E : Exception do
     raise Exception.Create(E.message);
 end;
end;

procedure TfrmHora.BitBtn2Click(Sender: TObject);
begin
 ConsultaHoras;
end;

procedure TfrmHora.actanalisarExcelExecute(Sender: TObject);
begin
 if not dmRD.cdsHora.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsHora;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmHora.actanalisarExcelItensExecute(Sender: TObject);
begin
 if not dmRD.cdsHoraItem.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dmRD.dsHoraItem;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados a serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmHora.dbgrdHoraItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 HoldColor := TDBGrid( Sender).Canvas.Brush.Color;
 if ( Column.FieldName = 'OPERACAOID' ) or ( Column.FieldName = 'L_OPERACAO' ) or
    ( Column.FieldName = 'C_SALDOHORAS') or
    ( Column.FieldName = 'VLRSALDO' ) then
    begin
     if dmRD.cdsHoraItemL_OPERACAO.Value = 'D' then
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clRed;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end
     else
        begin
         TDBGrid( Sender).Canvas.Brush.Color := clBlue;
         TDBGrid( Sender).Canvas.Font.Color  := clWhite;
        end;
     end;

 TDBGrid( Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
 TDBGrid( Sender).Canvas.Brush.Color := HoldColor;
end;

end.
