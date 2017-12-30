unit u_PagtoComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, Mask, fcCombo, fcCalcEdit, wwdblook,
  ExtCtrls, wwdbdatetimepicker, ComCtrls, DB,DBClient,cDateTime, Grids,
  DBGrids;

type
  TfrmPagtoComissao = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    grbDsr: TGroupBox;
    Label12: TLabel;
    lblTituloFeriado: TLabel;
    lblFeriado: TLabel;
    pnRh: TPanel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    edtIrrf: TEdit;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    chkbxRepresentante: TCheckBox;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    DBEdit18: TDBEdit;
    lblDomigo: TLabel;
    lblTotal: TLabel;
    Label19: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chkbxRepresentanteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const SQLPagtoComissao_1 = 'SELECT'+
                           '  /* Calcula o Valor da Comissao */'+
                           '  ROUND(NVL((CASE WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
                           '         (PP_ANALISEVENDA.VLRFOB * IT_INDICE.DOLAROFICIALC )'+
                           '        ELSE'+
                           '         PP_BASEPAGTO.VLRBASECOMISSAO'+
                           '   END) * ( PP_BASEPAGTO.PORCVENDA / 100 ),0),2) VLRCOMISSAO,'+
                           ' /* Calcula o Valor Base da Comissao */'+
                           ' ROUND( NVL((CASE'+
                           '           WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
                           '          (PP_ANALISEVENDA.VLRFOB * IT_INDICE.DOLAROFICIALC)'+
                           '         ELSE'+
                           '          PP_BASEPAGTO.VLRBASECOMISSAO'+
                           '       END),0),2) VLRBASECOMISSAO,';

const SQLPagtoComissao_2 = '   ROUND( NVL((CASE WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
                           '          (CASE WHEN PP_BASEPAGTO.VLRBASECOMISSAOUS < 1 THEN'+
                           '                PP_ANALISEVENDA.VLRFOB'+
                           '               ELSE'+
                           '                PP_BASEPAGTO.VLRBASECOMISSAOUS'+
                           '           END)'+
                           '    END),0),2) VLRBASECOMISSAOUS,';

                           {*** Acrescentar ***
                           '  ROUND( NVL(((CASE WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
                           '         (PP_ANALISEVENDA.VLRCOMISSAOUS * IT_INDICE.DOLAROFICIALC )'+
                           '        ELSE'+
                           '         PP_BASEPAGTO.VLRBASECOMISSAO'+
                           '   END) * ( PP_BASEPAGTO.PORCVENDA / 100 ) / 25) * RD_FIMDESEMANA.QUANTIDADE ),0) VLRDSR,'+
                           '  NVL(((((CASE WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
                           '         (PP_ANALISEVENDA.VLRCOMISSAOUS * IT_INDICE.DOLAROFICIALC )'+
                           '        ELSE'+
                           '         PP_BASEPAGTO.VLRBASECOMISSAO'+
                           '   END) * ( PP_BASEPAGTO.PORCVENDA / 100 ) / 25),2) * RD_FIMDESEMANA.QUANTIDADE ) +'+}

const SQLPagtoComissao_3 = '    (CASE WHEN PP_PEDVEND.ORIGEMVENDAID = 1 THEN'+
                           '         (PP_ANALISEVENDA.VLRFOB * IT_INDICE.DOLAROFICIALC )'+
                           '        ELSE'+
                           '         PP_BASEPAGTO.VLRBASECOMISSAO'+
                           '   END) * ( PP_BASEPAGTO.PORCVENDA / 100 ) ),0),2) VLRLIQUIDO, ' +
                           '   RD_FIMDESEMANA.QUANTIDADE ';

