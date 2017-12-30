unit u_RelOSNovoB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, jpeg, DBClient;

type
  TfrmRelOSNovoB = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    qrsubdetalOSHora: TQRSubDetail;
    qrsubdetalDespesas: TQRSubDetail;
    QRGroupCust: TQRGroup;
    QRShape27: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText25: TQRDBText;
    QrlEndereco: TQRLabel;
    QrlBairro: TQRLabel;
    QrlEmail: TQRLabel;
    QrlTelefone: TQRLabel;
    QrlFax: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape22: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape19: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRShape21: TQRShape;
    QRShape4: TQRShape;
    QRLabel23: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QrlHESP: TQRLabel;
    QrlHTRANSP: TQRLabel;
    QrlHTRAB: TQRLabel;
    QRShape20: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape24: TQRShape;
    QRLabel1: TQRLabel;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape33: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape34: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape32: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape37: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape38: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape45: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape39: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QrlHOUT: TQRLabel;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRShape18: TQRShape;
    QRShape44: TQRShape;
    QRLabel46: TQRLabel;
    QRBand2: TQRBand;
    QRShape40: TQRShape;
    QRLabel47: TQRLabel;
    QrlDiaria: TQRLabel;
    QRLabel48: TQRLabel;
    QrlRefeicoes: TQRLabel;
    QRLabel49: TQRLabel;
    QrlKM: TQRLabel;
    QRShape62: TQRShape;
    QRDBText21: TQRDBText;
    QRShape63: TQRShape;
    QRLabel50: TQRLabel;
    qrsubdetalOCOperacional: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    GroupFooterBand2: TQRBand;
    QRShape556: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape582: TQRShape;
    QRLabel33: TQRLabel;
    QRShape43: TQRShape;
    QRLabel31: TQRLabel;
    QRShape64: TQRShape;
    QRShape10: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRLabel21: TQRLabel;
    QRShape48: TQRShape;
    QRDBText23: TQRDBText;
    QRShape49: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText24: TQRDBText;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel30: TQRLabel;
    QRDBText26: TQRDBText;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel36: TQRLabel;
    QRImage2: TQRImage;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    procedure PesquisaDadosConfig;
    procedure PesquisaDadosFilial;
    procedure AtualizaReport;
    procedure PesquisaDadosFilialOFF;
    procedure PesquisaDadosConfigOFF;
    { Private declarations }
  public
    { Public declarations }
    TipoRelat : Integer;
  end;

var
  frmRelOSNovoB: TfrmRelOSNovoB;

implementation

uses u_dmOs, u_dmRD, u_dmOFFLine, funcoesCliente, u_dmAS;

{$R *.dfm}

procedure TfrmRelOSNovoB.AtualizaReport;
var i : Integer;
begin
 for i := 0 to ComponentCount - 1 do
 begin
  if ( Components[i] is TQRDBText ) then
     begin
      case TQRDBText( Components[i] ).Tag  of
      1 : TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsOSHora;
      2 : TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsAdiantamento;
      3 : TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsOSOCOperacional;
      else
          TQRDBText( Components[i] ).DataSet  := dmOFFLine.cdsOS;
      end;
     end;

  if ( Components[i] is TQuickRep ) then
     TQuickRep( Components[i] ).DataSet  := dmOFFLine.cdsOS;
 end;

 QRDBRichText1.DataSet           := dmOFFLine.cdsOSOCOperacional;
 qrsubdetalDespesas.DataSet      := dmOFFLine.cdsAdiantamento;
 qrsubdetalOSHora.DataSet        := dmOFFLine.cdsOSHora;
 qrsubdetalOCOperacional.DataSet := dmOFFLine.cdsOSOCOperacional;
end;

procedure TfrmRelOSNovoB.PesquisaDadosFilialOFF;
begin
 if dmOFFLine.cdsFilial.FindKey([dmOFFLine.cdsOsFILIALID.Value]) then
    begin
     QrlEndereco.Caption := dmOFFLine.cdsFilialENDERECO.AsString;
     QrlBairro.Caption   := dmOFFLine.cdsFilialBAIRRO.AsString;
     QrlEmail.Caption    := 'Email: ' + dmOFFLine.cdsFilialEMAIL.AsString;
     QrlFax.Caption      := 'Fax: '   + dmOFFLine.cdsFilialFAX.AsString;
     QrlTelefone.Caption := 'Fone: '  + dmOFFLine.cdsFilialTELEFONE.AsString;
    end
 else
    begin
     QrlEndereco.Caption := '';
     QrlBairro.Caption   := '';
     QrlEmail.Caption    := '';
     QrlFax.Caption      := '';
     QrlTelefone.Caption := '';
    end;
end;

procedure TfrmRelOSNovoB.PesquisaDadosFilial;
var cdsPesq  : TClientDataSet;
    iSQL : String;
