unit u_Contrato;

interface

uses
  Windows, Forms, SysUtils, Extenso, Dialogs, ImgList,
  Controls, Classes, ActnList, XPStyleActnCtrls, ActnMan, fcLabel, Grids,
  DBGrids,  tmbToolEdicaoLista, DBCtrls, StdCtrls, wwcheckbox, ComCtrls,
  wwdbedit,  Wwdotdot, Mask, ToolWin, tmbToolEdicaoBottom, ExtCtrls, ShellApi,
  DBClient, tmbToolEdicaoTop, ActnCtrls, ActnMenus, Graphics, DB,Variants;

type

  TItemContrato = record
    Ano, Parc, Ind : Integer;
    PerIni, PerFim : TDate;
    Pagto          : String;
  end;

  TServico = record
    Cod  : Integer;
    Item : Integer;
    Hist : String;
    Val  : Extended;
  end;

  TAparelho = record
    Tempo, ManCor, ManPre, Tipo : Integer;
    Serie, Modelo : String;
  end;

  TfrmContrato = class(TForm)
    StatusBar: TStatusBar;
    actmngContrato: TActionManager;
    actContrato: TAction;
    actAditivo: TAction;
    actParcelas: TAction;
    actPedido: TAction;
    actAnoContratual: TAction;
    actNfsEmitidas: TAction;
    actAtualIndContrato: TAction;
    actControle: TAction;
    actValores: TAction;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    wwDBComboDlg8: TwwDBComboDlg;
    DBEdit38: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBMemo3: TDBMemo;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    wwDBComboDlg4: TwwDBComboDlg;
    wwDBComboDlg3: TwwDBComboDlg;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    TabSheet3: TTabSheet;
    TabSheet15: TTabSheet;
    Panel6: TPanel;
    DBGrid4: TDBGrid;
    Panel4: TPanel;
    Label9: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    DBEdit8: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBComboDlg5: TwwDBComboDlg;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    Panel3: TPanel;
    tmbEdicaoBottom2: TtmbEdicaoBottom;
    wwCheckBox1: TwwCheckBox;
    PageControl3: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet7: TTabSheet;
    tmbEdtListAparelho: TtmbEdicaoLista;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    tmbEdtListServico: TtmbEdicaoLista;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    tmbEdtListParcela: TtmbEdicaoLista;
    Extenso1: TExtenso;
    TabControl1: TTabControl;
    tmbEdtListPrincipal: TtmbEdicaoLista;
    dbgrdHoras: TDBGrid;
    Splitter1: TSplitter;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    wwDBComboDlg1: TwwDBComboDlg;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    Label29: TLabel;
    DBEdit17: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Action1: TAction;
    wwCheckBox2: TwwCheckBox;
    wwDBComboDlg9: TwwDBComboDlg;
    Label30: TLabel;
    wwCheckBox3: TwwCheckBox;
    wwCheckBox4: TwwCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBComboDlg5CustomDlg(Sender: TObject);
    procedure wwDBComboDlg8CustomDlg(Sender: TObject);
    procedure wwDBComboDlg3CustomDlg(Sender: TObject);
    procedure wwDBComboDlg4CustomDlg(Sender: TObject);
    procedure wwDBComboDlg1CustomDlg(Sender: TObject);
    procedure wwDBComboDlg6CustomDlg(Sender: TObject);
    procedure actContratoExecute(Sender: TObject);
    procedure actAditivoExecute(Sender: TObject);
    procedure actAnoContratualExecute(Sender: TObject);
    procedure actNfsEmitidasExecute(Sender: TObject);
    procedure actPedidoExecute(Sender: TObject);
    procedure actParcelasExecute(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataSetEdicaoLista;
    function DataPeriodo( Data: TDate; Parcela: Integer; DiaFim : Integer = 0 ): TDate;
    procedure GerarParcelasContrato;
  public
    { Public declarations }
    function ExisteFilial(FilialId : Integer ) : String;
  end;

var
  frmContrato: TfrmContrato;

implementation

uses u_dmCM, FuncoesCliente, u_PadraoEdicao, u_dmEF, u_ContratoPedido,
  u_dmGSI;

{$R *.DFM}

function TfrmContrato.DataPeriodo( Data: TDate; Parcela: Integer;
  DiaFim : Integer = 0 ): TDate;
var
  Dia, Mes, Ano : Word;
begin
  Result := Date;
  DecodeDate( Data, Ano, Mes, Dia );
  Mes := Mes + Parcela;

  if Mes > 12 then
  begin
    Mes := Mes - 12;
    Ano := Ano + 1;
  end;

  if DiaFim <> 0 then
  begin
    Dia := DiaFim;
    if ( Mes = 2 ) and ( Dia > 28 ) then
       Dia := 28
    else if ( Mes in [4, 6, 9, 11] ) and ( Dia > 30 ) then
       Dia := 30;

    if not ( ( ( Mes = 2 ) and ( Dia in [28, 29] ) ) or
             ( ( Mes in [1, 3, 5, 7, 8, 10, 12] ) and ( Dia = 31 ) ) or
             ( ( Mes in [4, 6, 9, 11] ) and ( Dia = 30 ) ) ) then
       Mes := Mes + 1;
  end;

  if Mes > 12 then
  begin
    Mes := Mes - 12;
    Ano := Ano + 1;
  end;

  while True do
  begin
    try
      Result := EncodeDate( Ano, Mes, Dia );
    except
      Dia := Dia - 1;
      Continue;
    end;
    Break;
  end;
end;

procedure TfrmContrato.GerarParcelasContrato;
var i,ParcelaId : Integer;
    EmpresaId,
    ContratoId,
    AnoId : Integer;
begin
 if dmCM.cdsContratoCONTRATOID.IsNull then
    exit;

 if ( dmCM.cdsContratoCANCELADO.Value = 1 ) then
    raise Exception.Create( 'O Contrato está CANCELADO! Não é permitido gerar Parcelas!' );

 EmpresaId  := dmCM.cdsContratoAnoEMPRESAID.AsInteger;
 ContratoId := dmCM.cdsContratoAnoCONTRATOID.AsInteger;
 AnoId      := dmCM.cdsContratoAnoANOID.AsInteger;

 for i := 0 to dmCM.cdsContratoAnoQTDPARCELA.AsInteger - 1 do
 begin
   ParcelaId := i +1;
   if ( dmCM.cdsContratoParc.Locate( 'EMPRESAID;CONTRATOID;ANOID;PARCELAID',VarArrayOF([ dmCM.cdsContratoAnoEMPRESAID.AsInteger,
                                          dmCM.cdsContratoAnoCONTRATOID.AsInteger,dmCM.cdsContratoAnoANOID.AsInteger, ParcelaId ]), [] ) ) then
      begin
       if StrToInt( FormatDateTime( 'dd', dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime ) ) = 1 then
          begin
           if DataPeriodo( dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime, i, 31 ) = dmCM.cdsContratoParcPERIODOINICIAL.AsInteger then
              Continue
           else
              dmCM.cdsContratoParc.Edit;
          end
       else
          begin
           if DataPeriodo( dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime, i,
                           StrToInt( FormatDateTime( 'dd', dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime - 1 ) ) ) = dmCM.cdsContratoParcPERIODOFINAL.AsInteger then
              Continue
           else
              dmCM.cdsContratoParc.Edit;
          end
      end
   else
      dmCM.cdsContratoParc.Insert;

   dmCM.cdsContratoParcPARCELAID.Value           := ParcelaId;
   dmCM.cdsContratoParcPERIODOINICIAL.AsDateTime := DataPeriodo( dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime, i );

   if StrToInt( FormatDateTime( 'dd', dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime ) ) = 1 then
      dmCM.cdsContratoParcPERIODOFINAL.AsDateTime := DataPeriodo( dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime, i, 31 )
   else
      dmCM.cdsContratoParcPERIODOFINAL.AsDateTime := DataPeriodo( dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime, i,
                                                     StrToInt( FormatDateTime( 'dd', dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime - 1 ) ) );
   dmCM.cdsContratoParcVLRCONTRATO.Value          := dmCM.cdsContratoAnoVLRCONTRATOMENSAL.Value;
   dmCM.cdsContratoParcGERADA.Value               := 0;
   dmCM.cdsContratoParc.Post;
   dmCM.cdsContratoAno.Locate('EMPRESAID;CONTRATOID;ANOID', VarArrayOf([EmpresaId,ContratoId,AnoId ]),[] );
 end;
end;


procedure TfrmContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FinalFormulario( dmCM.cdsContrato,' do Contrato ') then
    Action := caNone
 else
    begin
     Action       := caFree;
     frmContrato  := Nil;
    end;
end;

procedure TfrmContrato.SetDataSetEdicaoLista;
begin
 tmbEdtListPrincipal.TtmbClassOwnerEspec    := TFrmPadraoEdicao;
 tmbEdtListPrincipal.TtmbFormOwnerEspec     := FrmPadraoEdicao;
 tmbEdtListServico.TtmbClassOwnerEspec      := TFrmPadraoEdicao;
 tmbEdtListServico.TtmbFormOwnerEspec       := FrmPadraoEdicao;
 tmbEdtListAparelho.TtmbClassOwnerEspec     := TFrmPadraoEdicao;
 tmbEdtListAparelho.TtmbFormOwnerEspec      := FrmPadraoEdicao;
 tmbEdtListParcela.TtmbClassOwnerEspec      := TFrmPadraoEdicao;
 tmbEdtListParcela.TtmbFormOwnerEspec       := FrmPadraoEdicao;
end;


procedure TfrmContrato.FormCreate(Sender: TObject);
begin
 SetDataSetEdicaoLista;
end;

procedure TfrmContrato.wwDBComboDlg5CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsFilial,'FILIALID',dmCM.cdsContratoFILIALID.AsString ) ;
 ExecLoockupRetorno( dmCM.cdsContrato,'FILIALID','FILIALID' );
