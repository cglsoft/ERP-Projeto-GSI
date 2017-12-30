unit u_0022;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Mask, DB, DBClient,
  wwdbdatetimepicker;

type
  Tfrm0022 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    cmbGrupo: TComboBox;
    cmbStatus: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    edtNaoProcess: TEdit;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    cmbTipoProcesso: TComboBox;
    cdsRelProcesso: TClientDataSet;
    dsRelProcesso: TDataSource;
    LblTipo: TLabel;
    BitBtn3: TBitBtn;
    wwDpcktInicial: TwwDBDateTimePicker;
    wwDpcktFinal: TwwDBDateTimePicker;
    RadioGroup3: TRadioGroup;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm0022: Tfrm0022;

implementation

uses FuncoesCliente, ComServ, u_Rel0022, u_Exportar, u_Rel0022A,
  u_Rel0022B;

{$R *.dfm}

procedure Tfrm0022.BitBtn2Click(Sender: TObject);
var iSQL : String;
    Status : String[1];
begin
 if cmbStatus.Text <> '' then
    if      cmbStatus.Text = 'Aberto' then
            Status := 'A'
    else if cmbStatus.Text = 'Liberado' then
            Status := 'L'
    else Status := 'E';

 iSQL := 'SELECT'+
         '  IT_PROCESSO.PROCESSOID,'+
         '  IT_PROCESSOITEM.ITEMID,'+
         '  IT_TIPOPROCESSO.SIGLA,'+
         '  IT_PROCESSOITEM.PARTNUMBERID,'+
         '  IT_PROCESSO.NUMPROCESSOJAPAO,'+
         '  EF_GRUPO.SIGLAGRUPO,'+
         '  IT_PROCESSO.DATAPROCESSOID,'+
         '  IT_PROCESSO.CLIENTEID,'+
         '  EF_ENTIDADE.NOME,'+
         '  IT_TERMOPAGTO.DESCRICAO,'+
         '  IT_PROCESSO.STATUS,'+
         '  IT_PROCESSO.DATALIBERACAO,'+
         '  IT_PROCESSOITEM.PRODUTOID,'+
         '  IT_PROCESSOITEM.DATAPREVISAO,'+
         '  IT_PROCESSOITEM.DATAEMBARQUE,'+
         '  IT_PROCESSOITEM.DATACHEGADA,'+
         '  IT_LISTAPRECO.MODELOID,'+
         '  IT_PROCESSOITEM.DESCRICAOINGLES,'+
         '  IT_PROCESSOITEM.DESCRICAOPORTUGUES,'+
         '  IT_PROCESSOITEM.RETORNAPECADEF,'+
         '  IT_PROCESSOITEM.DATAEMBTOKIO,'+
         '  IT_PROCESSOITEM.DATADEVOLUCAO,'+
         '  IT_PROCESSOITEM.QTDLIBERADA,'+
         '  IT_PROCESSOITEM.VLRFOBUS,'+
         '  (IT_PROCESSOITEM.QTDLIBERADA * IT_PROCESSOITEM.VLRFOBUS)VLRTOTAL,'+
         '  IT_PROCESSO.USUARIO'+
         '  FROM'+
         '  IT_PROCESSO,'+
         '  IT_PROCESSOITEM,'+
         '  EF_GRUPO,'+
         '  IT_LISTAPRECO,'+
         '  IT_TERMOPAGTO'+
         '  IT_TERMOPAGTO,'+
         '  IT_TIPOPROCESSO,'+
         '  EF_ENTIDADE'+
         ' WHERE'+
         '  IT_TIPOPROCESSO.TIPOPROCESSOID = IT_PROCESSO.TIPOPROCESSOID AND'+
         '  IT_LISTAPRECO.PARTNUMBERID(+) = IT_PROCESSOITEM.PARTNUMBERID AND'+
         '  IT_TERMOPAGTO.TERMOPAGTOID(+) = IT_PROCESSO.TERMOPAGTOID AND'+
         '  IT_PROCESSOITEM.PROCESSOID(+) = IT_PROCESSO.PROCESSOID AND'+
         '  IT_PROCESSOITEM.TIPOPROCESSOID = IT_PROCESSO.TIPOPROCESSOID AND'+
         '  IT_PROCESSOITEM.DATAPROCESSOID = IT_PROCESSO.DATAPROCESSOID AND'+
         '  IT_PROCESSOITEM.GRUPOID = EF_GRUPO.GRUPOID(+) AND'+
         '  EF_ENTIDADE.ENTIDADEID(+) =  IT_PROCESSO.CLIENTEID ';

     if cmbTipoProcesso.Text <> '' then
        iSQL := iSQL + ' AND IT_TIPOPROCESSO.SIGLA = '+ QuotedStr( cmbTipoProcesso.Text );

     if ( edtNaoProcess.Text <> '' ) then
        iSQL := iSQL +' AND IT_PROCESSO.CLIENTEID <> ' + edtNaoProcess.Text;

     if RadioGroup2.ItemIndex = 0 Then
        begin
         if wwDpcktInicial.Text <> '' Then
            iSQL := iSQL +' AND IT_PROCESSO.DATAPROCESSOID >= ' + QuotedStr( wwDpcktInicial.Text );

         if wwDpcktFinal.Text <> '' Then
            iSQL := iSQL +' AND IT_PROCESSO.DATAPROCESSOID <= ' + QuotedStr( wwDpcktFinal.Text );
        end
     else
        begin
         if wwDpcktInicial.Text <> '' Then
            iSQL := iSQL +' AND IT_PROCESSOITEM.DATAEMBARQUE >= ' + QuotedStr( wwDpcktInicial.Text );

         if wwDpcktFinal.Text <> '' Then
            iSQL := iSQL +' AND IT_PROCESSOITEM.DATAEMBARQUE <= ' + QuotedStr( wwDpcktFinal.Text  );
        end;

    {*** Só para Nx Nx > 3 = Comercial; Nx < 3 = Técnica ***}
    if cmbStatus.Text <> '' Then
       iSQL := iSQL +' AND IT_PROCESSO.STATUS = '+ QuotedStr(Status);

    if cmbGrupo.Text <> '' Then
       iSQL := iSQL +' AND EF_GRUPO.SIGLAGRUPO = '+ QuotedStr(cmbGrupo.Text);

    if RadioGroup1.ItemIndex = 0 Then
       iSQL := iSQL +' AND IT_PROCESSOITEM.DATAEMBARQUE IS NOT NULL ';

    if RadioGroup1.ItemIndex = 1 Then
      iSQL := iSQL +' AND IT_PROCESSOITEM.DATAEMBARQUE IS NULL ';

    if UpperCase(cmbTipoProcesso.Text)= 'TMBJ' then
       begin
        if      RadioGroup3.ItemIndex = 0 Then
                begin
                 iSQL := iSQL + 'ORDER BY EF_GRUPO.SIGLAGRUPO,IT_PROCESSO.PROCESSOID';

                 ExecDynamicProvider(-1,iSQL,cdsRelProcesso);
                 try
                  frmRel0022B:= TfrmRel0022B.Create(nil);
                  frmRel0022B.QuickRep1.Preview;

                 finally
                  FreeAndNil( frmRel0022B.QuickRep1 );
                  FreeAndNil( frmRel0022B );
                 end

                end
        else begin
              if RadioGroup3.ItemIndex = 1 Then
                 iSQL := iSQL + 'ORDER BY IT_PROCESSO.PROCESSOID,IT_PROCESSOITEM.ITEMID,IT_PROCESSO.DATAPROCESSOID'
              else
                 iSQL := iSQL +'ORDER BY IT_PROCESSO.DATAPROCESSOID,IT_PROCESSO.PROCESSOID,IT_PROCESSOITEM.ITEMID';

              ExecDynamicProvider(-1,iSQL,cdsRelProcesso);
              try
               frmRel0022A := TfrmRel0022A.Create(nil);
               frmRel0022A.QuickRep1.Preview;

              finally
               FreeAndNil( frmRel0022A.QuickRep1 );
               FreeAndNil( frmRel0022A );
              end
             end;
        Exit;
       end;


  iSQL := iSQL + ' ORDER BY IT_PROCESSO.PROCESSOID, IT_PROCESSOITEM.ITEMID';

 try
  ExecDynamicProvider(-1,iSQL,cdsRelProcesso );

  frmRel0022 := TfrmRel0022.Create(nil);
  frmRel0022.QuickRep1.Preview;
 finally
  FreeAndNil(frmRel0022.QuickRep1);
  FreeAndNil(frmRel0022);
 end;
end;

procedure Tfrm0022.BitBtn1Click(Sender: TObject);
begin
 frm0022.Close;
end;

procedure Tfrm0022.FormCreate(Sender: TObject);
begin
 AdicionarCamposCombo(cmbTipoProcesso,'SELECT SIGLA FROM IT_TIPOPROCESSO','SIGLA');
end;

procedure Tfrm0022.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FreeAndNil( cdsRelProcesso );
 Action := cafree;
 frm0022 := nil;
end;

procedure Tfrm0022.BitBtn3Click(Sender: TObject);
begin
 if not cdsRelProcesso.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsRelProcesso;
     frmExportar.Show;
    end
 else
    MessageDlg('É necessário Gerar o Relatório primeiro!',mtWarning, [mbok],0 );

end;

end.
