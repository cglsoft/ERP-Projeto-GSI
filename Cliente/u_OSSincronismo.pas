unit u_OSSincronismo;

interface

uses
  Windows, Forms, Messages, SysUtils, DB, DBClient, StdCtrls, Mask, Controls,
  Classes, ActnList, XPStyleActnCtrls, ActnMan, ImgList, fcStatusBar, ActnCtrls,
  ToolWin, ComCtrls;

type
  TfrmOSSincronismo = class(TForm)
    fcstbarStatus: TfcStatusBar;
    imglstGeral: TImageList;
    actmngGeral: TActionManager;
    actRecuperarOS: TAction;
    actFechar: TAction;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    mktOS: TMaskEdit;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    mmLog: TMemo;
    ckbxFechOS: TCheckBox;
    Memo1: TMemo;
    procedure actFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actRecuperarOSExecute(Sender: TObject);
  private
    procedure InserirOSSincronismo( cdsOFF : TClientDataSet;
        ContratoID, TermoContrato : String; chkFechOS : Boolean );
    procedure InserirReg( ds : TDataSet; var cds : TClientDataSet;
     Bloqueado : Integer = 0 );
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOSSincronismo: TfrmOSSincronismo;

implementation

uses FuncoesCliente, u_dmOS, u_dmOFFLine, u_PrincipalOFFLine;

{$R *.dfm}

procedure TfrmOSSincronismo.InserirReg( ds : TDataSet; var cds : TClientDataSet;
 Bloqueado : Integer = 0 );
var sNmPeca : String;
    x : Integer;
begin
 while not ds.Eof do
 begin
  cds.Insert;
  for x := 0 to ds.FieldCount - 1 do
  begin
   sNmPeca := ds.Fields[x].FieldName;

   if cds.FindField( sNmPeca ) <> nil then
      cds.FieldByName(sNmPeca).AsVariant := ds.FieldByName(sNmPeca).AsVariant;
  end;

  if Bloqueado = 1 then
     cds.FieldByName('BLOQUEADO').AsInteger := 1;

 cds.Post;
 ds.Next;
 end;
end;

procedure TfrmOSSincronismo.InserirOSSincronismo( cdsOFF : TClientDataSet;
 ContratoID, TermoContrato : String; chkFechOS : Boolean );
var sNmOS : String;
    i  : Integer;
    ds : TDataSet;
begin
 dmOFFLine.cdsOS.Insert;

 dmOFFLine.cdsOSL_CONTRATOID.Value    := ContratoID;
 dmOFFLine.cdsOSL_TERMOCONTRATO.Value := TermoContrato;

 for i := 0 to cdsOFF.FieldCount - 1 do
 begin
  sNmOS := cdsOFF.Fields[i].FieldName;

  case cdsOFF.Fields[i].DataType of
  ftTimeStamp : dmOFFLine.cdsOS.FieldByName(sNmOS).AsDateTime := cdsOFF.FieldByName(sNmOS).AsDateTime;
  ftDataSet   : begin
                 ds := ( TDataSetField( cdsOFF.Fields[i] ) ).NestedDataSet;

                 if chkFechOS then
                    begin
                     if      UpperCase( sNmOS ) = UpperCase( 'sqldtsOsHora' ) then
                             InserirReg( ds, dmOFFLine.cdsOsHora, 1 )
                     else if UpperCase( sNmOS ) = UpperCase( 'sqldtsOsDefeito' ) then
                             InserirReg( ds, dmOFFLine.cdsOSDefeito, 1 )
                     else if UpperCase( sNmOS ) = UpperCase( 'sqldtsOsMaterial' ) then
                             InserirReg( ds, dmOFFLine.cdsOSMaterial, 1 )
                     else if UpperCase( sNmOS ) = UpperCase( 'sqldtsOsOCOperacional' ) then
                             InserirReg( ds, dmOFFLine.cdsOSOCOperacional );
                    end;
                end;
  else
     dmOFFLine.cdsOS.FieldByName(sNmOS).AsVariant := cdsOFF.FieldByName(sNmOS).AsVariant;
  end;
 end;

 dmOFFLine.cdsOS.Post;
end;

procedure TfrmOSSincronismo.actRecuperarOSExecute(Sender: TObject);
var cdsOFF, cdsOFF_A, cdsOFF_B : TClientDataSet;
  cdsData : OleVariant;
  i: Integer;
begin
 if not ckbxFechOS.Checked then
    begin
     if Application.MessageBox( 'Opção de fechamento final da OS não asssinalado. Deseja continuar?', 'Confirmação',
                                MB_YESNO + MB_ICONQUESTION ) = IDNO then
     Exit;
    end;

 dmOFFLine.cdsOS.Tag           := 1;
 dmOFFLine.cdsAdiantamento.Tag := 1;
 dmOFFLine.cdsBancoHora.Tag    := 1;

 dmOFFLine.cdsConfig.Open;
 Screen.Cursor := crHourGlass;
 cdsOFF   := TClientDataSet.Create( Self );
 cdsOFF_A := TClientDataSet.Create( Self );
 cdsOFF_B := TClientDataSet.Create( Self );

 try
  try
   if not pCnnMain.Connected then
      pCnnMain.Connected := True;

   cdsData := dmOS.shdcnnOS.AppServer.IOSSincronismo( mktOS.Text, dmOFFLine.UsuarioOFFLine );

   cdsOFF.Data   := cdsData[0];
   cdsOFF_A.Data := cdsData[1];
   cdsOFF_B.Data := cdsData[2];

   for i := 0 to cdsOFF.FieldCount -1 do
    mmLog.Lines.Add( cdsOFF.Fields[i].DisplayName + ' : ' + cdsOFF.Fields[i].AsString );

   InserirOSSincronismo( cdsOFF, cdsData[3], cdsData[4], ckbxFechOS.Checked );

   // Processar para fechamento final
   if ckbxFechOS.Checked then
      begin
       for i := 0 to cdsOFF_A.FieldCount -1 do
           mmLog.Lines.Add( cdsOFF_A.Fields[i].DisplayName + ' : ' + cdsOFF_A.Fields[i].AsString );

       dmOFFLine.cdsAdiantamento.Tag := 1;

       InserirReg( cdsOFF_A, dmOFFLine.cdsAdiantamento, 1 );

       dmOFFLine.cdsAdiantamento.Tag := 0;

       for i := 0 to cdsOFF_B.FieldCount -1 do
           mmLog.Lines.Add( cdsOFF_B.Fields[i].DisplayName + ' : ' + cdsOFF_B.Fields[i].AsString );

       InserirReg( cdsOFF_B, dmOFFLine.cdsBancoHora, 1 );

       dmOS.shdcnnOS.AppServer.IOSSincronismoOK( mktOS.Text, dmOFFLine.UsuarioOFFLine );
      end;

   frmPrincipalOFFLine.TimerBackupXMLDespesaALL( ALL );

   if pCnnMain.Connected then
      pCnnMain.Connected := False;

  except
  on E: Exception do
     raise Exception.Create( 'Error Sincronismo OFFLINE cancelado. Log = ' + E.Message );
  end;

 finally
  dmOFFLine.cdsOS.Tag           := 0;
  dmOFFLine.cdsAdiantamento.Tag := 0;
  dmOFFLine.cdsBancoHora.Tag    := 0;

  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmOSSincronismo.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmOSSincronismo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 frmOSSincronismo := Nil;
end;

end.