end;

procedure TfrmContrato.wwDBComboDlg8CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID',dmCM.cdsContratoCLIENTEID.AsString );
 ExecLoockupRetorno( dmCM.cdsContrato,'CLIENTEID','ENTIDADEID' );
end;

procedure TfrmContrato.wwDBComboDlg3CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEntidade,'ENTIDADEID',dmCM.cdsContratoTRANSPORTADORID.AsString );
 ExecLoockupRetorno( dmCM.cdsContrato,'TRANSPORTADORID','ENTIDADEID');
end;

procedure TfrmContrato.wwDBComboDlg4CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsNaturezaOp,'NATUREZAOPID',dmCM.cdsContratoNATUREZAOPID.AsString );
 ExecLoockupRetorno( dmCM.cdsContrato,'NATUREZAOPID','NATUREZAOPID' );
end;

procedure TfrmContrato.wwDBComboDlg1CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsObservacao,'OBSERVACAOID',dmCM.cdsContratoOBSERVACAOID.AsString );
 ExecLoockupRetorno( dmCM.cdsContrato,'OBSERVACAOID','OBSERVACAOID' );
end;

procedure TfrmContrato.wwDBComboDlg6CustomDlg(Sender: TObject);
begin
 ExecLoockupPesquisa( dmEF.dsEmpresa,'EMPRESAID',dmCM.cdsContratoEMPRESAID.AsString  );
 ExecLoockupRetorno( dmCM.cdsContrato,'EMPRESAID','EMPRESAID');