const SQLPagtoComissao_4 = '  FROM IT_INDICE,'+
                           '       PP_ANALISEVENDA,'+
                           '       PP_BASEPAGTO,'+
                           '       PP_PEDVEND,'+
                           '       ( /* Calcula a quantidade de Feriados */'+
                           '          SELECT'+
                           '            COUNT(CASE WHEN DECODE ( TO_CHAR ( RD_FERIADO.DATAFERIADO, ''D''),''1'',1,0) = 0 THEN'+
                           '                        (CASE WHEN RD_FERIADO.FERIADOREGIONAL = 1 THEN'+
                           '                              (CASE WHEN EF_ENTIDADE.FILIALID = RD_FERIADO.FILIALID THEN'+
                           '                                     1'+
                           '                                    ELSE'+
                           '                                     0'+
                           '                               END)'+
                           '                             ELSE'+
                           '                              1'+
                           '                         END)'+
                           '            END) QUANTIDADE'+
                           '            FROM RD_FERIADO,'+
                           '                 PP_BASEPAGTO,'+
                           '                 EF_ENTIDADE'+
                           '           WHERE';






var
  frmPagtoComissao: TfrmPagtoComissao;

implementation

uses u_dmPP, FuncoesCliente,FuncoesDSI, u_dmGSI;

{$R *.dfm}

procedure TfrmPagtoComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if dmPP.cdsBasePagto.State = dsEdit then
    dmPP.cdsBasePagto.Cancel;
 Action := caFree;
 frmPagtoComissao := Nil;
end;

procedure TfrmPagtoComissao.BitBtn5Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmPagtoComissao.FormActivate(Sender: TObject);
begin
 pnRh.Visible               := True;
 grbDsr.Visible             := True;
 chkbxRepresentante.Checked := False;
 dmPP.cdsBasePagtoDATAPAGTOCOM.AsDateTime := LastDayOfMonth( Date );
end;

procedure TfrmPagtoComissao.chkbxRepresentanteClick(Sender: TObject);
var iSQL, sSQLServ, GrupoID  : String;
    cds, cdsServ  : TClientDataSet;
begin
 pnRh.Visible   := False;
 grbDsr.Visible := False;
 cds     := nil;
 cdsServ := nil;

 GerarPesquisa( dmPP.cdsAnaliseVenda, 'PP_ANALISEVENDA.PEDVENDID = ' +  QuotedStr( dmPP.cdsBasePagtoPEDVENDID.AsString ) );

 if dmPP.cdsAnaliseVendaItemL_GRUPOID.IsNull then
    GrupoID := dmPP.cdsAnaliseVendaItemL_GRUPO_IMP.AsString
 else
    GrupoID := dmPP.cdsAnaliseVendaItemL_GRUPOID.AsString;

 try
  sSQLServ := 'SELECT DISTINCT PP_PEDVENDSERV.PEDVENDID, ' +
              '       EF_SERVICO.GRUPOID ' +
              '  FROM PP_PEDVENDSERV PP_PEDVENDSERV, ' +
              '       EF_SERVICO EF_SERVICO ' +
              ' WHERE EF_SERVICO.EMPRESAID(+) = PP_PEDVENDSERV.EMPRESAID ' +
              '       AND EF_SERVICO.SERVICOID(+) = PP_PEDVENDSERV.SERVICOID ' +
              '       AND PP_PEDVENDSERV.PEDVENDID = ' + QuotedStr( dmPP.cdsBasePagtoPEDVENDID.AsString );

  if GrupoID = '' then
     begin
      ExecDynamicProvider( -1, sSQLServ, cdsServ );

      GrupoID := cdsServ.FieldByName('GRUPOID').AsString;
      cdsServ.Close;
     end;

 iSQL := 'SELECT PP_PERCOMREPR.VLRPERCENTUAL' +
         '  FROM PP_PERCOMREPR ' +
         ' WHERE ' +
         '  PP_PERCOMREPR.GRUPOID = ' + GrupoID +
         '  AND PP_PERCOMREPR.ORIGEMVENDAID = ' + dmPP.cdsAnaliseVendaL_ORIGEMVENDAID.AsString +
         '  AND PP_PERCOMREPR.TIPOVENDAID = ' + dmPP.cdsAnaliseVendaL_TIPOVENDAID.AsString;

  ExecDynamicProvider(-1,iSQL,cds);

  dmPP.cdsBasePagto.Edit;
  if  chkbxRepresentante.Checked then
      dmPP.cdsBasePagtoPORCVENDA.AsCurrency := cds.FieldByName('VLRPERCENTUAL').AsCurrency
  else
      dmPP.cdsBasePagtoPORCVENDA.AsCurrency := 0;

  if dmPP.cdsBasePagtoPORCVENDA.AsCurrency = 0 then
     MessageDlg('Atenção a porcentagem de pagamento da comissão não está sendo informado.', mtInformation, [mbOK], 0 );

  cds.Close;
 finally
  FreeAndNil( cds );
 end;
 dmPP.cdsBasePagto.Edit;