begin
 cdsPesq  := nil;
 iSQL := 'SELECT ENDERECO, CEPID, CIDADE, NUMERO, SIGLAUFID, ' +
         ' BAIRRO,EMAIL, '+
         ' EF_FILIAL.FAX,EF_FILIAL.TELEFONE '+
         'FROM '+
          'EF_FILIAL '+
         'WHERE '+
          'EF_FILIAL.FILIALID = '+ dmOS.cdsOsFILIALID.AsString;
 try
  ExecDynamicProvider( -1,iSQL,cdsPesq );

  if not cdsPesq.IsEmpty then
     begin
      QrlEndereco.Caption := Trim( cdsPesq.FieldByName('ENDERECO').AsString ) + ' ' +
                             Trim( cdsPesq.FieldByName('NUMERO').AsString ) + ' ' +
                             Trim( cdsPesq.FieldByName('BAIRRO').AsString );
      QrlBairro.Caption   := FormatFloat( '00000-000;1;',cdsPesq.FieldByName( 'CEPID' ).AsInteger ) + ' - ' +
                             trim( cdsPesq.FieldByName('CIDADE').AsString ) + ' ' +
                             trim( cdsPesq.FieldByName('SIGLAUFID').AsString ) + ' ';

      QrlEmail.Caption    := 'Email: '+cdsPesq.FieldByName('EMAIL').AsString;
      QrlFax.Caption      := 'Fax: '+cdsPesq.FieldByName('FAX').AsString;
      QrlTelefone.Caption := 'Fone: '+cdsPesq.FieldByName('TELEFONE').AsString;
      cdsPesq.Close;
     end
  else
    begin
     QrlEndereco.Caption := '';
     QrlBairro.Caption   := '';
     QrlEmail.Caption    := '';
     QrlFax.Caption      := '';
     QrlTelefone.Caption := '';
    end;
  finally
    FreeAndNil( cdsPesq );
  end;
end;

procedure TfrmRelOSNovoB.PesquisaDadosConfig;
var cds  : TClientDataSet;
    iSQL : String;
begin
 QrlDiaria.Caption    := FormatFloat('###0.00',dmAS.cdsConfigVLRDIARIA.AsFloat);
 QrlRefeicoes.Caption := FormatFloat('###0.00',dmAS.cdsConfigVLRREFEICOES.AsFloat);
 QrlKM.Caption        := FormatFloat('###0.00/Km',dmAS.cdsConfigVLRKM.AsFloat);

 cds  := nil;
 iSQL := ' SELECT PP_CATALOGO.MODELOID,' +
         '       OS_CUSTOHORA.CUSTOHORAID,' +
         '       OS_CUSTOHORA.DESCRICAO,' +
         '       OS_CUSTOHORA.VLRHORATRAB,' +
         '       OS_CUSTOHORA.VLRHORATRANSP,' +
         '       OS_CUSTOHORA.VLRHORAESPERA,' +
         '       OS_CUSTOHORA.VLRHORAOUTROS' +
         '  FROM PP_CATALOGO,' +
         '       OS_CUSTOHORA' +
         ' WHERE PP_CATALOGO.CUSTOHORAID = OS_CUSTOHORA.CUSTOHORAID' +
         '  AND  PP_CATALOGO.MODELOID = ' + QuotedStr( dmOs.cdsOsMODELOID.AsString );

  try
   ExecDynamicProvider( -1,iSQL,cds );

   if not cds.IsEmpty then
      begin
       QrlHTRAB.Caption   := FormatFloat('###0.00/h',cds.FieldByName('VLRHORATRAB').AsFloat);
       QrlHTRANSP.Caption := FormatFloat('###0.00/h',cds.FieldByName('VLRHORATRANSP').AsFloat);
       QrlHESP.Caption    := FormatFloat('###0.00/h',cds.FieldByName('VLRHORAESPERA').AsFloat);
       QrlHOUT.Caption    := FormatFloat('###0.00/h',cds.FieldByName('VLRHORAOUTROS').AsFloat);
       cds.Close;
      end
   else
     begin
      QrlHTRAB.Caption   := '';
      QrlHTRANSP.Caption := '';
      QrlHESP.Caption    := '';
      QrlHOUT.Caption    := '';
     end;
  finally
   FreeAndNil( cds );
  end;
end;

procedure TfrmRelOSNovoB.PesquisaDadosConfigOFF;
begin
 QrlDiaria.Caption    := FormatFloat('###0.00',dmOFFLINE.cdsConfigVLRDIARIA.AsFloat);
 QrlRefeicoes.Caption := FormatFloat('###0.00',dmOFFLINE.cdsConfigVLRREFEICOES.AsFloat);
 QrlKM.Caption        := FormatFloat('###0.00/Km',dmOFFLINE.cdsConfigVLRKM.AsFloat);

 if dmOFFLine.cdsCustoHora.FindKey([dmOFFLine.cdsOSMODELOID.Value]) then
    begin
     QrlHTRAB.Caption   := FormatFloat('###0.00/h',dmOFFLine.cdsCustoHoraVLRHORATRAB.AsFloat);
     QrlHTRANSP.Caption := FormatFloat('###0.00/h',dmOFFLine.cdsCustoHoraVLRHORATRANSP.AsFloat);
     QrlHESP.Caption    := FormatFloat('###0.00/h',dmOFFLine.cdsCustoHoraVLRHORAESPERA.AsFloat);
     QrlHOUT.Caption    := FormatFloat('###0.00/h',dmOFFLine.cdsCustoHoraVLRHORAOUTROS.AsFloat);
    end
 else
    begin
     QrlHTRAB.Caption   := '';
     QrlHTRANSP.Caption := '';
     QrlHESP.Caption    := '';
     QrlHOUT.Caption    := '';
    end;
end;


procedure TfrmRelOSNovoB.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 case TipoRelat of
 1 : begin
      PesquisaDadosFilial;
      PesquisaDadosConfig;
     end;
 2 : begin
      AtualizaReport;
      PesquisaDadosFilialOFF;
      PesquisaDadosConfigOFF;
     end;
 end;
end;

end.