end;

procedure TfrmContrato.actContratoExecute(Sender: TObject);
var FileName  : String;
    Cidade    : String;
    {DataAtual : TDateTime;}
begin
// DataAtual := pCnnMain.AppServer.iServerDate;
 with dmCM do
 begin
  if cdsContratoAno.IsEmpty then
     raise Exception.Create( 'Contrato não tem Ano contratual !' );

  cdsContratoAno.First;
  FileName := ExtractFilePath(Application.ExeName) + 'Contrato\' +
              FormatFloat( '0000', cdsContratoAnoCONTRATOID.Value ) + '-' + cdsContratoAnoANOID.AsString + '.rtf';

  if FileExists( FileName ) then
     begin
       ShellExecute( Application.MainForm.Handle, nil, PChar( FileName ), '', '', SW_SHOWMAXIMIZED );
       Exit;
     end;
//  EkRTF1.InFile  := ExtractFilePath(Application.ExeName) + 'Contrato\Contrato.rtf';
//  EkRTF1.OutFile := FileName;
  if Application.MessageBox( 'Usar Contrato Padrão ?', 'Confirmação',
                             MB_YESNO + MB_ICONQUESTION ) = IDNO then
     begin
      OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + 'Contrato\';
      if OpenDialog1.Execute then
//         EkRTF1.InFile := OpenDialog1.FileName
//      else
         Exit;
     end;

  Cidade := ExisteFilial( cdsContratoFILIALID.AsInteger );