end;

procedure TfrmPagtoComissao.BitBtn2Click(Sender: TObject);
var FimdeSemana, Feriado, i : Integer;
    Dt : TDateTime;
    VlrComissao : Real;
    Data : String;
    cdsFeriado : TClientDataSet;

 procedure ProcessarFeriado;
 var sSQL : String;
 begin
  cdsFeriado := TClientDataSet.Create( Nil );
  sSQL := '  SELECT RD_FERIADO.FERIADOID, ' +
          '       RD_FERIADO.DATAFERIADO, ' +
          '       RD_FERIADO.FILIALID, ' +
          '       RD_FERIADO.FERIADOREGIONAL, ' +
          '       RD_FERIADO.LIBERADOEMPRESA, ' +
          '       RD_FERIADO.DESCRICAOFERIADO, ' +
          '       RD_FERIADO.USUARIO ' +
          '  FROM RD_FERIADO RD_FERIADO ' +
          ' WHERE ' +
          '  RD_FERIADO.DATAFERIADO BETWEEN ' + QuotedStr( DateToStr( FirstDayOfMonth( dmPP.cdsBasePagtoDATAPAGTOCOM.AsDateTime ) ) ) +
          '  AND ' +  QuotedStr( DateToStr( LastDayOfMonth( dmPP.cdsBasePagtoDATAPAGTOCOM.AsDateTime ) ) ) +
          '  AND NVL( RD_FERIADO.LIBERADOEMPRESA, 0 ) = 0 ';
  ExecDynamicProvider( -1, sSQL, cdsFeriado );
 end;

