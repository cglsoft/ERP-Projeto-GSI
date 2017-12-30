unit u_ProcessoUtil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, ImgList, ExtCtrls, PnAjustaGrid,
  ActnCtrls, ActnMenus, ToolWin, ComCtrls, DBCtrls, Mask, wwdbedit, Wwdotdot,
  StdCtrls, DB, DBClient, Buttons;

type
  TfrmProcessoUtil = class(TForm)
    imglstRDV: TImageList;
    actmngRDV: TActionManager;
    actFechar: TAction;
    actCopiar: TAction;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    mmLog: TMemo;
    Splitter1: TSplitter;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBEdit3: TDBEdit;
    Label22: TLabel;
    procedure actCopiarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
  private
    procedure GravarEspelho;
    { Private declarations }
  public
    { Public declarations }
  end;

  const xml_CpyFileProcesso     = 'PROCESSO.XML';

var
  frmProcessoUtil: TfrmProcessoUtil;

implementation

uses FuncoesCliente, u_dmIT, FuncoesDSI;

{$R *.dfm}

procedure TfrmProcessoUtil.GravarEspelho;
var ParamPesquisa : String;
begin
 try
  ParamPesquisa := 'IT_PROCESSO.PROCESSOID = ' + dmIT. cdsProcessoPROCESSOID.AsString + ' AND ' +
                   'IT_PROCESSO.TIPOPROCESSOID = ' + dmIT.cdsProcessoTIPOPROCESSOID.AsString + ' AND ' +
                   'IT_PROCESSO.DATAPROCESSOID = ' + QuotedStr( dmIT.cdsProcessoDATAPROCESSOID.AsString );
  GerarPesquisa( dmIT.cdsProcesso, ParamPesquisa );

  TimerBackupXML( xml_CpyFileProcesso, dmIT.cdsProcesso );

 except
 on E:Exception do
    raise Exception.Create( E.Message );
 end;
end;

procedure TfrmProcessoUtil.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmIT.dsTipoProcesso,'TIPOPROCESSOID', dmIT.cdsProcessoTIPOPROCESSOID.AsString );
 ExecLoockupRetorno( dmIT.cdsProcesso,'TIPOPROCESSOID','TIPOPROCESSOID' );
end;

procedure TfrmProcessoUtil.actCopiarExecute(Sender: TObject);
var cdsP : TClientDataSet;
    ds : TDataSet;
    x,y : Integer;
    sNmProc : string;
begin
 cdsP := TClientDataSet.Create( Self );

 OpenXMLFile( True, xml_CpyFileProcesso, '', cdsP );

 try
  try
   for x := 3 to dmIT.cdsProcesso.FieldCount - 1 do
   begin
    sNmProc := dmIT.cdsProcesso.Fields[x].FieldName;

    mmLog.Lines.Add( dmIT.cdsProcesso.FieldByName( sNmProc ).DisplayName + ' : ' + cdsP.FieldByName( sNmProc ).AsString );

    case dmIT.cdsProcesso.Fields[x].DataType of
    ftBCD     : begin
                 if ( not cdsP. FieldByName( sNmProc ).IsNull ) then
                    if ( cdsP.FieldByName( sNmProc ).AsCurrency > 0 ) then
                       dmIT.cdsProcesso.FieldByName( sNmProc ).AsVariant :=  cdsP.FieldByName( sNmProc ).AsVariant;
                end;

    ftDataSet : begin
                 ds := ( TDataSetField( cdsP.FieldByName( sNmProc ) ) ).NestedDataSet;
                 while not ds.Eof do
                 begin
                  dmIT.cdsProcessoItem.Insert;
                  for y := 5 to dmIT.cdsProcessoItem.FieldCount - 1 do
                  begin
                   sNmProc := dmIT.cdsProcessoItem.Fields[y].FieldName;
                   dmIT.cdsProcessoItem.FieldByName( sNmProc ).AsVariant :=  ds.FieldByName( sNmProc ).AsVariant;
                  end;
                  dmIT.cdsProcessoItem.Post;

                  ds.Next;
                 end;

                end;
    else
                begin
                 if sNmProc <> 'DATAPROCESSOID' then
                    if ( not cdsP.FieldByName( sNmProc ).IsNull ) then
                       dmIT.cdsProcesso.FieldByName( sNmProc ).AsVariant :=  cdsP.FieldByName( sNmProc ).AsVariant;
                end;
    end;


   end;

   dmIT.cdsProcesso.Post;

  except
  on E:Exception do
     raise Exception.Create( E.Message );
  end;

 finally
  FreeAndNil( cdsP );
  MessageDlg( 'Processo salvo com sucesso.', mtInformation, [mbOK], 0 );
 end;
end;

procedure TfrmProcessoUtil.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmProcessoUtil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 frmProcessoUtil := Nil;
end;

procedure TfrmProcessoUtil.FormCreate(Sender: TObject);
begin
 GravarEspelho;
 dmIT.cdsProcesso.Insert;
end;

end.