//  EkRTF1.VarByName('CONTRATO').AsString := 'TMBC-' + FormatFloat( '0000', cdsContratoCONTRATOID.Value ) + '/' + FormatDateTime('YY', StrToDate('01/01/' + cdsContratoAnoANOID.AsString));
//  EkRTF1.VarByName('DATA').AsString     := Cidade + FormatDateTime( ', dd "de" mmmm "de" yyyy', DataAtual );
//  EkRTF1.VarByName('ANO').AsString      := FormatDateTime( 'yyyy', DataAtual );
//  EkRTF1.ExecuteOpen( [cdsContrato, dmEF.cdsFilial, cdsContratoAno], SW_SHOWMAXIMIZED );
 end;
end;

function TfrmContrato.ExisteFilial(FilialId : Integer ): String;
var cds  : TClientDataSet;
    iSQL : String;
begin
 Result := '';
 cds  := nil;
 try
  iSQL := 'SELECT EF_FILIAL.CIDADE'+
          '  FROM EF_FILIAL'+
          ' WHERE EF_FILIAL.FILIALID = '+ IntToStr( FilialId );
  ExecDyNamicProvider(-1,iSQL,cds);
  if not cds.isEmpty then
     Result := cds.FieldByName('CIDADE').AsString;
 finally
  FreeAndNil(cds);
 end;
end;

procedure TfrmContrato.actAditivoExecute(Sender: TObject);
var
  FileName, Cidade : String;
begin
  with dmCM do
  begin
    if cdsContratoAno.IsEmpty then
       raise Exception.Create( 'Contrato não tem Ano contratual !' );

    cdsContratoAno.First;
    cdsContratoAditivo.Insert;
    cdsContratoAditivo.Post;
    FileName := ExtractFilePath(Application.ExeName) + 'Contrato\Aditivo\' +
                FormatFloat( '0000', cdsContratoCONTRATOID.Value ) + '-' +
                cdsContratoAnoANOID.AsString + '-' + FormatDateTime( 'dd-mm-yyyy',cdsContratoAditivoDATAADITIVO.AsDateTime ) + '-' +
                cdsContratoAditivoADITIVOID.AsString + '.rtf';
    if FileExists( FileName ) then
       begin
        ShellExecute( Application.MainForm.Handle, nil, PChar( FileName ), '', '', SW_SHOWMAXIMIZED );
        Exit;
       end;
//    EkRTF2.InFile  := ExtractFilePath(Application.ExeName) + 'Contrato\Aditivo\Aditivo.rtf';
//    EkRTF2.OutFile := FileName;
    if Application.MessageBox( 'Usar Aditivo Padrão ?', 'Confirmação',
                               MB_YESNO + MB_ICONQUESTION ) = IDNO then
       begin
        OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + 'Contrato\Aditivo';
        if OpenDialog1.Execute then
//           EkRTF2.InFile := OpenDialog1.FileName
//        else
           Exit;
       end;

    cdsContratoAno.First;
    Cidade := ExisteFilial( cdsContratoFILIALID.AsInteger );
    cdsValorIndice.Open;
    cdsValorIndice.Last;