begin
 if MessageDlg('Confirma o pagamento da comissão ? Os dados estão corretos ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

 try
  try
   if dmPP.cdsBasePagtoPORCVENDA.AsInteger < 0 then
      raise Exception.Create( 'Porcentagem do pagamento da comissão não informada');

   if dmPP.cdsBasePagtoDATAPAGTOCOM.IsNull then
      raise Exception.Create( 'Data do pagamento da comissão não informada');

   if ( not chkbxRepresentante.Checked ) and ( dmPP.cdsBasePagtoL_FILIALID.AsInteger = 0 ) then
      raise Exception.Create( 'Este vendedor não está associado a uma filial, favor atualizar o seu cadastro');

   if dmPP.cdsBasePagtoL_ORIGEMVENDAID.AsInteger = 1 then
      begin
       if dmPP.cdsBasePagtoL_DOLAROFICIALC.IsNull then
          raise Exception.Create( 'Taxa do Dólar não cadastrada para o dia: ' + dmPP.cdsBasePagtoL_DOLAROFICIALC.AsString );
                                         // VLRBASECOMISSAOUS
                                         // L_VLRFOB
       VlrComissao := ( dmPP.cdsBasePagtoVLRFOB.Value * dmPP.cdsBasePagtoL_DOLAROFICIALC.AsFloat );
      end
   else
      VlrComissao := dmPP.cdsBasePagtoVLRBASECOMISSAO.Value;

   dmPP.cdsBasePagto.Edit;

   // Converter o valor da base para Reais
   if dmPP.cdsBasePagtoL_ORIGEMVENDAID.AsInteger = 1 then
      begin
       // Para atender aos casos antigos onde somente erá gravado o valor US$ com o valor em R$
       if dmPP.cdsBasePagtoVLRBASECOMISSAOUS.AsFloat < 1 then
          dmPP.cdsBasePagtoVLRBASECOMISSAOUS.Value := dmPP.cdsBasePagtoL_VLRFOB.Value;

       dmPP.cdsBasePagtoVLRBASECOMISSAO.Value := VlrComissao;
      end;

   dmPP.cdsBasePagtoVLRCOMISSAO.AsCurrency := VlrComissao * ( dmPP.cdsBasePagtoPORCVENDA.AsCurrency / 100 );

   if not chkbxRepresentante.Checked then
      begin
       // Calcular Fim de semanas no mês
       FimdeSemana := 0;
       Dt := StrToDate(  '01/' + IntToStr( Month( dmPP.cdsBasePagtoDATAPAGTOCOM.AsDateTime ) ) + '/' + IntToStr( Year( dmPP.cdsBasePagtoDATAPAGTOCOM.AsDateTime ) ) );
       data := DateToStr( Dt );
       for i := Day( FirstDayOfMonth( Date ) ) to Day( LastDayOfMonth( Date ) ) do
       begin
        if IsSunday( Dt ) then
           Inc( FimdeSemana );

        Dt := AddDays( Dt, 1 );
       end;

       lblDomigo.Caption  := IntToStr( FimdeSemana );

       ProcessarFeriado;
       Feriado := 0;

       // Calcular feriados no mês
       cdsFeriado.First;
       while not cdsFeriado.Eof do
       begin
        if cdsFeriado.FieldByName('FERIADOREGIONAL').AsInteger = 1 then
           begin
            if not IsSunday( cdsFeriado.FieldByName('DATAFERIADO').AsDateTime ) then
               if cdsFeriado.FieldByName('FILIALID').AsInteger = dmPP.cdsBasePagtoL_FILIALID.AsInteger then
                  Inc( Feriado );
           end
        else
           begin
            if not IsSunday( cdsFeriado.FieldByName('DATAFERIADO').AsDateTime ) then
               Inc( Feriado );
           end;

        cdsFeriado.Next;
       end;

       lblFeriado.Caption := IntToStr( Feriado );
       lblTotal.Caption   := IntToStr( FimdeSemana + Feriado );

       dmPP.cdsBasePagtoVLRDSR.Value      := ( dmPP.cdsBasePagtoVLRCOMISSAO.AsFloat /
                                          { Qtd de Dias no Mês }
                                          25 ) *
                                          { Qtd de Sábados / Domingos e Feriados no Mês }
                                          ( FimdeSemana + Feriado );
       dmPP.cdsBasePagtoVLRLIQUIDO.Value  := dmPP.cdsBasePagtoVLRCOMISSAO.Value + dmPP.cdsBasePagtoVLRDSR.AsCurrency;
      end
   else
      begin
       if ( dmPP.cdsBasePagtoVLRCOMISSAO.Value * StrToFloat( edtIrrf.Text ) / 100 ) > 10 then
          dmPP.cdsBasePagtoVLRLIQUIDO.Value  := dmPP.cdsBasePagtoVLRCOMISSAO.Value - ( dmPP.cdsBasePagtoVLRCOMISSAO.Value * StrToFloat( edtIrrf.Text ) / 100 )
       else
          dmPP.cdsBasePagtoVLRLIQUIDO.Value  := dmPP.cdsBasePagtoVLRCOMISSAO.Value;
      end;

  dmPP.cdsBasePagtoUSUARIOPAGTO.Value          := dmGSI.UsuarioAtivo;
  dmPP.cdsBasePagtoDATAUSUARIOPAGTO.AsDateTime := pCnnMain.AppServer.iServerDate;

  dmPP.cdsBasePagto.Post;
  MessageDlg('Calculo efetuado com sucesso!', mtInformation, [mbOK], 0 );
  Close;
  except
   on E: Exception do
    MessageDlg( E.Message, mtInformation,[mbOk], 0);
  end;

 finally
  if Assigned( cdsFeriado ) then
     FreeAndNil( cdsFeriado );
 end;
end;

end.