{    with EkRTF2 do
    begin
     VarByName('RAZAO').AsString     := cdsContratoL_NOME_CLIENTE.Value;
     VarByName('ENDERECO').AsString  := cdsContratoL_ENDERECO.Value;
     VarByName('CIDADE').AsString    := cdsContratoL_CIDADE.AsString;
     VarByName('CEP').AsString       := cdsContratoL_CEPID.AsString;
     VarByName('SIGLAUF').AsString   := cdsContratoL_SIGLAUFID.Value;
     VarByName('ADITIVO').AsString   := 'TMBA-' + FormatFloat( '0000', cdsContratoCONTRATOID.Value ) + '/' + FormatDateTime('YY', StrToDate('01/01/' +cdsContratoAnoANOID.AsString))    + '-' + cdsContratoAditivoADITIVOID.AsString;
     VarByName('CONTATO').AsString   := cdsContratoCONTATO.Value;

     // Verifica se é ou não contrato antigo
     if ( Trim( cdsContratoCONTRATOANTIGOID.Value) = '' ) then
        VarByName('CONTRATO').AsString  := 'TMBC-' +FormatFloat( '0000', cdsContratoCONTRATOID.Value ) + '/' + FormatDateTime('YY', StrToDate('01/01/' +cdsContratoAnoANOID.AsString))
     else
        VarByName('CONTRATO').AsString  := cdsContratoCONTRATOANTIGOID.AsString;

     VarByName('DATA').AsString := Cidade + FormatDateTime( ', dd "de" mmmm "de" yyyy', Date );
     cdsContratoAno.Last;
     cdsContratoAno.Prior;

     VarByName('CONTRATOFIM').AsString := FormatDateTime( 'dd/mm/yyyy', cdsContratoAnoDATAFIMCONTRATO.AsDateTime );
     VarByName('VLRANTERIOR').AsString := FormatFloat( '###,###,##0.00',cdsContratoAnoVLRCONTRATOMENSAL.AsFloat );
     cdsContratoAno.Last;

     Extenso1.Numero               := cdsContratoAnoVLRCONTRATOMENSAL.AsString;
     VarByName('VLRREAL').AsString := FormatFloat( '###,###,##0.00', cdsContratoAnoVLRCONTRATOMENSAL.AsFloat ) +
                                                 ' (' + Extenso1.Extenso + ') ';

     VarByName('CONTRATOVIGENTE').AsString := FormatDateTime( 'dd/mm/yyyy', cdsContratoAnoDATAINICIOCONTRATO.AsDateTime ) + ' - ' + FormatDateTime( 'dd/mm/yyyy', cdsContratoAnoDATAFIMCONTRATO.AsDateTime );
     VarByName('INDICE').AsString          := cdsContratoAnoL_DESCRICAOINDICE.AsString;
     VarByName('VLRINDICE').AsString       := FormatFloat( '###,###,##0.00', cdsValorIndiceVLRINDICE.AsFloat ) + '%';
     VarByName('VLRREAL2').AsString        := FormatFloat( '###,###,##0.00', cdsContratoAnoVLRCONTRATOMENSAL.AsFloat );
     cdsValorIndice.Close;
     ExecuteOpen( [cdsContrato], SW_SHOWMAXIMIZED );
    end;}
  end;
end;

procedure TfrmContrato.actAnoContratualExecute(Sender: TObject);
var ParamPesqServico, ParamPesqInd : String;
    ICont : TItemContrato;
    Serv  : array of TServico;
    Apar  : array of TAparelho;
    i     : Integer;
begin
 if Application.MessageBox( 'Gerar novo Ano Contratual ?', 'Confirmação!!!', MB_YESNO + MB_ICONQUESTION ) = mrNo then
    Exit;

 if ( dmCM.cdsContratoAnoPERIODOCONCLUIDO.Value = 0 ) and ( not dmCM.cdsContratoAno.Bof ) then
    begin
     MessageDlg( 'Ano Contratual ' + dmCM.cdsContratoAnoANOID.AsString +
                 ' ainda não concluído', mtError, [mbOK], 0 );
     Exit;
    end;

 dmCM.cdsContratoAno.Last;

 ParamPesqInd := 'CM_INDCONTRATO.INDCONTRATOID = ' + dmCM.cdsContratoAnoINDCONTRATOID.AsString;
 GerarPesquisa( dmCM.cdsIndContrato, ParamPesqInd );

 dmCM.cdsValorIndice.Open;
 dmCM.cdsValorIndice.Last;

 ICont.Parc   := dmCM.cdsContratoAnoQTDPARCELA.AsInteger;
 ICont.Ind    := dmCM.cdsContratoAnoINDCONTRATOID.AsInteger;
 ICont.Ano    := StrToInt( FormatDateTime( 'yyyy', Date ) );
 ICont.Pagto  := dmCM.cdsContratoAnoPAGAMENTO.Value;
 ICont.PerIni := dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsCurrency + 365;
 ICont.PerFim := DataPeriodo( dmCM.cdsContratoAnoDATAFIMCONTRATO.AsDateTime + 365, 0 );

 if ICont.Ano = dmCM.cdsContratoAnoANOID.Value then
    Inc( ICont.Ano );

 SetLength( Apar, dmCM.cdsContratoApar.RecordCount );
 dmCM.cdsContratoApar.First;
 for i := 0 to Length( Apar ) - 1 do
 begin
  Apar[i].Serie  := dmCM.cdsContratoAparSERIEID.Value;
  Apar[i].Modelo := dmCM.cdsContratoAparMODELOID.Value;
  Apar[i].Tipo   := dmCM.cdsContratoAparTIPOCONTRATOID.AsInteger;
  Apar[i].Tempo  := dmCM.cdsContratoAparHORASESPERA.AsInteger;
  Apar[i].ManCor := dmCM.cdsContratoAparCORRETIVAID.AsInteger;
  Apar[i].ManPre := dmCM.cdsContratoAparPREVENTIVAID.AsInteger;
  dmCM.cdsContratoApar.Next;
 end;

 SetLength( Serv, dmCM.cdsContratoServ.RecordCount );
 dmCM.cdsContratoServ.First;
 for i := 0 to Length( Serv ) - 1 do
 begin
  Serv[i].Cod  := dmCM.cdsContratoServSERVICOID.AsInteger;
  Serv[i].Val  := dmCM.cdsContratoServVLRSERVICO.Value * ( 1 + dmCM.cdsValorIndiceVLRINDICE.AsCurrency / 100 );
  Serv[i].Item := dmCM.cdsContratoServSERVICOID.AsInteger;
//  Serv[i].Hist := TStringList.Create;

  ParamPesqServico := ' EF_SERVICO.EMPRESAID = ' + dmCM.cdsContratoServEMPRESAID.AsString +
                      ' AND EF_SERVICO.SERVICOID = ' + dmCM.cdsContratoServSERVICOID.AsString;
  GerarPesquisa( dmEF.cdsServico, ParamPesqServico );
  Serv[i].Hist := dmEF.cdsServicoDESCRICAOCOMPLETA.Value;
  dmCM.cdsContratoServ.Next;
 end;

 dmCM.cdsContratoAno.Insert;
 dmCM.cdsContratoAnoANOID.Value                   := ICont.Ano;
 dmCM.cdsContratoAnoQTDPARCELA.Value              := ICont.Parc;
 dmCM.cdsContratoAnoINDCONTRATOID.Value           := ICont.Ind;
 dmCM.cdsContratoAnoDATAINICIOCONTRATO.AsDateTime := ICont.PerIni;
 dmCM.cdsContratoAnoDATAFIMCONTRATO.AsDateTime    := ICont.PerFim;
 dmCM.cdsContratoAnoPAGAMENTO.Value               := ICont.Pagto;
 dmCM.cdsContratoAno.Post;

 for i := 0 to Length( Apar ) - 1 do
 begin
  dmCM.cdsContratoApar.Insert;
  dmCM.cdsContratoAparSERIEID.Value         := Apar[i].Serie;
  dmCM.cdsContratoAparMODELOID.Value        := Apar[i].Modelo;
  dmCM.cdsContratoAparTIPOCONTRATOID.Value  := Apar[i].Tipo;
  dmCM.cdsContratoAparHORASESPERA.Value     := Apar[i].Tempo;

  if Apar[i].ManCor > 0 then
     dmCM.cdsContratoAparCORRETIVAID.Value  := Apar[i].ManCor;
  if Apar[i].ManPre > 0 then
     dmCM.cdsContratoAparPREVENTIVAID.Value := Apar[i].ManPre;

  dmCM.cdsContratoApar.Post;
 end;

 for i := 0 to Length( Serv ) - 1 do
 begin
  dmCM.cdsContratoServ.Insert;
  dmCM.cdsContratoServSERVICOID.Value  := Serv[i].Cod;
  dmCM.cdsContratoServITEMID.Value      := Serv[i].Item;
  dmCM.cdsContratoServVLRSERVICO.Value := Serv[i].Val;
  dmCM.cdsContratoServHISTORICO.Value  := Serv[i].Hist;
  dmCM.cdsContratoServ.Post;
  dmCM.cdsContratoAno.Last;
 end;

// GerarParcelasContrato; Solicitacao da Martha 14/09/2005

 SetLength( Serv, 0 );
 SetLength( Apar, 0 );

 MessageDlg('Novo ano contratual gerado com sucesso!', mtInformation, [mbOK], 0 );
end;

procedure TfrmContrato.actNfsEmitidasExecute(Sender: TObject);
begin
 dmCM.shdcnnCM.AppServer.IVerifParcEmitidas;
end;

procedure TfrmContrato.actPedidoExecute(Sender: TObject);
begin
 Application.CreateForm( TfrmContratoPedido, frmContratoPedido );
 frmContratoPedido.Show;
end;

procedure TfrmContrato.actParcelasExecute(Sender: TObject);
begin
 GerarParcelasContrato;
end;

procedure TfrmContrato.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var HoldColor : TColor;
begin
 if ( dmCM.cdsContratoParcGERADA.AsInteger = 1 )  or not dmCM.cdsContratoParcPDSID.IsNull or
    not dmCM.cdsContratoParcNFSID.IsNull then
    begin
     HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
     TDBGrid( Sender ).Canvas.Font.Color  := clWhite;
     TDBGrid( Sender ).Canvas.Brush.Color := clTeal;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end
 else
    begin
     HoldColor := TDBGrid( Sender ).Canvas.Brush.Color;
     TDBGrid( Sender ).Canvas.Font.Color  := clBlack;
     TDBGrid( Sender ).DefaultDrawColumnCell(Rect, DataCol, Column, State);
     TDBGrid( Sender ).Canvas.Brush.Color := HoldColor;
    end;
end;

procedure TfrmContrato.FormShow(Sender: TObject);
begin
 if dmCM.cdsContratoCANCELADO.AsInteger = 1 then
    begin
     if dmCM.cdsContrato.State = dsedit then
        dmCM.cdsContrato.Cancel;
     tmbEdtListPrincipal.Enabled := False;
     tmbEdtListServico.Enabled   := False;
     tmbEdtListParcela.Enabled   := False;
     tmbEdtListAparelho.Enabled  := False;
     MessageDlg('Atenção! Este contrato está Cancelado! Não é possível alterar informações!',mtWarning,[mbok],0);
    end;
end;

procedure TfrmContrato.Action1Execute(Sender: TObject);
begin
 if dmCM.cdsContratoCANCELADO.Value = 1 then
    if CheckSenha( dmGsi.UsuarioAtivo,'Contrato de Manutenção','Abrir Contrato Cancelado!',true ) then
       begin
        dmCM.cdsContrato.Edit;
        dmCM.cdsContratoCANCELADO.Value := 0;
        dmCM.cdsContrato.Post;
       end;
end;

end.
