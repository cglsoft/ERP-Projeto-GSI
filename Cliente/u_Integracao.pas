unit u_Integracao;

(*  MANUTENÇÕES
 *  04/12: ultima versão
 *
*)

{$WARN UNIT_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,DBClient, Mask, Grids,
  DBGrids, DB, MaskUtils, tmbToolcdsExportar, ImgList, ActnList, DBCtrls,
  XPStyleActnCtrls, ActnMan, ActnCtrls, ToolWin, fcStatusBar, FileCtrl,DateUtils,
  Extenso, wwcheckbox, wwdbedit, wwriched, wwrichedspellxp, wwdbdatetimepicker,
  NativeXml ;

type
  TfrmIntegracao = class(TForm)
    PageIntegracao: TPageControl;
    TabSheet1: TTabSheet;
    TabExportNF: TTabSheet;
    TabExportICMS: TTabSheet;
    TabExportTitRec: TTabSheet;
    pnDisplayGravados: TPanel;
    LbContGravados: TLabel;
    Label1: TLabel;
    pnDisplayProcess: TPanel;
    LbContCrit: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edExportNF_DtInicial: TMaskEdit;
    edExportNF_DtFinal: TMaskEdit;
    spEntradas: TSpeedButton;
    spSaidas: TSpeedButton;
    spServicos: TSpeedButton;
    spCustosDevolucao: TSpeedButton;
    spCustosProd: TSpeedButton;
    spPis_Cofins_Iss: TSpeedButton;
    Bevel2: TBevel;
    Label7: TLabel;
    ComboUF: TComboBox;
    CheckUF_SP: TCheckBox;
    CheckEmp12e13: TCheckBox;
    BtnProssDados: TBitBtn;
    BtnGravaDisco: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    MaskDtINIConvIcms: TMaskEdit;
    MaskDtFIMConvIcms: TMaskEdit;
    Bevel3: TBevel;
    Label8: TLabel;
    MaskEdit3: TMaskEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    edTitRecDtIni: TMaskEdit;
    edTitRecDtFim: TMaskEdit;
    BitBtn6: TBitBtn;
    Panel6: TPanel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    cdsAux: TClientDataSet;
    cdsAuxCONTA: TIntegerField;
    cdsAuxHISTORICO: TStringField;
    cdsAuxDEBITO_CREDITO: TStringField;
    cdsAuxCENTRO_CUSTO: TStringField;
    cds881040: TClientDataSet;
    cds881040ITEM: TIntegerField;
    cds881040CNPJ: TStringField;
    cds881040IE: TStringField;
    cds881040UF: TStringField;
    cds881040NOME: TStringField;
    cds881040DATAINICIAL: TStringField;
    cds881040DATAFINAL: TStringField;
    cds881040SITUACAO: TIntegerField;
    cds8835: TClientDataSet;
    cds8835CodApuracao: TStringField;
    cds8835VlrTotalImport: TFloatField;
    cds8835VlrTotalIcms: TFloatField;
    cds8835PercentualIncentivo: TFloatField;
    cds8835VlrTotalSaidaN: TFloatField;
    cds8835VlrtotalSaidaForaUF: TFloatField;
    cds8835VlrTotalIcmsSaidaUF: TFloatField;
    cds8880CFOP: TClientDataSet;
    cds8880CFOPDetalhe: TIntegerField;
    cds8880CFOPCfop: TStringField;
    cds8880CFOPVlrContabil: TFloatField;
    cds8880CFOPVlrBaseIcms: TFloatField;
    cds8880CFOPVlrIcms: TFloatField;
    cds8880CFOPVlrIsentasIcms: TFloatField;
    cds8880CFOPVlrOutrasIcms: TFloatField;
    cds8880CFOPVlrBaseIpi: TFloatField;
    cds8880CFOPVlrIpi: TFloatField;
    cds8880CFOPVlrIsentasIpi: TFloatField;
    cds8880CFOPVlrOutrasIpi: TFloatField;
    cds8880Total: TClientDataSet;
    cds8880TotalDetalhe: TIntegerField;
    cds8880TotalVlrContabil: TFloatField;
    cds8880TotalVlrBaseIcms: TFloatField;
    cds8880TotalVlrIcms: TFloatField;
    cds8880TotalVlrIsentasIcms: TFloatField;
    cds8880TotalVlrOutrasIcms: TFloatField;
    cds8880TotalVlrBaseIpi: TFloatField;
    cds8880TotalVlrIpi: TFloatField;
    cds8880TotalVlrIsentasIpi: TFloatField;
    cds8880TotalVlrOutrasIpi: TFloatField;
    cdsICMS: TClientDataSet;
    cdsTipo75: TClientDataSet;
    cdsTitRecAgrupa: TClientDataSet;
    cdsTitRecAgrupa2: TClientDataSet;
    Panel5: TPanel;
    ListCriticas: TListBox;
    Panel7: TPanel;
    DBGridTitRec: TDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    ListBox2: TListBox;
    ListBox1: TListBox;
    Label10: TLabel;
    Label11: TLabel;
    Panel10: TPanel;
    ListGravados: TListBox;
    Splitter1: TSplitter;
    cdsNfe: TClientDataSet;
    cdsNfeEMPRESAID: TBCDField;
    cdsNfeNFEID: TBCDField;
    cdsNfeDATAEMISSAOID: TSQLTimeStampField;
    cdsNfeENTIDADEID: TBCDField;
    cdsNfeCATEGORIAID: TBCDField;
    cdsNfeMODELODOCFISCALID: TBCDField;
    cdsNfeL_MODELODOCFISCAL: TStringField;
    cdsNfeSERIE: TStringField;
    cdsNfeDATAENTRADA: TSQLTimeStampField;
    cdsNfeCANCELADA: TBCDField;
    cdsNfeEXPORTADO: TBCDField;
    cdsNfeDIID: TStringField;
    cdsNfeDESCRICAOIMPORTACAO: TMemoField;
    cdsNfeOSID: TStringField;
    cdsNfeCREDITARICMS: TBCDField;
    cdsNfeLIBCHEFIA: TBCDField;
    cdsNfeLIBCHEFIANOME: TStringField;
    cdsNfeLIBCHEFIADATA: TSQLTimeStampField;
    cdsNfeLIBFINANCEIRO: TBCDField;
    cdsNfeLIBFINANCEIRONOME: TStringField;
    cdsNfeLIBFINANCEIRODATA: TSQLTimeStampField;
    cdsNfeLIBCONTABIL: TBCDField;
    cdsNfeLIBCONTABILNOME: TStringField;
    cdsNfeLIBCONTABILDATA: TSQLTimeStampField;
    cdsNfePDEID: TBCDField;
    cdsNfeDATAPEDIDO: TSQLTimeStampField;
    cdsNfeREQUISITANTE: TStringField;
    cdsNfeNFSID: TBCDField;
    cdsNfeDATAEMISSAONFSID: TSQLTimeStampField;
    cdsNfeTIPONOTA: TStringField;
    cdsNfeNOME: TStringField;
    cdsNfeCEPID: TBCDField;
    cdsNfeNUMERO: TStringField;
    cdsNfeCOMPLEMENTO: TStringField;
    cdsNfeENDERECO: TStringField;
    cdsNfeBAIRRO: TStringField;
    cdsNfeCIDADE: TStringField;
    cdsNfeSIGLAUFID: TStringField;
    cdsNfePAIS: TStringField;
    cdsNfeCONTRIBUINTEICMS: TBCDField;
    cdsNfeNATUREZAOPID: TBCDField;
    cdsNfeL_CFOP: TStringField;
    cdsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField;
    cdsNfeL_DESCRICAOOPERACAONOTA: TStringField;
    cdsNfeOBSERVACAOID: TBCDField;
    cdsNfeDESCRICAOOBSERVACAO: TMemoField;
    cdsNfeTRANSPORTADORID: TBCDField;
    cdsNfeL_NOMETRANSPORTADOR: TStringField;
    cdsNfePLACAVEICULO: TStringField;
    cdsNfeMODALIDADEFRETE: TStringField;
    cdsNfeVLRFRETE: TBCDField;
    cdsNfeVLRSEGURO: TBCDField;
    cdsNfeVLRDESPESAACESSORIA: TBCDField;
    cdsNfeEMBQTDVOLUMES: TBCDField;
    cdsNfeEMBNUMERO: TBCDField;
    cdsNfeEMBMARCA: TStringField;
    cdsNfeEMBESPECIE: TStringField;
    cdsNfeEMBPESOBRUTO: TFMTBCDField;
    cdsNfeEMBPESOLIQUIDO: TFMTBCDField;
    cdsNfeVLRTOTALCOFINS: TBCDField;
    cdsNfeVLRTOTALPIS: TBCDField;
    cdsNfeVLRTOTALCREDCOFINS: TBCDField;
    cdsNfeVLRTOTALCREDPIS: TBCDField;
    cdsNfeVLRTOTALBASEICMS: TBCDField;
    cdsNfeVLRTOTALICMS: TBCDField;
    cdsNfeVLRTOTALISENTASICMS: TBCDField;
    cdsNfeVLRTOTALOUTRASICMS: TBCDField;
    cdsNfeVLRTOTALBASEIPI: TBCDField;
    cdsNfeVLRTOTALIPI: TBCDField;
    cdsNfeVLRTOTALISENTASIPI: TBCDField;
    cdsNfeVLRTOTALOUTRASIPI: TBCDField;
    cdsNfeVLRTOTALPRODUTO: TBCDField;
    cdsNfeVLRTOTALNOTA: TBCDField;
    cdsNfeDATAIMPRESSAO: TSQLTimeStampField;
    cdsNfeUSUARIO: TStringField;
    cdsNfesqldtsNfeItem: TDataSetField;
    cdsICMSESTADO: TStringField;
    cdsICMSTIPO_10: TIntegerField;
    cdsICMSTIPO_11: TIntegerField;
    cdsICMSTIPO_50: TIntegerField;
    cdsICMSTIPO_51: TIntegerField;
    cdsICMSTIPO_54: TIntegerField;
    cdsICMSTIPO_53: TIntegerField;
    cdsICMSTIPO_60: TIntegerField;
    cdsICMSTIPO_61: TIntegerField;
    cdsICMSTIPO_70: TIntegerField;
    cdsICMSTIPO_90: TIntegerField;
    cdsICMSTIPO_71: TIntegerField;
    cdsICMSTIPO_75: TIntegerField;
    cdsICMSTIPO_TOTAL: TIntegerField;
    cdsAuxDC: TIntegerField;
    Panel11: TPanel;
    lb: TStaticText;
    LbGravados: TStaticText;
    cdsTitRecAgrupaCONTA_CONTABIL: TStringField;
    cdsTitRecAgrupaVLR_CONTA_CONTABIL: TFloatField;
    cdsTitRecAgrupaTIPO: TStringField;
    cdsTitRecAgrupaPORCENTAGEM: TFloatField;
    cdsTitRecAgrupa2CONTA_CONTABIL: TStringField;
    cdsTitRecAgrupa2CENTRO_CUSTO: TFloatField;
    cdsTitRecAgrupa2VLR: TFloatField;
    cdsTipo75CodigoProduto: TIntegerField;
    Panel12: TPanel;
    StaticText1: TStaticText;
    SpeedButton1: TSpeedButton;
    dsaux: TDataSource;
    cdsAuxVALOR: TFloatField;
    cdsAuxNfsPesquisa: TClientDataSet;
    dsAuxNfsPesquisa: TDataSource;
    Splitter2: TSplitter;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    actmngIntegracao: TActionManager;
    actFechar: TAction;
    imglstIntegracao: TImageList;
    fcstbarIntegracao: TfcStatusBar;
    actSalvar: TAction;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    TabSheet2: TTabSheet;
    mktExpEntIni: TMaskEdit;
    mktExpEntFim: TMaskEdit;
    btnProcExportEntidade: TBitBtn;
    TabSheet3: TTabSheet;
    RzDirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    sbImportarTecwin: TSpeedButton;
    lblArqTecWin: TLabel;
    mktArqTecWin: TMaskEdit;
    btnPesquisaTitRec: TBitBtn;
    Panel3: TPanel;
    sbTodos: TSpeedButton;
    sbUm: TSpeedButton;
    sbRetUm: TSpeedButton;
    sbRetTodos: TSpeedButton;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Label16: TLabel;
    Panel1: TPanel;
    Splitter3: TSplitter;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel13: TPanel;
    Panel14: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    ListBox4: TListBox;
    ListBox3: TListBox;
    BitBtn2: TBitBtn;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    MaskEdit2: TMaskEdit;
    MaskEdit4: TMaskEdit;
    ckbInventario: TCheckBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label13: TLabel;
    Label19: TLabel;
    GroupBox9: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    MktOCredito: TMaskEdit;
    MktEstDebito: TMaskEdit;
    MktODebito: TMaskEdit;
    MktEstCredito: TMaskEdit;
    MktSldCAnterior: TMaskEdit;
    Label22: TLabel;
    MktDeducoes: TMaskEdit;
    Label23: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    mktExpEntDtemissao: TMaskEdit;
    BtnExportaRDV: TBitBtn;
    TabSheet5: TTabSheet;
    cmbSiscomex: TComboBox;
    mktEmp: TMaskEdit;
    mktNfs: TMaskEdit;
    mktDataEmissao: TMaskEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    BitBtn5: TBitBtn;
    mktAdicao: TMaskEdit;
    Label28: TLabel;
    mktRegistro: TMaskEdit;
    Label29: TLabel;
    Panel15: TPanel;
    Label30: TLabel;
    cmbTipo: TComboBox;
    Label31: TLabel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    chkNotas: TCheckBox;
    ckbIndividual: TwwCheckBox;
    GroupBox10: TGroupBox;
    Label33: TLabel;
    edtFuncionario: TEdit;
    Label32: TLabel;
    edtNome: TEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    cdsFuncionarioFuncionarioId: TIntegerField;
    cdsFuncionarioNome: TStringField;
    cds: TClientDataSet;
    dscds: TDataSource;
    RgpTipoRdv: TRadioGroup;
    TabSheet6: TTabSheet;
    GroupBox11: TGroupBox;
    Label34: TLabel;
    btneISS: TBitBtn;
    wwdtpckteISSINI: TwwDBDateTimePicker;
    wwdtpckteISSFIM: TwwDBDateTimePicker;
    ckbxAtiva: TCheckBox;
    ckbxAtivaSimilar: TCheckBox;
    v: TTabSheet;
    Panel16: TPanel;
    Splitter4: TSplitter;
    Panel17: TPanel;
    DBGrid4: TDBGrid;
    Panel18: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel19: TPanel;
    Panel20: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    ListBox5: TListBox;
    ListBox6: TListBox;
    GroupBox12: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Edit2: TEdit;
    CheckBox2: TCheckBox;
    MaskEdit5: TMaskEdit;
    btnNFeBarueri: TBitBtn;
    BitBtn10: TBitBtn;
    GroupBox13: TGroupBox;
    Label40: TLabel;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    TabSheet8: TTabSheet;
    sbImpJapaoArq: TSpeedButton;
    Label41: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox2: TFileListBox;
    mktJapaoArq: TMaskEdit;
    Label37: TLabel;
    TabSheet9: TTabSheet;
    GroupBox14: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label42: TLabel;
    Edit3: TEdit;
    chkbx1Nota: TCheckBox;
    chkbxNFS: TCheckBox;
    chkbxNFE: TCheckBox;
    wwdtpcktDtIni: TwwDBDateTimePicker;
    wwdtpcktDtFim: TwwDBDateTimePicker;
    wwdtpcktDt: TwwDBDateTimePicker;
    btnProcessarREDFSP: TBitBtn;
    cdsNF: TClientDataSet;
    cdsNFItem: TClientDataSet;
    cdsNFServ: TClientDataSet;
    GroupBox15: TGroupBox;
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
    chkbxEmpresa: TCheckBox;
    BitBtn9: TBitBtn;
    dsNF: TDataSource;
    TabSheet10: TTabSheet;
    GroupBox16: TGroupBox;
    Label43: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    edtEFDNotaID: TEdit;
    chkbxEFDGerarUm: TCheckBox;
    wwdbdtpcktEFDIni: TwwDBDateTimePicker;
    wwdbdtpcktEFDFim: TwwDBDateTimePicker;
    wwdbdtpcktEFD: TwwDBDateTimePicker;
    btnEFD: TBitBtn;
    chkbxEFDEmpresa: TCheckBox;
    BitBtn12: TBitBtn;
    GroupBox17: TGroupBox;
    wwDBRichEditMSWord2: TwwDBRichEditMSWord;
    chkbxEFDInvent: TCheckBox;
    wwdbdtpcktEFDInvent: TwwDBDateTimePicker;
    Label50: TLabel;
    cdsEFD_TBloco: TClientDataSet;
    rgrpNfSeServicos: TRadioGroup;
    procedure btneISSClick(Sender: TObject);
    procedure BtnExportaRDVClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spEntradasClick(Sender: TObject);
    procedure spServicosClick(Sender: TObject);
    procedure spSaidasClick(Sender: TObject);
    procedure spPis_Cofins_IssClick(Sender: TObject);
    procedure spCustosDevolucaoClick(Sender: TObject);
    procedure spCustosProdClick(Sender: TObject);
    procedure BtnGravaDiscoClick(Sender: TObject);
    procedure BtnProssDadosClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridTitRecDblClick(Sender: TObject);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisaTitRec5Click(Sender: TObject);
    procedure edTitRecDtIniKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PageIntegracaoChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure btnProcExportEntidadeClick(Sender: TObject);
    procedure sbImportarTecwinClick(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure btnPesquisaTitRecClick(Sender: TObject);
    procedure sbTodosClick(Sender: TObject);
    procedure sbRetUmClick(Sender: TObject);
    procedure sbRetTodosClick(Sender: TObject);
    procedure sbUmClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure CheckUF_SPClick(Sender: TObject);
    procedure CheckEmp12e13Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure edtFuncionarioChange(Sender: TObject);
    procedure ckbIndividualClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure btnNFeBarueriClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure sbImpJapaoArqClick(Sender: TObject);
    procedure FileListBox2DblClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnProcessarREDFSPClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnEFDClick(Sender: TObject);
    procedure chkbxEFDInventClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    {Private declarations}
    {Entradas}
    procedure ExportaEntradas;
      procedure ExportarEntradaNFE(EmpresaAtiva: String);

    {Saidas}
    procedure ExportaSaidas;
      procedure ExportarSaidasNFS(EmpresaAtiva: String);

    {Serviços}
    procedure ExportaServicos;
      procedure ExportarSaidasNFS_Servicos(EmpresaAtiva: String);

    {PIS/ Cofins/ ISS}
    procedure ExportaPIS_COFINS_ISS;
      procedure ExportarImpostosNFS(EmpresaAtiva: String);
        procedure ExportaImpostosNFSItem(EmpresaAtiva, NfsId: String; DtEmissao: String);
        procedure ExportaImpostosServicoNFS(EmpresaAtiva, NfsId: String; DtEmissao: String);
      Procedure ExportaImpostosNFE(EmpresaAtiva: String);
        procedure ExportaImpostosNFEItem(EmpresaAtiva, NfeId: String; DtEmissao: String);
      {Fravação do cds Temporario}
      procedure GravaImpostosArqTexto;
      procedure CriaCdsAux;
    {}
    {Custo Produto}
    procedure ExportaCustosProdutos;
       procedure AnalisarCustoSaidas(EmpresaAtiva: String);
         procedure CProd_ProcessDescricaoResumKardex(DescResumida, ContaCtbDespesa, ContaCtbAtivo,CCusto : String; var CDS : TClientDataSet );

    procedure GravaCustosProdArqTexto;
    {}

    {Custo Devolução}
    procedure ExportaCustoDevolucao;
      procedure Cdev_ComsisteMovNoTipoDocumento;
         procedure Cdev_ProcessDescricaoResumKardex(DescResumida, SubGrupo, ContaCtbDespesa : String);

    procedure GravaCustDevolucaoArqTexto;
    {}
    {Exporta Tit. a Receber}
    procedure ExportaTitReceber;
        procedure Export_Serv( Registro : String ; Vlr : Currency; var Porcentagem : Currency; CalcularDiferenca : Boolean = False );
    procedure PesquisaTitRec;
    {}

    {Exporta Conv. ICMS}
    procedure ExportaConvICMS;
     procedure Tipo10_11( UF : String );
      procedure ApagaArquivosTxt(UF: String);
       procedure  RetornaLocalTmb(Local: Char);
        procedure IniciaRegistro;

        procedure Proc_NF(var cdsPai : TClientDataSet; NomeTblPai, NomeTblFilho : String );
          procedure Tipo50( var cdsPai,cdsFilho : TClientDataSet ; NomeTabela : String; UF : String );
            procedure Tipo50PE( var F: TextFile; cdsPai : TClientDataSet; NomeTabela : String; UF : String );
              procedure GerarRegistro881040( cdsPai : TClientDataSet );

          procedure Tipo51( cdsPai : TClientDataset; NomeTabela : String; UF : String );
            function Tipo51PE( var F: TextFile; cdsPai : TClientDataset ; NomeTabela : String; UF : String ):String;

          procedure Tipo54( cdsPai, cdsFilho : TClientDataset ; NomeTabela : String; UF : String );
            procedure Tipo54PE( var F: TextFile; cdsPai, cdsFilho : TClientDataset ; NomeTabela : String; UF : String );
          procedure Tipo70( cdsPai, cdsFilho : TClientDataset ; NomeTabela : String; UF : String );
            function Tipo70PE( var F: TextFile; cdsPai, cdsFilho : TClientDataset ; NomeTabela : String; UF : String ):String;
          procedure Tipo75( cdsPai, cdsFilho : TClientDataset ; NomeTabela : String; UF : String; NomeArq : string );
          procedure Tipo74;
//          procedure Tipo85(cdsPai: TClientDataset; NomeTabela : String; UF: String);
          procedure GeraInventario;

          procedure Tipo8810( UF : String );
          procedure Tipo8835( UF : String );
//          procedure Tipo8880( UF : String );

    {Exportar Nota Eletrônica}
     procedure ExportTipo1;
     procedure ExportTipo2;



      procedure AgruparArq( UF, TIPO : String );
      procedure Tipo90( UF : String );
      function TransfNum( Txt : String ) : String;
      function CGC(cTexto: String ) : String;
      procedure GravaDisco( UF : String );
    {}

    {Arquivo}
    procedure AtivaArquivo(NomeArq: String; LeGrava: Char = 'R');
    procedure AtivaArquivo2(NomeArq: String; LeGrava: Char = 'R');
    procedure FinalizaArquivo;

    {Tela}
    procedure MostraMsgUsuario(msg: String);

    {Data Set}
    function  FormatCNPF_CNPJ_CCM( Text : String ) : String;
    procedure InstanciaCds(var instCds: TClientDataSet; NomeCds : String);
    procedure LiberaCds;

    {Abre DataSets}
    function  AtivaEmpresas:boolean;
    procedure AbrePesquisa( Empresa : String;DataInicio, DataFim : String );
    procedure AbreNFsItemConvenio( var cds : TClientDataSet);
    procedure AbreNFeItemConvenio( var cds : TClientDataSet);
    procedure GeraTipo8880( var cds : TClientDataSet;GrupoCFOP : String; Qualificacao : String = '00' );
    procedure GeraTotalTipo8880( var cds : TClientDataSet );
    procedure GeraTotalTipo8882( var cds : TClientDataSet );
    procedure GeraTipo8882( var cds : TClientDataSet;GrupoCFOP : String; Qualificacao : String = '00' );
    function  CalcVATipo881500:Real;
    procedure ExecutaSql(exSql: String; var exCds: TClientDataSet; NomeCds: String);

    {Update ou Insert}
    procedure UpSet(var cdsUpSet: TClientDataSet; valor1, valor2: String); {dsInsert ou dsEdit}
    {Display}
    procedure AtivaDisplay;
    procedure AtualizaDisplay(Proc_Grav: Char; cont: integer);
    procedure PreencheCCusto;
    procedure LoadcdsIcms;

    {Consistencias}
    function  ConsisteCPFCNPJ(CPFCNPJ: variant; NFID: String):String;
    function  ConsisteTipoCPF(CPF: String):String;
    function  ConsisteContrIcms(ContrIcms: variant):String;
    function  ConsisteCFOP(CFOP: String):String;
    function  ConsisteObservacao( cds : TClientDataSet; Campo : String):String;
    function  GetAliquota( EmpresaAtiva : Integer ) : Real;
    function  GetAliquotaNfs: Real;
    function  GetCondPagto( CondPagtoId : Integer ) : String;
    function  GetCentroCusto(Empresa,OSId : String; ProdutoId : Integer; TipoNota : String = 'PRODUTO' ): String;
    function  GetCCusto( SIGLAGRUPO : String ): String;
    function  GetMunicipio( UFID,NomeCidade : String ): String;
    function  GetCFOPMega( CFOP1 : String; CFOP2 : String = '' ): String;
    function  GetDescResumida( NaturezaOpId : String ): String;
    function  GetCategoria( CategoriaId : Integer ):String;

    {Funções a serem verificadas..}
    function  ConsisteCodPadraoTebas( NaturezaOpId : Integer ):String;

    {Formatações usada em toda montagem da linha dos arquivos}
    function AspasDupla(conteudo: String):String;
    function InsDelimitador(conteudo:String):String;
    function AdicCaracter(Str : String; Caracter : Char; Tamanho: Integer;Lado : String = 'D'): String;

    function FormatValue( Value: Variant; Size : Integer; Mask : String ):String;
    function FormatCNPJ(Text : String) : String;

    procedure SeparaDDDTelefone(var DDD : String; var Telefone : String );

    {Cria MyBase dos Cds para processamento em memoria..}
    procedure CriaDataSets;

    {Consistencias para evitar bugs em tempo de execução}
    function ConsisteValor(vlr: variant):real;
    function ConsisteInteiro(vlr: variant):String;
    function ConsisteNull(vlr: variant):String;
    function ConsisteBool(vlr: variant):boolean;
    procedure ExportNFeBarueriTipo1;
    procedure ExportNFeBarueriTipo2;
    procedure ExportNFeBarueriTipo3( Imposto : String; Valor : Currency );
    procedure ExportNFeBarueriTipo9( TotalReg : Integer );
    procedure ExportREDFTipo10;
    procedure ExportREDFTipo20(TipoNota: Integer);
    procedure ExportREDFTipo30( ProdServId : String; Descr : WideString; VlrUnit, VlrTotal : Currency;
        TipoReg : String = 'P' ) ;
    procedure ExportREDFTipo40(AliquotaISS: Currency);
    procedure ExportREDFTipo50( TipoReg : String = 'P' );
    procedure ExportREDFTipo60;
    procedure ExportREDFTipo90(Total20, Total30, Total40_60: Integer);
    procedure GerarPesqREDF_NFE;
    procedure GerarPesqREDF_NFS;
    procedure ProcessarNotaREDF(TipoNota: Integer);
    procedure LogHist( Text : String; Limpar : Boolean = False; Memo : Integer = 1 );
    procedure ProcessarNotaEFD;
    procedure EFD_EncerrarBloco( Reg : string; Qtd_linC : Integer);
    procedure Registro0000;
    procedure Registro0001( Reg, Ind_Mov : string );
    procedure Registro0005;
    procedure Registro0100;
    procedure Registro0150;
    procedure Registro0190;
    procedure Registro0200;
    procedure Registro0400;
    procedure Registro0450;
    procedure Registro0460;
    procedure RegistroC100( cds : TClientDataSet; Ind_Oper, Ind_Emit, Cod_Mod : String );
    procedure RegistroC100_Det(cds: TClientDataSet; Ind_Oper, Ind_Emit, Cod_Mod: String);
    procedure RegistroC110( cds : TClientDataSet );
    function RegistroC113( cds: TClientDataSet; Ind_Oper, Ind_Emit, Cod_Mod: String) : Integer;
    procedure RegistroC120;
    procedure RegistroC140( CondPagtoId : String );
    procedure RegistroC141( CondPagtoId : String );
    procedure RegistroC160( cds: TClientDataSet );
    procedure RegistroC170( cds: TClientDataSet; Ind_Oper, CFOP : String );
    procedure RegistroC170Serv(cds: TClientDataSet; Ind_Oper, CFOP: String);
    function EFD_NFE_PadraoSQL( PadraoAnd : Boolean = True ) : string;
    function EFD_NFS_PadraoSQL( PadraoAnd : Boolean = True ) : string;
    procedure EFD_Saida;
    procedure EFD_Entrada;
    procedure ProcessaCargaEFDPesquisa(iSqlParams: String; var cds: TClientDataSet; idx: string);
    procedure RegistroC172(cds: TClientDataSet);
    procedure RegistroC190( Ind_Oper : String; cdsP : TClientDataSet; var TGrpItem : Integer );
    procedure RegistroH005;
    function Registro9900 : Integer;
    procedure EFD_Bloco9_Insert(Reg: String; Qtd: Integer);
    procedure NFSeServBarueri;
    procedure NFSeServSalvador;
    function ProcurarMunicipio( Municipio : String; SiglaUFID : String ) : string;
    function ExportNFeSalvadorDescricao : WideString;
    function ProcurarPaisBacen(Pais: String): string;


  public
   { Public declarations }
   procedure ExportarEntidade;
   procedure Integracao(var F : TextFile; var cdsIntDespesa : TClientDataSet; RdvId : Integer; DataFechamento : TDate );
   procedure GeraMovimentacao( DataInicial,DataFinal : TDateTime );
  end;

const
    EmailContabilTMB = 'contabil@toshibamedical.com.br';
    NomeTMB = 'TOSHIBA MEDICAL DO BRASIL LTDA.';

    select_eISS = 'SELECT EF_EMPRESA.CPF_CNPJ,' +
                  '       EF_NFS.DATAEMISSAOID,' +
                  '       ( SELECT ''15/'' || TO_CHAR( SYSDATE, ''MM/YYYY'' ) FROM DUAL ) DATAVENCIMENTO,' +
                  '       EF_NFS.NFSID,' +
                  '       ''MISTA'' TIPONOTA,' +
                  '       DECODE(NVL(EF_NFS.CANCELADA, 0), 1, ''C'', 0, ''N'') SITUACAONOTA,' +
                  '       ''00000'' SERIENOTA,' +
                  '       EF_NFSSERVICOGRUPO.IMPOSTOSERVICOID,' +
                  '       DECODE(NVL(EF_NFS.CANCELADA, 0), 1, 0, 0, EF_NFS.VLRTOTALNOTA ) VLRTOTALNOTA,' +
                  '       DECODE(NVL(EF_NFS.CANCELADA, 0), 1, 0, 0, EF_NFS.VLRTOTALSERVICO ) VLRTOTALSERVICO,' +
                  '       ''000'' DEDUCAO,' +
                  '       DECODE(NVL(EF_NFS.CANCELADA, 0), 1, 0, 0, EF_NFSSERVICOGRUPO.VLRSERVICO ) VLRSERVICO,' +
                  '       0 AS VLRISS,' +
                  '       EF_ENTIDADE.CPFCNPJ CPFCNPJ_TOMADOR,' +
                  '       EF_NFS.CIDADE MUNICIPIO_TOMADOR,' +
                  '       EF_NFS.SIGLAUFID UF_TOMADOR,' +
                  '       ''N'' ISSDEVIDO,' +
                  '       EF_EMPRESA.CPF_CNPJ CPFCNPJ_PRESTADOR,' +
                  '       EF_NFS.CIDADE MUNICIPIO_PRESTADOR,' +
                  '       EF_EMPRESA.SIGLAUFID UF_PRESTADOR,' +
                  '       ''N'' PRESTADOREXTERIOR' +
                  '  FROM EF_NFS EF_NFS,' +
                  '       EF_ENTIDADE EF_ENTIDADE,' +
                  '       EF_EMPRESA EF_EMPRESA,' +
                  '       (SELECT EF_NFSSERVICO.EMPRESAID,' +
                  '               EF_NFSSERVICO.NFSID,' +
                  '               EF_NFSSERVICO.DATAEMISSAOID,' +
                  '               EF_SERVICO.IMPOSTOSERVICOID,' +
                  '               SUM(NVL(EF_NFSSERVICO.VLRSERVICO, 0)) VLRSERVICO,' +
                  '               SUM(NVL(EF_NFSSERVICO.VLRISS, 0)) VLRISS' +
                  '          FROM EF_NFSSERVICO EF_NFSSERVICO, EF_SERVICO EF_SERVICO' +
                  '         WHERE EF_SERVICO.EMPRESAID(+) = EF_NFSSERVICO.EMPRESAID' +
                  '           AND EF_SERVICO.SERVICOID(+) = EF_NFSSERVICO.SERVICOID' +
                  '         GROUP BY EF_NFSSERVICO.EMPRESAID,' +
                  '                  EF_NFSSERVICO.NFSID,' +
                  '                  EF_NFSSERVICO.DATAEMISSAOID,' +
                  '                  EF_SERVICO.IMPOSTOSERVICOID) EF_NFSSERVICOGRUPO' +
                  '' +
                  ' WHERE EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                  '   AND EF_NFS.EMPRESAID = 1' +
                  '   AND EF_NFS.EMPRESAID = EF_NFSSERVICOGRUPO.EMPRESAID' +
                  '   AND EF_NFS.NFSID = EF_NFSSERVICOGRUPO.NFSID' +
                  '   AND EF_NFS.DATAEMISSAOID = EF_NFSSERVICOGRUPO.DATAEMISSAOID' +
                  '   AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID';

  Select_NFS_Ent =  ' SELECT DISTINCT EF_NFS.ENTIDADEID,' +
                    '                 EF_ENTIDADE.CPFCNPJ CPFCNPJ_DESTINATARIO,' +
                    '                 EF_ENTIDADE.FISICAJURIDICA, ' +
                    '                 EF_ENTIDADE.INSCRESTADUAL,' +
                    '                 EF_NFS.NOME,' +
                    '                 EF_NFS.CEPID,' +
                    '                 EF_NFS.NUMERO,' +
                    '                 EF_NFS.COMPLEMENTO,' +
                    '                 EF_NFS.ENDERECO,' +
                    '                 EF_NFS.BAIRRO,' +
                    '                 EF_NFS.CIDADE,' +
                    '                 EF_NFS.SIGLAUFID,' +
                    '                 EF_NFS.PAIS,' +
                    '                 EF_MUNICIPIOIBGE.MUNICIPIOIBGEID' +
                    '   FROM EF_NFS EF_NFS,' +
                    '        EF_ENTIDADE EF_ENTIDADE,' +
                    '        EF_EMPRESA EF_EMPRESA,' +
                    '        EF_CONDPAGTO EF_CONDPAGTO,' +
                    '        EF_NATUREZAOP EF_NATUREZAOP,' +
                    '        EF_ENTIDADE EF_ENTIDADE_TRANSP,' +
                    '        EF_MUNICIPIOIBGE,' +
                    '        CP_UNIDADESFEDERACAO ' +
                    '  WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID' +
                    '    AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                    '    AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFS.TRANSPORTADORID' +
                    '    AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID' +
                    '    AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFS.CONDPAGTOID' +
                    '    AND EF_NFS.CIDADE = EF_MUNICIPIOIBGE.DESCRICAO2(+)' +
                    '    AND EF_NFS.SIGLAUFID = EF_MUNICIPIOIBGE.SIGLAUFID(+) ' +
                    '    AND EF_NFS.SIGLAUFID = CP_UNIDADESFEDERACAO.SIGLAUFID(+)' +
                    '    AND NVL(EF_NATUREZAOP.DOCINTERNO, 0) = 0' +
                    '    AND NVL(EF_NFS.VLRTOTALSERVICO, 0) = 0';

  Select_NFE_Ent =  'SELECT DISTINCT EF_NFE.ENTIDADEID, '+
                    '                EF_ENTIDADE.CPFCNPJ CPFCNPJ_DESTINATARIO, '+
                    '                EF_ENTIDADE.FISICAJURIDICA, '+
                    '                EF_ENTIDADE.INSCRESTADUAL, '+
                    '                EF_NFE.NOME, '+
                    '                EF_NFE.CEPID, '+
                    '                EF_NFE.NUMERO, '+
                    '                EF_NFE.COMPLEMENTO, '+
                    '                EF_NFE.ENDERECO, '+
                    '                EF_NFE.BAIRRO, '+
                    '                EF_NFE.CIDADE, '+
                    '                EF_NFE.SIGLAUFID, '+
                    '                EF_NFE.PAIS, '+
                    '                EF_MUNICIPIOIBGE.MUNICIPIOIBGEID '+
                    '  FROM EF_NFE EF_NFE, '+
                    '       EF_ENTIDADE EF_ENTIDADE, '+
                    '       EF_EMPRESA EF_EMPRESA, '+
                    '       EF_NATUREZAOP EF_NATUREZAOP, '+
                    '       EF_ENTIDADE EF_ENTIDADE_TRANSP, '+
                    '       EF_MUNICIPIOIBGE, '+
                    '       CP_UNIDADESFEDERACAO '+
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID '+
                    '   AND EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID '+
                    '   AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFE.TRANSPORTADORID '+
                    '   AND EF_EMPRESA.EMPRESAID = EF_NFE.EMPRESAID '+
                    '   AND EF_NFE.CIDADE = EF_MUNICIPIOIBGE.DESCRICAO2(+) '+
                    '   AND EF_NFE.SIGLAUFID = EF_MUNICIPIOIBGE.SIGLAUFID(+) ' +
                    '   AND EF_NFE.SIGLAUFID = CP_UNIDADESFEDERACAO.SIGLAUFID(+) '+
                    '   AND NVL(EF_NATUREZAOP.DOCINTERNO, 0) = 0 ';


Select_NFS_Transp = 'SELECT DISTINCT EF_NFS.TRANSPORTADORID ENTIDADEID, ' +
                    '                EF_ENTIDADE_TRANSP.CPFCNPJ CPFCNPJ_DESTINATARIO, ' +
                    '                EF_ENTIDADE_TRANSP.FISICAJURIDICA, ' +
                    '                EF_ENTIDADE_TRANSP.INSCRESTADUAL, ' +
                    '                EF_ENTIDADE_TRANSP.NOME, ' +
                    '                EF_ENTIDADE_TRANSP.CEPID, ' +
                    '                EF_ENTIDADE_TRANSP.NUMERO, ' +
                    '                EF_ENTIDADE_TRANSP.COMPLEMENTO, ' +
                    '                EF_ENTIDADE_TRANSP.ENDERECO, ' +
                    '                EF_ENTIDADE_TRANSP.BAIRRO, ' +
                    '                EF_ENTIDADE_TRANSP.CIDADE, ' +
                    '                EF_ENTIDADE_TRANSP.SIGLAUFID, ' +
                    '                EF_ENTIDADE_TRANSP.PAIS, ' +
                    '                EF_MUNICIPIOIBGE.MUNICIPIOIBGEID ' +
                    '  FROM EF_NFS EF_NFS, ' +
                    '       EF_ENTIDADE EF_ENTIDADE, ' +
                    '       EF_EMPRESA EF_EMPRESA, ' +
                    '       EF_CONDPAGTO EF_CONDPAGTO, ' +
                    '       EF_NATUREZAOP EF_NATUREZAOP, ' +
                    '       EF_ENTIDADE EF_ENTIDADE_TRANSP, ' +
                    '       EF_MUNICIPIOIBGE, ' +
                    '       CP_UNIDADESFEDERACAO ' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID ' +
                    '   AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID ' +
                    '   AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFS.TRANSPORTADORID ' +
                    '   AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID ' +
                    '   AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFS.CONDPAGTOID ' +
                    '   AND EF_ENTIDADE_TRANSP.CIDADE = EF_MUNICIPIOIBGE.DESCRICAO2(+) ' +
                    '   AND EF_ENTIDADE_TRANSP.SIGLAUFID = EF_MUNICIPIOIBGE.SIGLAUFID(+) ' +
                    '   AND EF_ENTIDADE_TRANSP.SIGLAUFID = CP_UNIDADESFEDERACAO.SIGLAUFID(+) ' +
                    '   AND NVL(EF_NATUREZAOP.DOCINTERNO, 0) = 0 ' +
                    '   AND NVL(EF_NFS.VLRTOTALSERVICO, 0) = 0 ' +
                    '   AND EF_NFS.TRANSPORTADORID <> 40002 ';

  Select_NFS =      'SELECT EF_NFS.EMPRESAID,' +
                    '       EF_NFS.NFSID NOTAID,' +
                    '       EF_NFS.DATAEMISSAOID DATAEMISSAOID,' +
                    '       EF_NFS.DATAEMISSAONFEID DATAEMISSAONFEID,' +
                    '       NVL( EF_NFS.CANCELADA, 0 ) CANCELADA,' +
                    '       ''002'' SERIENOTA,' +
                    '       EF_NFS.NATUREZAOPID NATUREZAOPID,' +
                    '       EF_NATUREZAOP.CFOP,' +
                    '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA, ' +
                    '       EF_ENTIDADE.EMAILNFE,' +
                    '       EF_NFS.EMPRESANFSREFID, ' +
                    '       EF_NFS.NFSREFID, ' +
                    '       EF_NFS.DATANFSREFID, ' +
                    '       EF_NFS.NFEID, ' +
                    '       EF_NFS.DATAEMISSAONFEID, ' +
                    '       EF_NFS.VLRTOTALPRODUTO VLRTOTALPRODUTO,' +
                    '       VLRTOTALPIS, ' +
                    '       VLRTOTALCOFINS, ' +
                    '       EF_NFS.VLRTOTALSERVICO, ' +
                    '       EF_NFS.VLRTOTALIPI,'  +
                    '       EF_NFS.VLRTOTALISS, ' +
                    '       EF_NFS.VLRSEGURO VLRSEGURO,' +
                    '       EF_NFS.VLRFRETE VLRFRETE,' +
                    '       EF_NFS.VLRDESPESAACESSORIA VLRDESPESAACESSORIA,' +
                    '       EF_NFS.VLRTOTALNOTA VLRTOTALNOTA,' +
                    '       EF_NFS.VLRTOTALICMS VLRTOTALICMS,' +
                    '       EF_NFS.EMBQTDVOLUMES EMBQTDVOLUMES,' +
                    '       EF_NFS.EMBESPECIE EMBESPECIE,' +
                    '       EF_NFS.EMBPESOBRUTO EMBPESOBRUTO,' +
                    '       EF_NFS.EMBPESOLIQUIDO EMBPESOLIQUIDO,' +
                    '       EF_NFS.PLACAVEICULO PLACAVEICULO,' +
                    '       EF_NFS.EMBMARCA, ' +
                    '       EF_NFS.EMBNUMERO, ' +
                    '       EF_NFS.VLRTOTALBASEICMS, ' +
                    '       EF_NFS.OBSERVACAOID,' +
                    '       TO_CHAR(EF_NFS.DESCRICAOOBSERVACAO) OBS,' +
                    '       EF_NFS.ENTIDADEID ENTIDADEID,' +
                    '       EF_ENTIDADE.CPFCNPJ CPFCNPJ_DESTINATARIO, ' +
                    '       EF_EMPRESA.CPF_CNPJ CPFCNPJEMPRESA, ' +
                    '       EF_EMPRESA.INSCRMUNICIPAL, ' +
                    '       EF_EMPRESA.INSCRESTADUAL, ' +
                    '       EF_EMPRESA.NOME NOMEEMPRESA, ' +
                    '       EF_EMPRESA.CEPID CEPIDDEMPRESA,' +
                    '       EF_EMPRESA.NUMERO NUMEROEMPRESA,' +
                    '       EF_EMPRESA.COMPLEMENTO COMPLEMENTOEMPRESA,' +
                    '       EF_EMPRESA.ENDERECO ENDERECOEMPRESA,' +
                    '       EF_EMPRESA.BAIRRO BAIRROEMPRESA,' +
                    '       EF_EMPRESA.CIDADE CIDADEEMPRESA,' +
                    '       EF_EMPRESA.SIGLAUFID SIGLAUFIDEMPRESA, ' +
                    '       EF_ENTIDADE.TELEFONE TELEFONEENT,' +
                    '       EF_NFS.CONDPAGTOID,' +
                    '       EF_CONDPAGTO.NUMPARCELA,' +
                    '       EF_NFS.NOME,' +
                    '       EF_NFS.CEPID,' +
                    '       EF_NFS.NUMERO,' +
                    '       EF_NFS.COMPLEMENTO,' +
                    '       EF_NFS.ENDERECO,' +
                    '       EF_NFS.BAIRRO,' +
                    '       EF_NFS.CIDADE,' +
                    '       EF_NFS.SIGLAUFID,' +
                    '       EF_NFS.MODALIDADEFRETE, ' +
                    '       DECODE( EF_NFS.MODALIDADEFRETE, ''E'', 0, 1 ) MODFRETE,  ' +
                    '       EF_NFS.PAIS,' +
                    '       EF_ENTIDADE_TRANSP.NOME NOMETRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CPFCNPJ CPFCNPJTRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CEPID CEPIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.NUMERO NUMEROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.COMPLEMENTO COMPLEMENTOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.ENDERECO ENDERECOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.BAIRRO BAIRROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.CIDADE CIDADETRANSP,' +
                    '       EF_ENTIDADE_TRANSP.SIGLAUFID SIGLAUFIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.INSCRESTADUAL INSCRESTADUALTRANSP ' +
                    '  FROM EF_NFS EF_NFS,' +
                    '       EF_ENTIDADE EF_ENTIDADE,' +
                    '       EF_EMPRESA EF_EMPRESA,' +
                    '       EF_CONDPAGTO EF_CONDPAGTO,' +
                    '       EF_NATUREZAOP EF_NATUREZAOP,' +
                    '       EF_ENTIDADE EF_ENTIDADE_TRANSP' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID' +
                    '       AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                    '       AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFS.TRANSPORTADORID' +
                    '       AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID' +
                    '       AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFS.CONDPAGTOID';

  Select_NFSItem =  'SELECT EF_NFSITEM.EMPRESAID,' +
                    '       EF_NFSITEM.NFSID NOTAID,' +
                    '       EF_NFSITEM.DATAEMISSAOID,' +
                    '       EF_NFSITEM.ITEMID,' +
                    '       EF_NFSITEM.PRODUTOID,' +
                    '       EF_NFSITEM.DESCRICAOPRODUTO,' +
                    '       EF_NFSITEM.QUANTIDADE,' +
                    '       EF_NFSITEM.VLRPRECOUNITARIO,' +
                    '       EF_NFSITEM.VLRPRECOTOTAL,' +
                    '       EF_NFSITEM.SITTRIBUTARIAESTADUAL,' +
                    '       EF_NFSITEM.ALIQUOTAICMS,' +
                    '       EF_PRODUTO.NCMID,' +
                    '       EF_NFSITEM.ALIQUOTAIPI,' +
                    '       EF_NFSITEM.VLRIPI,' +
                    '       EF_NFSITEM.VLRBASEICMS, ' +
                    '       EF_NFSITEM.ALIQUOTAICMS, ' +
                    '       EF_NFSITEM.VLRICMS, ' +
                    '       EF_NFSITEM.VLRISENTASICMS, ' +
                    '       EF_NFSITEM.VLROUTRASICMS, ' +
                    '       EF_PRODUTO.UNIDADEID' +
                    '  FROM EF_NFSITEM,' +
                    '       EF_NFS, ' +
                    '       EF_PRODUTO EF_PRODUTO' +
                    ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFSITEM.EMPRESAID' +
                    '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID ' +
                    '       AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID ' +
                    '       AND EF_NFS.NFSID = EF_NFSITEM.NFSID ' +
                    '       AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID';

 Select_NFSItemGrp =  'SELECT DISTINCT ' +
                       '       EF_NFSITEM.EMPRESAID, ' +
                       '       EF_NFSITEM.PRODUTOID, ' +
                       '       EF_NFSITEM.EMPRESAID || EF_NFSITEM.PRODUTOID COD_ITEM, ' +
                       '       EF_NFSITEM.DESCRICAOPRODUTO, ' +
                       '       EF_EMPRESA.ALIQUOTAICMSNAOCONTRIB ALIQUOTAICMS, ' +
                       '       EF_PRODUTO.NCMID, ' +
                       '       EF_PRODUTO.UNIDADEID, ' +
                       '       EF_TIPOITEM.TIPOITEMID, ' +
                       '       EF_GENEROITEM.GENEROITEMID ' +
                       '  FROM EF_NFSITEM, ' +
                       '       EF_NFS, ' +
                       '       EF_PRODUTO EF_PRODUTO, ' +
                       '       EF_TIPOITEM, ' +
                       '       EF_GENEROITEM, ' +
                       '       EF_EMPRESA ' +
                       ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFSITEM.EMPRESAID ' +
                       '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID ' +
                       '       AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID ' +
                       '       AND EF_NFS.NFSID = EF_NFSITEM.NFSID ' +
                       '       AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID ' +
                       '       AND EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID ' +
                       '       AND EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID ' +
                       '       AND EF_NFS.EMPRESAID = EF_EMPRESA.EMPRESAID ';

 Select_NFEItemGrp =   ' SELECT DISTINCT ' +
                       '       EF_NFEITEM.EMPRESAID, ' +
                       '       EF_NFEITEM.PRODUTOID, ' +
                       '       EF_NFEITEM.EMPRESAID || EF_NFEITEM.PRODUTOID COD_ITEM, ' +
                       '       EF_NFEITEM.DESCRICAOPRODUTO, ' +
                       '       EF_EMPRESA.ALIQUOTAICMSNAOCONTRIB ALIQUOTAICMS, ' +
                       '       EF_PRODUTO.NCMID, ' +
                       '       EF_PRODUTO.UNIDADEID, ' +
                       '       EF_TIPOITEM.TIPOITEMID, ' +
                       '       EF_GENEROITEM.GENEROITEMID ' +
                       '  FROM EF_NFEITEM, ' +
                       '       EF_NFE, ' +
                       '       EF_PRODUTO EF_PRODUTO, ' +
                       '       EF_TIPOITEM, ' +
                       '       EF_GENEROITEM, ' +
                       '       EF_EMPRESA ' +
                       ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFEITEM.EMPRESAID ' +
                       '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFEITEM.PRODUTOID ' +
                       '       AND EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID ' +
                       '       AND EF_NFE.NFSID = EF_NFEITEM.NFSID ' +
                       '       AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID ' +
                       '       AND EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID ' +
                       '       AND EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID '+
                       '       AND EF_NFE.EMPRESAID = EF_EMPRESA.EMPRESAID ';

 Select_KdxItemGrp =   ' SELECT ' +
                       '       EF_PRODUTO.EMPRESAID, ' +
                       '       EF_PRODUTO.PRODUTOID, ' +
                       '       EF_PRODUTO.EMPRESAID || EF_PRODUTO.PRODUTOID COD_ITEM, ' +
                       '       EF_PRODUTO.DESCRICAOPORTUGUES DESCRICAOPRODUTO, ' +
                       '       EF_EMPRESA.ALIQUOTAICMSNAOCONTRIB ALIQUOTAICMS, ' +
                       '       EF_PRODUTO.NCMID, ' +
                       '       EF_PRODUTO.UNIDADEID, ' +
                       '       EF_TIPOITEM.TIPOITEMID, ' +
                       '       EF_GENEROITEM.GENEROITEMID ' +
                       '  FROM EF_PRODUTO, ' +
                       '       EF_EMPRESA, ' +
                       '       EF_TIPOITEM, ' +
                       '       EF_GENEROITEM, ' +
                       '       (SELECT EMPRESAID, ' +
                       '               PRODUTOID, ' +
                       '               NUMDOCUMENTO, ' +
                       '               DATAOCORRENCIA, ' +
                       '               QUANTIDADESALDO, ' +
                       '               NVL(VLRCUSTOMEDIO, 0) VLRCUSTOMEDIO, ' +
                       '               NVL(VLRCUSTOMEDIOTOTAL, 0) VLRCUSTOMEDIOTOTAL ' +
                       '          FROM EF_KARDEX ' +
                       '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID) IN ' +
                       '               (SELECT EMPRESAID, ' +
                       '                       PRODUTOID, ' +
                       '                       MAX(DATAOCORRENCIA), ' +
                       '                       MAX(KARDEXID) ' +
                       '                  FROM EF_KARDEX ' +
                       '                 WHERE ';

 Select_KdxItemGrp2 =  '                 GROUP BY EMPRESAID, PRODUTOID) ' +
                       '         ORDER BY 1, 2) EF_KDX_POSICAO ' +
                       ' WHERE EF_PRODUTO.EMPRESAID = EF_KDX_POSICAO.EMPRESAID ' +
                       '   AND EF_PRODUTO.PRODUTOID = EF_KDX_POSICAO.PRODUTOID ' +
                       '   AND EF_PRODUTO.EMPRESAID = EF_EMPRESA.EMPRESAID ' +
                       '   AND EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID ' +
                       '   AND EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID ' +
                       '   AND NVL(EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL, 0) > 0 ' +
                       '   AND NVL(EF_KDX_POSICAO.QUANTIDADESALDO, 0) > 0 ';









































 Select_EFD_S_C190 ='SELECT EF_NFSITEM.SITTRIBUTARIAESTADUAL, ' +
                    '       EF_NATUREZAOP.CFOP, ' +
                    '       EF_NFS.OBSERVACAOID, ' +
                    '       EF_NFSITEM.ALIQUOTAICMS, ' +
                    '       ROUND( SUM((NVL(EF_NFS.VLRFRETE, 0) + NVL(EF_NFS.VLRSEGURO, 0) + ' +
                    '           NVL(EF_NFS.VLRDESPESAACESSORIA, 0) + ' +
                    '           (NVL(EF_NFS.VLRTOTALIPI, 0))) / GRP_ITEM.QTD), 2 ) VLR_OPR, ' +
                    '       SUM(NVL(EF_NFSITEM.VLRBASEICMS, 0)) VLRBASEICMS, ' +
                    '       SUM(NVL(EF_NFSITEM.VLRICMS, 0)) VLRICMS, ' +
                    '       SUM(NVL(EF_NFSITEM.VLRIPI, 0)) VLRIPI ' +
                    '  FROM EF_NFS, ' +
                    '       EF_NATUREZAOP, ' +
                    '       EF_NFSITEM, ' +
                    '       (SELECT EF_NFSITEM.EMPRESAID, ' +
                    '               EF_NFSITEM.NFSID, ' +
                    '               EF_NFSITEM.DATAEMISSAOID, ' +
                    '               COUNT(*) QTD ' +
                    '          FROM EF_NFSITEM ' +
                    '         GROUP BY EF_NFSITEM.EMPRESAID, ' +
                    '                  EF_NFSITEM.NFSID, ' +
                    '                  EF_NFSITEM.DATAEMISSAOID) GRP_ITEM ' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID ' +
                    '   AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID ' +
                    '   AND EF_NFS.NFSID = EF_NFSITEM.NFSID ' +
                    '   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID ' +
                    '   AND EF_NFS.EMPRESAID = GRP_ITEM.EMPRESAID ' +
                    '   AND EF_NFS.NFSID = GRP_ITEM.NFSID ' +
                    '   AND EF_NFS.DATAEMISSAOID = GRP_ITEM.DATAEMISSAOID ';

Select_EFD_E_C190 = 'SELECT EF_NFEITEM.SITTRIBUTARIAESTADUAL, ' +
                    '       EF_NATUREZAOP.CFOP, ' +
                    '       EF_NFE.OBSERVACAOID, ' +
                    '       EF_NFEITEM.ALIQUOTAICMS, ' +
                    '       ROUND( SUM((NVL(EF_NFE.VLRFRETE, 0) + NVL(EF_NFE.VLRSEGURO, 0) + ' +
                    '           NVL(EF_NFE.VLRDESPESAACESSORIA, 0) + ' +
                    '           (NVL(EF_NFE.VLRTOTALIPI, 0))) / GRP_ITEM.QTD), 2 ) VLR_OPR, ' +
                    '       SUM(NVL(EF_NFEITEM.VLRBASEICMS, 0)) VLRBASEICMS, ' +
                    '       SUM(NVL(EF_NFEITEM.VLRICMS, 0)) VLRICMS, ' +
                    '       SUM(NVL(EF_NFEITEM.VLRIPI, 0)) VLRIPI ' +
                    '  FROM EF_NFE, ' +
                    '       EF_NATUREZAOP, ' +
                    '       EF_NFEITEM, ' +
                    '       (SELECT EF_NFEITEM.EMPRESAID, ' +
                    '               EF_NFEITEM.NFEID, ' +
                    '               EF_NFEITEM.DATAEMISSAOID, ' +
                    '               COUNT(*) QTD ' +
                    '          FROM EF_NFEITEM ' +
                    '         GROUP BY EF_NFEITEM.EMPRESAID, ' +
                    '                  EF_NFEITEM.NFEID, ' +
                    '                  EF_NFEITEM.DATAEMISSAOID) GRP_ITEM ' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID ' +
                    '   AND EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID ' +
                    '   AND EF_NFE.NFEID = EF_NFEITEM.NFEID ' +
                    '   AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID ' +
                    '   AND EF_NFE.EMPRESAID = GRP_ITEM.EMPRESAID ' +
                    '   AND EF_NFE.NFEID = GRP_ITEM.NFEID ' +
                    '   AND EF_NFE.DATAEMISSAOID = GRP_ITEM.DATAEMISSAOID ';

 Select_EFD_S_C190B = ' GROUP BY EF_NFSITEM.SITTRIBUTARIAESTADUAL, ' +
                    '          EF_NATUREZAOP.CFOP, ' +
                    '          EF_NFS.OBSERVACAOID, ' +
                    '          EF_NFSITEM.ALIQUOTAICMS ';

 Select_EFD_E_C190B = ' GROUP BY EF_NFEITEM.SITTRIBUTARIAESTADUAL, ' +
                    '          EF_NATUREZAOP.CFOP, ' +
                    '          EF_NFE.OBSERVACAOID, ' +
                    '          EF_NFEITEM.ALIQUOTAICMS ';

 Select_NFSUnidGrp  =  ' SELECT DISTINCT EF_PRODUTO.UNIDADEID ' +
                       '   FROM EF_NFSITEM,' +
                       '        EF_NFS,' +
                       '        EF_PRODUTO EF_PRODUTO,' +
                       '        EF_UNIDADE,' +
                       '        EF_TIPOITEM,' +
                       '        EF_GENEROITEM' +
                       '  WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFSITEM.EMPRESAID' +
                       '    AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID' +
                       '    AND EF_PRODUTO.UNIDADEID = EF_UNIDADE.UNIDADEID(+)' +
                       '    AND EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID' +
                       '    AND EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID' +
                       '    AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
                       '    AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
                       '    AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
                       '    AND EF_PRODUTO.UNIDADEID IS NOT NULL ';

 Select_NFEUnidGrp  =  ' SELECT DISTINCT EF_PRODUTO.UNIDADEID ' +
                       '   FROM EF_NFEITEM,' +
                       '        EF_NFE,' +
                       '        EF_PRODUTO EF_PRODUTO,' +
                       '        EF_UNIDADE,' +
                       '        EF_TIPOITEM,' +
                       '        EF_GENEROITEM' +
                       '  WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFEITEM.EMPRESAID' +
                       '    AND EF_PRODUTO.PRODUTOID(+) = EF_NFEITEM.PRODUTOID' +
                       '    AND EF_PRODUTO.UNIDADEID = EF_UNIDADE.UNIDADEID(+)' +
                       '    AND EF_TIPOITEM.TIPOITEMID(+) = EF_PRODUTO.TIPOITEMID' +
                       '    AND EF_GENEROITEM.GENEROITEMID(+) = EF_PRODUTO.GENEROITEMID' +
                       '    AND EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID' +
                       '    AND EF_NFE.NFSID = EF_NFEITEM.NFSID' +
                       '    AND EF_NFE.DATAEMISSAOID = EF_NFEITEM.DATAEMISSAOID' +
                       '    AND EF_PRODUTO.UNIDADEID IS NOT NULL ';



  Select_NFSNatGrp =   'SELECT DISTINCT ' +
                       '       EF_NFS.NATUREZAOPID NATUREZAOPID,' +
                       '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA ' +
                       '  FROM EF_NFS EF_NFS,' +
                       '       EF_ENTIDADE EF_ENTIDADE,' +
                       '       EF_EMPRESA EF_EMPRESA,' +
                       '       EF_CONDPAGTO EF_CONDPAGTO,' +
                       '       EF_NATUREZAOP EF_NATUREZAOP,' +
                       '       EF_ENTIDADE EF_ENTIDADE_TRANSP' +
                       ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID' +
                       '       AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID' +
                       '       AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFS.TRANSPORTADORID' +
                       '       AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID' +
                       '       AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_NFS.CONDPAGTOID';

  Select_NFENatGrp =   'SELECT DISTINCT ' +
                       '       EF_NFE.NATUREZAOPID NATUREZAOPID,' +
                       '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA ' +
                       '  FROM EF_NFE,' +
                       '       EF_ENTIDADE EF_ENTIDADE,' +
                       '       EF_EMPRESA EF_EMPRESA,' +
                       '       EF_NATUREZAOP EF_NATUREZAOP,' +
                       '       EF_ENTIDADE EF_ENTIDADE_TRANSP' +
                       ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID' +
                       '       AND EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID' +
                       '       AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFE.TRANSPORTADORID' +
                       '       AND EF_EMPRESA.EMPRESAID = EF_NFE.EMPRESAID';

  Select_NFSServ =  ' SELECT EMPRESAID,' +
                    '      NFSID NOTAID,' +
                    '      DATAEMISSAOID,' +
                    '      ITEMID,' +
                    '      SERVICOID,' +
                    '      TO_CHAR( DESCRICAOSERVICO ) DESCRICAOSERV,' +
                    '      VLRISS,' +
                    '      VLRSERVICO,' +
                    '      ALIQUOTACOFINS,' +
                    '      VLRCOFINS,' +
                    '      ALIQUOTAPIS,' +
                    '      VLRPIS,' +
                    '      VLRRETCOFINS,' +
                    '      VLRRETPIS,' +
                    '      VLRRETCSLL,' +
                    '      USUARIO,' +
                    '      VLRRETIRPJ,' +
                    '      VLRRETIRPF' +
                    ' FROM EF_NFSSERVICO ' +
                    ' WHERE ';

 Select_NFE =      'SELECT EF_NFE.EMPRESAID,' +
                    '       EF_NFE.NFEID NOTAID,' +
                    '       EF_NFE.DATAEMISSAOID DATAEMISSAOID,' +
                    '       EF_NFE.DATAENTRADA, ' +
                    '       EF_NFE.NATUREZAOPID NATUREZAOPID,' +
                    '       EF_NATUREZAOP.CFOP,' +
                    '       EF_NATUREZAOP.DESCRICAOOPERACAONOTA, ' +
                    '       EF_ENTIDADE.EMAILNFE,' +
                    '       EF_NFE.VLRTOTALPRODUTO VLRTOTALPRODUTO,' +
                    '       0 VLRTOTALSERVICO, ' +
                    '       EF_NFE.VLRTOTALIPI,'  +
                    '       0 VLRTOTALISS, ' +
                    '       EF_NFE.VLRSEGURO VLRSEGURO,' +
                    '       EF_NFE.VLRFRETE VLRFRETE,' +
                    '       EF_NFE.VLRDESPESAACESSORIA VLRDESPESAACESSORIA,' +
                    '       EF_NFE.VLRTOTALNOTA VLRTOTALNOTA,' +
                    '       EF_NFE.VLRTOTALICMS VLRTOTALICMS,' +
                    '       EF_NFE.EMBQTDVOLUMES EMBQTDVOLUMES,' +
                    '       EF_NFE.EMBESPECIE EMBESPECIE,' +
                    '       EF_NFE.EMBPESOBRUTO EMBPESOBRUTO,' +
                    '       EF_NFE.EMBPESOLIQUIDO EMBPESOLIQUIDO,' +
                    '       EF_NFE.PLACAVEICULO PLACAVEICULO,' +
                    '       EF_NFE.EMBMARCA, ' +
                    '       EF_NFE.EMBNUMERO, ' +
                    '       EF_NFE.VLRTOTALBASEICMS, ' +
                    '       TO_CHAR(EF_NFE.DESCRICAOOBSERVACAO) OBS,' +
                    '       EF_NFE.ENTIDADEID ENTIDADEID,' +
                    '       EF_ENTIDADE.CPFCNPJ CPFCNPJ_DESTINATARIO, ' +
                    '       EF_EMPRESA.CPF_CNPJ CPFCNPJEMPRESA, ' +
                    '       EF_EMPRESA.INSCRMUNICIPAL, ' +
                    '       EF_EMPRESA.INSCRESTADUAL, ' +
                    '       EF_ENTIDADE.TELEFONE TELEFONEENT,' +
                    '       0 NUMPARCELA,' +
                    '       EF_NFE.NOME,' +
                    '       EF_NFE.CEPID,' +
                    '       EF_NFE.NUMERO,' +
                    '       EF_NFE.COMPLEMENTO,' +
                    '       EF_NFE.ENDERECO,' +
                    '       EF_NFE.BAIRRO,' +
                    '       EF_NFE.CIDADE,' +
                    '       EF_NFE.SIGLAUFID,' +
                    '       DECODE( EF_NFE.MODALIDADEFRETE, ''E'', 0, 1 ) MODFRETE,  ' +
                    '       EF_NFE.PAIS,' +
                    '       EF_ENTIDADE_TRANSP.NOME NOMETRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CPFCNPJ CPFCNPJTRANSP, ' +
                    '       EF_ENTIDADE_TRANSP.CEPID CEPIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.NUMERO NUMEROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.COMPLEMENTO COMPLEMENTOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.ENDERECO ENDERECOTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.BAIRRO BAIRROTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.CIDADE CIDADETRANSP,' +
                    '       EF_ENTIDADE_TRANSP.SIGLAUFID SIGLAUFIDTRANSP,' +
                    '       EF_ENTIDADE_TRANSP.INSCRESTADUAL INSCRESTADUALTRANSP ' +
                    '  FROM EF_NFE EF_NFE,' +
                    '       EF_ENTIDADE EF_ENTIDADE,' +
                    '       EF_EMPRESA EF_EMPRESA,' +
                    '       EF_NATUREZAOP EF_NATUREZAOP,' +
                    '       EF_ENTIDADE EF_ENTIDADE_TRANSP' +
                    ' WHERE EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID' +
                    '       AND NVL( EF_NATUREZAOP.DOCINTERNO, 0 ) = 0 ' +
                    '       AND EF_ENTIDADE.ENTIDADEID = EF_NFE.ENTIDADEID' +
                    '       AND EF_ENTIDADE_TRANSP.ENTIDADEID = EF_NFE.TRANSPORTADORID' +
                    '       AND EF_EMPRESA.EMPRESAID = EF_NFE.EMPRESAID' +
                    '       AND EF_NFE.TIPONOTA <> ''F''';

  Select_NFEItem =  'SELECT EF_NFEITEM.EMPRESAID,' +
                    '       EF_NFEITEM.NFEID NOTAID,' +
                    '       EF_NFEITEM.DATAEMISSAOID,' +
                    '       EF_NFEITEM.ITEMID,' +
                    '       EF_NFEITEM.PRODUTOID,' +
                    '       EF_NFEITEM.DESCRICAOPRODUTO,' +
                    '       EF_NFEITEM.QUANTIDADE,' +
                    '       EF_NFEITEM.VLRPRECOUNITARIO,' +
                    '       EF_NFEITEM.VLRPRECOTOTAL,' +
                    '       EF_NFEITEM.SITTRIBUTARIAESTADUAL,' +
                    '       EF_NFEITEM.ALIQUOTAICMS,' +
                    '       EF_PRODUTO.NCMID,' +
                    '       EF_NFEITEM.ALIQUOTAIPI,' +
                    '       EF_NFEITEM.VLRIPI,' +
                    '       EF_NFEITEM.VLRBASEICMS, ' +
                    '       EF_NFEITEM.ALIQUOTAICMS, ' +
                    '       EF_NFEITEM.VLRICMS, ' +
                    '       EF_NFEITEM.VLRISENTASICMS, ' +
                    '       EF_NFEITEM.VLROUTRASICMS, ' +
                    '       EF_PRODUTO.UNIDADEID' +
                    '  FROM EF_NFEITEM,' +
                    '       EF_PRODUTO EF_PRODUTO' +
                    ' WHERE EF_PRODUTO.EMPRESAID(+) = EF_NFEITEM.EMPRESAID' +
                    '       AND EF_PRODUTO.PRODUTOID(+) = EF_NFEITEM.PRODUTOID ';

var
  frmIntegracao     : TfrmIntegracao;
  {}
  cdsAuxEntidade,
  cdsAuxNaturezaOp,
  cdsAuxNfe,
  cdsAuxNfeItem,
  cdsAuxNfs,
  cdsAuxNfsParcela,
  cdsAuxNfsServico,
  cdsAuxProduto,
  cdsAuxKardex,
  cdsAuxCondPagto,
  cdsAuxNfsItem,
  cdsAuxCFOPMega,
  cdsAuxEntidadeGrupo,
  cdsAuxObservacao : TClientDataSet;

  Arq,Arq2,A,F         : TextFile;
  PathArq,PathExport   : String;
  TotDisplay2          : integer = 0;
  totDisplay1          : integer = 0;
  TBloco0              : integer = 0;
  TotalItem,Total74    : integer;
  ContadorTitRec       : integer;
  VlrTotalNfe,
  VlrTotalNfs,
  VlrIcms,VlrDesc      : Real;
  EmpresaAtiva         : String;
  Campos,
  Linha                : String;
  EmpresaAtivada       : String;
  CCusto               : array[1..7,1..2] of string;
  DirGeracao           : String;

implementation

uses u_dmRD, FuncoesCliente,FuncoesDSI, u_dmEF, u_Formatacoes, u_Principal, Math,
     u_RelIntegracao, StrUtils, u_dmGSI, cDateTime,u_IntegracaoOnline,
  u_Exportar, u_dmIT;

{$R *.dfm}

procedure TfrmIntegracao.Integracao(var F : TextFile; var cdsIntDespesa : TClientDataSet; RdvId : Integer; DataFechamento : TDate );
var cds        : TClientDataSet;
    iSQL       : String;
    VlrCredito : Currency;
    ItemId     : Integer;
begin
 ItemId     := 1;
 VlrCredito := 0;
 cds  := nil;

 iSQL := 'SELECT RD_RDVITEM.RDVID,'+
         '       EF_ENTIDADE.CONTACONTABILID CONTAFUNCIONARIO,'+
         '       EF_ENTIDADE.NOME,'+
         '       RD_OPERACAO.OPERACAOID,'+
         '       RD_OPERACAO.DESCRICAO,'+
         '       SUM( RD_RDVITEM.VLRDESPESA ) VLRDESPESA,'+
         '       RD_OPERACAO.CONTACONTABILID,'+
         '       EF_DEPARTAMENTO.CENTROCUSTOID'+
         '  FROM RD_OPERACAO,'+
         '       RD_RDVITEM,'+
         '       EF_ENTIDADE,'+
         '       EF_DEPARTAMENTO'+
         ' WHERE EF_ENTIDADE.ENTIDADEID = RD_RDVITEM.RDVID'+
         '   AND RD_OPERACAO.OPERACAOID = RD_RDVITEM.OPERACAOID'+
         '   AND EF_DEPARTAMENTO.DEPARTAMENTOID(+) = EF_ENTIDADE.DEPARTAMENTOID'+
         '   AND RD_RDVITEM.DATAFECHAMENTO = '+ QuotedStr( DateToStr( DataFechamento ) )+
         '   AND RD_RDVITEM.OPERACAOID NOT IN (10, 48, 53, 60, 46, 43, 55,11,16 )'+
         '   AND RD_RDVITEM.RDVID = '+ IntToStr( RdvId )+
         '   AND ( ( RD_OPERACAO.OPERACAO = ''C'' ) OR '+
         '         ( RD_OPERACAO.OPERACAOID = 61  ) ) ';

 if RgpTipoRdv.ItemIndex = 0 then
    iSQL := iSQL + '   AND RD_RDVITEM.TIPOMOEDA = ''R''   '
 else
    iSQL := iSQL + '   AND RD_RDVITEM.TIPOMOEDA = ''D''   ';

 iSQL := iSQL +  ' GROUP BY RD_RDVITEM.RDVID,'+
                 '          EF_ENTIDADE.NOME,'+
                 '          EF_ENTIDADE.CONTACONTABILID,'+
                 '          RD_OPERACAO.OPERACAOID,'+
                 '          RD_OPERACAO.DESCRICAO,'+
                 '          RD_OPERACAO.CONTACONTABILID,'+
                 '          EF_DEPARTAMENTO.CENTROCUSTOID';

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if not Cds.IsEmpty then
     begin
      Screen.Cursor := crHourGlass;
      cds.First;
      while not ( cds.Eof ) do
      begin
       VlrCredito := VlrCredito + cds.FieldByName('VLRDESPESA').AsCurrency;

       cdsIntDespesa.Insert;
       cdsIntDespesa.FieldByName('RDVID').AsInteger          := cds.FieldbyName('RDVID').AsInteger;
       cdsIntDespesa.FieldByName('ITEMID').AsInteger         := ItemId;
       cdsIntDespesa.FieldByName('DATAMOVIMENTOID').AsString := FormatDateTime('ddmmyyyy',LastDayOfMonth( pCnnMain.AppServer.IServerDate ) );
       cdsIntDespesa.FieldByName('CAMPO1').AsString          := '001';
       cdsIntDespesa.FieldByName('CAMPO2').AsString          := '017';

       if cds.FieldbyName('CONTACONTABILID').IsNull then
          raise Exception.Create( 'Conta Contábil da Operacao não cadastrada!'+ 'Operacao: '+ cds.FieldbyName('OPERACAOID').AsString );

       cdsIntDespesa.FieldByName('CDEBITO').AsString         := cds.FieldbyName('CONTACONTABILID').AsString;
       cdsIntDespesa.FieldByName('CCREDITO').AsString        := '';
       cdsIntDespesa.FieldByName('VLRDESPESA').AsFloat       := cds.FieldbyName('VLRDESPESA').AsFloat;
       cdsIntDespesa.FieldByName('CCUSTOID').AsString        := cds.FieldbyName('CENTROCUSTOID').AsString;
       cdsIntDespesa.FieldByName('DESCRICAO').AsString       := cds.FieldbyName('DESCRICAO').AsString;
       cdsIntDespesa.Post;
       inc(ItemId);

       cds.Next;
      end;
      // Informando a contrapartida dos Debitos
      cds.Last;
      
      Inc( ItemId );
      cdsIntDespesa.Insert;
      cdsIntDespesa.FieldByName('RDVID').AsInteger          := cds.FieldbyName('RDVID').AsInteger;
      cdsIntDespesa.FieldByName('ITEMID').AsInteger         := ItemId;
      cdsIntDespesa.FieldByName('DATAMOVIMENTOID').AsString := FormatDateTime('ddmmyyyy',LastDayOfMonth( pCnnMain.AppServer.IServerDate ) );
      cdsIntDespesa.FieldByName('CAMPO1').AsString          := '001';
      cdsIntDespesa.FieldByName('CAMPO2').AsString          := '017';
      cdsIntDespesa.FieldByName('CDEBITO').AsString         := '';

      if cds.FieldbyName('CONTAFUNCIONARIO').IsNull then
         raise Exception.Create( 'Conta Contábil não cadastrada!' );

      cdsIntDespesa.FieldByName('CCREDITO').AsString        := cds.FieldbyName('CONTAFUNCIONARIO').AsString;
      cdsIntDespesa.FieldByName('VLRDESPESA').AsFloat       := VlrCredito ;
      cdsIntDespesa.FieldByName('CCUSTOID').AsString        := cds.FieldbyName('CENTROCUSTOID').AsString;
      cdsIntDespesa.FieldByName('DESCRICAO').AsString       := 'CONTABILIZACAO DE RELATORIO DESPESAS DE VIAGEM REF. AO MES*';
      cdsIntDespesa.Post;   
     end;
 finally
  FreeAndNil( cds );
  Screen.Cursor := crDefault;
 end;
end;

procedure TfrmIntegracao.BtnExportaRDVClick(Sender: TObject);
begin
 GeraMovimentacao( DateTimePicker1.Date, DateTimePicker2.Date );
end;

procedure TfrmIntegracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// LiberaDataSets;
 FreeAndNil(cdsAuxNfsItem);
 FreeAndNil(cdsAux);
 FreeAndNil(cdsAuxNfsPesquisa);
 Action := caFree;
 frmIntegracao := Nil;
 DirGeracao := ExtractFilePath( Application.ExeName );
end;

{ ExportarNota }

procedure TfrmIntegracao.ExportaCustosProdutos;
begin
 if not AtivaEmpresas then Exit;
 {}
 AtivaArquivo('CUSTOS.TXT');
 AtivaDisplay;
 PreencheCCusto;
 CriaCdsAux;


 EmpresaAtiva := IntToStr( EmpresaAtualId );


 lbGravados.Caption := 'Processando Movimentação';

 AnalisarCustoSaidas( EmpresaAtiva);
 // CProd_ComsisteMovNoTipoDocumento( EmpresaAtiva );

 GravaCustosProdArqTexto;
 {}
 FinalizaArquivo;
 frmRelIntegracao := TfrmRelIntegracao.Create( self );
 try
  frmRelIntegracao.QRLabel19.Caption := 'Custo de Mercadorias Vendidas de ' + edExportNF_DtInicial.Text + ' a '+ edExportNF_DtFinal.Text;
  frmRelIntegracao.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelIntegracao.QuickRep1 );
  FreeAndNil( frmRelIntegracao );
 end;
 Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);
end;

procedure TfrmIntegracao.ExportaEntradas;
var iSQL      : String;
begin
 EmpresaAtiva := IntToStr(EmpresaAtualId);
 if not AtivaEmpresas then Exit;
 {}
 AtivaArquivo('ENTRADAS.TXT');
 AtivaDisplay;
 {}
 try
  cdsAuxEntidade := nil;
  iSQL := 'SELECT '+
          '  EF_ENTIDADE.ENTIDADEID,' +
          '  EF_ENTIDADE.FISICAJURIDICA,'+
          '  EF_ENTIDADE.CPFCNPJ'+
          '  FROM'+
          '  EF_ENTIDADE';
  ExecDynamicProvider(-1,iSQL,cdsAuxEntidade);
  cdsAuxEntidade.AddIndex('idx1','ENTIDADEID',[ixPrimary],'','',0);
  cdsAuxEntidade.IndexName := 'idx1';

  cdsAuxNaturezaOp := nil;
  iSQL := 'SELECT '+
          '  EF_NATUREZAOP.NATUREZAOPID,' +
          '  EF_NATUREZAOP.CFOP,'+
          '  EF_NATUREZAOP.NUMPADRAO'+
          '  FROM'+
          '  EF_NATUREZAOP';
  ExecDynamicProvider(-1,iSQL,cdsAuxNaturezaOp);
  cdsAuxNaturezaOp.AddIndex('idx1','NATUREZAOPID',[ixPrimary],'','',0);
  cdsAuxNaturezaOp.IndexName := 'idx1';


  lbGravados.Caption := 'Abrindo NFE';
  {Retorna dados da NFE de cada Empresa}
  cdsAuxNfe := nil;
  iSQL :=
  ' SELECT '+
  '  EF_NFE.NFEID,'+
  '  EF_NFE.SERIE,'+
  '  EF_NFE.DATAENTRADA,'+
  '  EF_NFE.ENTIDADEID,'+
  '  EF_NFE.NATUREZAOPID,'+
  '  EF_NFE.CONTRIBUINTEICMS,'+
  '  EF_NFE.CANCELADA,'+
  '  EF_NFE.NFSID,'+
  '  EF_NFE.DATAEMISSAOID,'+
  '  EF_NFE.EMPRESAID,'+
  '  EF_NFE.OBSERVACAOID,'+
  '  EF_NFE.DESCRICAOOBSERVACAO,'+
  '  EF_NFE.VLRTOTALBASEICMS,'+
  '  EF_NFE.VLRTOTALICMS,'+
  '  EF_NFE.VLRTOTALNOTA,'+
  '  EF_NFE.VLRTOTALISENTASICMS,'+
  '  EF_NFE.VLRTOTALOUTRASICMS,'+
  '  EF_NFE.VLRTOTALBASEIPI,'+
  '  EF_NFE.VLRTOTALIPI,'+
  '  EF_NFE.VLRTOTALISENTASIPI,'+
  '  EF_NFE.VLRTOTALOUTRASIPI,'+
  '  EF_NATUREZAOP.NATUREZAOPID,'+
  '  EF_NATUREZAOP.CFOP,'+
  '  EF_NATUREZAOP.NUMPADRAO'+
  '  FROM '+
  '  EF_NFE, '+
  '  EF_NATUREZAOP'+
  ' WHERE '+
  '  EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFE.NATUREZAOPID'+
  '  AND EF_NFE.DATAENTRADA >= ' + QuotedStr(edExportNF_DtInicial.EditText)       +
  '  AND EF_NFE.DATAENTRADA <= ' + QuotedStr(edExportNF_DtFinal.EditText)     +
  '  AND EF_NFE.CANCELADA = 0'+
  '  AND EF_NATUREZAOP.DOCINTERNO = 0';

  if ckbxAtiva.Checked then
     iSQL := iSQL + ' AND EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId );

  if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (15,17) ) ';
     end;
 
  ExecDynamicProvider(-1,iSql, cdsAuxNfe );

 {Retorna dados da NFE Item  de cada Empresa}
 cdsAuxNfeItem := nil;
 ISQL := ' SELECT * '+
         '   FROM EF_NFEITEM, EF_NFE'+
         '  WHERE '+
         '   EF_NFE.DATAENTRADA >= '+ QuotedStr(edExportNF_DtInicial.EditText)+
         '   AND EF_NFE.DATAENTRADA <= '+ QuotedStr(edExportNF_DtFinal.EditText)  +
         '   AND EF_NFE.NFEID = EF_NFEITEM.NFEID          '+
         '   AND EF_NFE.EMPRESAID = EF_NFEITEM.EMPRESAID  '+
         '   AND EF_NFE.DATAEMISSAOID =    EF_NFEITEM.DATAEMISSAOID '+
         '   AND EF_NFE.ENTIDADEID    =    EF_NFEITEM.ENTIDADEID    ';


 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFE.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (15,17) ) ';
     end;

 ExecDynamicProvider(-1,iSql, cdsAuxNfeItem );

 lbGravados.Caption := 'Processando NFE - Entradas';
 ExportarEntradaNFE(  IntToStr(EmpresaAtualId )  );
 finally
  FreeAndNil(cdsAuxNfe);
  FreeAndNil(cdsAuxEntidade);
  FreeAndNil(cdsAuxNaturezaOp);
 end;
 {}
 FinalizaArquivo;
 LiberaCds;
 lbGravados.Caption := '';
 Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);
end;

procedure TfrmIntegracao.ExportaPIS_COFINS_ISS;
var iSQL : String;
begin
 {}
  if not AtivaEmpresas then Exit;

  AtivaArquivo('IMPOSTOS.TXT');
  AtivaDisplay;

  CriaCdsAux;
  EmpresaAtiva := IntToStr( EmpresaAtualId );

  {*** Dados da Nota de Saida ***}
  cdsAuxNfs := nil;
  iSQL := ' SELECT EF_NFS.* '+
          '   FROM'+
          '   EF_NFS, '+
          '   EF_NATUREZAOP'+
          '  WHERE '+
          '   EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID '+
          '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N') +
          '   AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
          '   AND EF_NFS.DATAEMISSAOID >= ' + QuotedStr( edExportNF_DtInicial.Text )+
          '   AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr( edExportNF_DtFinal.Text )    +
          '   AND EF_NFS.CANCELADA = 0 '+
          '   ORDER BY EF_NFS.EMPRESAID,EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

 try
  ExecDynamicProvider( -1 , iSQL,cdsAuxNfs );
  cdsAuxNfs.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
  cdsAuxNfs.IndexName := 'idx1';

  {*** Itens das Notas de Saida ***}
  cdsAuxNfsItem := nil;
  iSQL := ' SELECT '+
          '   EF_NFSITEM.EMPRESAID,'+
          '   EF_NFSITEM.NFSID,'+
          '   EF_NFSITEM.DATAEMISSAOID,'+
          '   EF_NFSITEM.VLRPIS,'+
          '   EF_NFSITEM.VLRCOFINS'+
          '   FROM '+
          '   EF_NFS,'+
          '   EF_NFSITEM,'+
          '   EF_NATUREZAOP'+
          '  WHERE '+
          '   EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
          '   AND EF_NFSITEM.NFSID = EF_NFS.NFSID'+
          '   AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
          '   AND EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '   AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N') +
          '   AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
          '   AND EF_NFS.DATAEMISSAOID >= ' + QuotedStr( edExportNF_DtInicial.Text )+
          '   AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr( edExportNF_DtFinal.Text )+
          '   AND EF_NFS.CANCELADA = 0'+
          '   ORDER BY EF_NFS.EMPRESAID,EF_NFS.NFSID,EF_NFS.DATAEMISSAOID';

  ExecDynamicProvider( -1 , iSQL,cdsAuxNfsitem );
  cdsAuxNfsItem.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
  cdsAuxNfsItem.IndexName := 'idx1';

  iSql := ' SELECT '+
          '   EF_NFSSERVICO.EMPRESAID,'+
          '   EF_NFSSERVICO.NFSID,'+
          '   EF_NFSSERVICO.DATAEMISSAOID,'+
          '   EF_NFSSERVICO.VLRPIS,'+
          '   EF_NFSSERVICO.VLRCOFINS,'+
          '   EF_NFSSERVICO.VLRISS'+
          '   FROM '+
          '   EF_NFSSERVICO, '+
          '   EF_NFS,'+
          '   EF_NATUREZAOP'+
          '  WHERE '+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
          '  AND EF_NFS.EMPRESAID = EF_NFSSERVICO.EMPRESAID '+
          '  AND EF_NFS.NFSID = EF_NFSSERVICO.NFSID '+
          '  AND EF_NFS.DATAEMISSAOID = EF_NFSSERVICO.DATAEMISSAOID'+
          '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('N') +
          '  AND EF_NATUREZAOP.VENDADEFINITIVA = 1'+
          '  AND EF_NFS.DATAEMISSAOID >= ' + QuotedStr( edExportNF_DtInicial.Text )+
          '  AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr( edExportNF_DtFinal.Text )    +
          '  AND EF_NFS.CANCELADA = 0 ';

  ExecDynamicProvider(-1,iSQL,cdsAuxNfsServico);
  cdsAuxNfsServico.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
  cdsAuxNfsServico.IndexName := 'idx1';

  {*** Dados da NFe ***}
  cdsAuxNfe := nil;
  iSQL := ' SELECT '+
          '  EF_NFE.NFEID,'+
          '  EF_NFE.SERIE,'+
          '  EF_NFE.DATAENTRADA,'+
          '  EF_NFE.ENTIDADEID,'+
          '  EF_NFE.NATUREZAOPID,'+
          '  EF_NFE.CANCELADA,'+
          '  EF_NFE.NFSID,'+
          '  EF_NFE.DATAEMISSAOID,'+
          '  EF_NFE.EMPRESAID,'+
          '  EF_NFE.OBSERVACAOID,'+
          '  EF_NFE.DESCRICAOOBSERVACAO,'+
          '  EF_NFE.VLRTOTALBASEICMS,'+
          '  EF_NFE.VLRTOTALICMS,'+
          '  EF_NFE.VLRTOTALNOTA,'+
          '  EF_NFE.VLRTOTALISENTASICMS,'+
          '  EF_NFE.VLRTOTALOUTRASICMS,'+
          '  EF_NFE.VLRTOTALBASEIPI,'+
          '  EF_NFE.VLRTOTALIPI,'+
          '  EF_NFE.VLRTOTALISENTASIPI,'+
          '  EF_NFE.VLRTOTALOUTRASIPI'+
          '  FROM '+
          '  EF_NFE, '+
          '  EF_NATUREZAOP'+
          ' WHERE '+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID '+
          '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('V') +
          '  AND EF_NFE.DATAENTRADA >= ' + QuotedStr( edExportNF_DtInicial.Text )+
          '  AND EF_NFE.DATAENTRADA <= ' + QuotedStr( edExportNF_DtFinal.Text ) +
          '  AND EF_NFE.CANCELADA = 0 '+
          '  ORDER BY EF_NFE.EMPRESAID,EF_NFE.NFEID,EF_NFE.DATAEMISSAOID';

  ExecDynamicProvider(-1,iSQL,cdsAuxNfe);
  cdsAuxNfe.AddIndex('idx1','EMPRESAID;NFEID;DATAENTRADA',[ixPrimary],'','',0);
  cdsAuxNfe.IndexName := 'idx1';

  iSQL := ' SELECT '+
          '  EF_NFEITEM.EMPRESAID,'+
          '  EF_NFEITEM.DATAEMISSAOID,'+
          '  EF_NFEITEM.NFEID,'+
          '  EF_NFEITEM.VLRPIS,'+
          '  EF_NFEITEM.ALIQUOTAICMS,'+
          '  EF_NFEITEM.VLRCOFINS'+
          '  FROM '+
          '  EF_NFEITEM, '+
          '  EF_NFE,'+
          '  EF_NATUREZAOP'+
          ' WHERE '+
          '  EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID '+
          '  AND EF_NFEITEM.NFEID = EF_NFE.NFEID'+
          '  AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID'+
          '  AND EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID '+
          '  AND EF_NATUREZAOP.MOVIMENTOESTOQUE = '+ QuotedStr('V') +
          '  AND EF_NFE.DATAENTRADA >= ' + QuotedStr( edExportNF_DtInicial.Text )+
          '  AND EF_NFE.DATAENTRADA <= ' + QuotedStr( edExportNF_DtFinal.Text ) +
          '  AND EF_NFE.CANCELADA = 0';

  ExecDynamicProvider( -1,iSQL, cdsAuxNfeItem );
  cdsAuxNfeItem.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0);
  cdsAuxNfeItem.IndexName := 'idx1';

  {Imposto NFS}
  lbGravados.Caption := 'Processando NFS';
  ExportarImpostosNFS( EmpresaAtiva );
  lbGravados.Caption := 'Processando NFE';

  {Imposto NFE}
  ExportaImpostosNFE( EmpresaAtiva );
  {Gera remessa do cdsAux 'Temporario'}
  lbGravados.Caption := 'Gerando Arquivo.';
  GravaImpostosArqTexto;

  {}
  lbGravados.Caption := '';
  FinalizaArquivo;
  LiberaCds;
  {}
  Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);

  frmRelIntegracao := TfrmRelIntegracao.Create( self );

  frmRelIntegracao.QRLabel19.Caption := 'Impostos de Receitas e Devoluções de ' + edExportNF_DtInicial.Text + ' a '+ edExportNF_DtFinal.Text;
  frmRelIntegracao.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelIntegracao );
  FreeAndNil( cdsAuxNfs );
  FreeAndNil( cdsAuxNfsitem );

 end;

end;

procedure TfrmIntegracao.ExportarEntradaNFE(EmpresaAtiva: String);
var ContrICMS, Linha2 : String;
begin
 cdsAuxNfe.First;
 ListGravados.Items.Clear;
 Linha := '';

 while not cdsAuxNfe.Eof do
 begin
  lbGravados.Caption := 'Processando NFE: '+ cdsAuxNfe.FieldByName('NFEID').AsString;
  frmIntegracao.Repaint;

  cdsAuxNaturezaOp.FindKey([cdsAuxNfe.FieldByName('NATUREZAOPID').AsString]);
  cdsAuxEntidade.FindKey([cdsAuxNfe.FieldByName('ENTIDADEID').AsString]);

  ContrICMS := ConsisteContrIcms(cdsAuxNfe.FieldByName('CONTRIBUINTEICMS').Value );

  {Inicio da gravacao da 1o. linha}
  Linha :=
   InsDelimitador('1')                                                                          +
   InsDelimitador(AspasDupla(FormatCurr(Mask_Decimal, cdsAuxNfe.FieldByName('NFEID').AsInteger)));

   if cdsAuxNfe.FieldByName('SERIE').AsString <> '' then
      Linha := Linha +  InsDelimitador(AspasDupla( cdsAuxNfe.FieldByName('SERIE').AsString ))
   else
      Linha := Linha + InsDelimitador(AspasDupla('UN'));

   Linha := Linha +  InsDelimitador('1')                                                               +
   InsDelimitador(AspasDupla(ConsisteTipoCPF(cdsAuxEntidade.FieldByName('FISICAJURIDICA').AsSTring)))  +
   InsDelimitador(AspasDupla(ConsisteCPFCNPJ(cdsAuxEntidade.FieldByName('CPFCNPJ').AsSTring, cdsAuxNfe.FieldByName('NFEID').AsString)))+
   InsDelimitador( Copy( Trim( cdsAuxNfe.FieldByName('NUMPADRAO').AsString ), 1, 4 ) );

  Linha := Linha +
   InsDelimitador(AspasDupla('ND')) +
   InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYYYY, cdsAuxNfe.FieldByName('DATAEMISSAOID').AsDateTime)))  +
   InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYYYY, cdsAuxNfe.FieldByName('DATAENTRADA').AsDateTime)))    +
   InsDelimitador( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALNOTA').Value ) ) ) ) )+
   AspasDupla(ConsisteObservacao( cdsAuxNfe, 'DESCRICAOOBSERVACAO' ));

  Linha := InsDelimitador( Linha ) + AspasDupla( ContrICMS );

  Linha2 := InsDelimitador('2')+
            InsDelimitador('1');

  if Trim( cdsAuxNfe.FieldByName('CFOP').AsString ) <> '' then
     Linha2 := Linha2 + InsDelimitador(ConsisteCFOP(cdsAuxNfe.FieldByName('CFOP').AsString))
  else MessageDlg('CFOP Em branco',mtWarning,[mbOK],0);

  Linha2 := Linha2 +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, GetAliquota( cdsAuxNfe.FieldByName('EMPRESAID').AsInteger ) ) ) )       +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALNOTA').Value ) ) ) )       +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTotalBaseICMS').value ) ) ) )   +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTotalICMS').Value ) ) ) )       +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALISENTASICMS').Value ) ) ) )+
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALOUTRASICMS').Value ) ) ) ) +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALBASEIPI').Value ) ) ) )    +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALIPI').Value ) ) ) )        +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALISENTASIPI').Value ) ) ) ) +
   NrOnly( FormatFloat( Mask_PtFlut, ConsisteValor(cdsAuxNfe.FieldByName('VLRTOTALOUTRASIPI').Value ) ) );

   WriteLn( Arq,  Linha );
   WriteLn( Arq,  Linha2 );
   ListGravados.Items.Add( Linha + Linha2 );

   AtualizaDisplay('G', TotDisplay2);

   cdsAuxNfe.Next;
  end;
end;

procedure TfrmIntegracao.ExportarSaidasNFS(EmpresaAtiva: String);
var SomaValores,Aliquota : Real;
    CentroCusto, Municipio, ContrICMS : String;
    EncontrouNfsServ, EncontrouNFSProd : Boolean;
    AliqISS : Real;
begin
 Aliquota := 0;
 cdsAuxNfs.First;
 ListGravados.Items.Clear;
 Linha := '';

 while not cdsAuxNfs.Eof do
 begin
  CentroCusto := '901';
  lbGravados.Caption := 'Processando NFS: ' + cdsAuxNfs.FieldByName('NFSID').AsString;
  frmIntegracao.Repaint;

  { Localizando dados Natureza de Operacao e Entidade }
  cdsAuxEntidade.FindKey([cdsAuxNfs.FieldByName('ENTIDADEID').Value]);

  ContrICMS := ConsisteContrIcms(cdsAuxNfs.FieldByName('CONTRIBUINTEICMS').Value );

  if ConsisteBool(cdsAuxNfs.FieldByName('TRANSFCONSUMO').value) then
  begin
   cdsAuxNfs.Next;
   Continue;
  end;

  Linha :=
   InsDelimitador('1')                                                                                   +
   InsDelimitador( AspasDupla( FormatCurr('000000', cdsAuxNfs.FieldByName('NFSID').AsInteger)))          +
   InsDelimitador( AspasDupla('UN'))                                                                     +
   InsDelimitador('2')                                                                                   +
   InsDelimitador( AspasDupla(ConsisteTipoCPF(cdsAuxEntidade.FieldByName('FISICAJURIDICA').AsSTring)))   +
   InsDelimitador( AspasDupla(ConsisteCPFCNPJ(cdsAuxEntidade.FieldByName('CPFCNPJ').AsString, cdsAuxNfs.FieldByName('NFSID').AsString)))+
   InsDelimitador( ConsisteCodPadraoTebas( cdsAuxNfs.FieldByName('NATUREZAOPID').Value ) )+
   InsDelimitador( AspasDupla( GetCondPagto( cdsAuxNfs.FieldByName('CONDPAGTOID').AsInteger ) ) );

  Linha := Linha +
   InsDelimitador( AspasDupla(FormatDateTime(Mask_DDMMYYYY, cdsAuxNfs.FieldByName('DATAEMISSAOID').value))) +
   InsDelimitador( AspasDupla(FormatDateTime(Mask_DDMMYYYY, cdsAuxNfs.FieldByName('DATAEMISSAOID').Value)));

  SomaValores :=  cdsAuxNfs.FieldByName('VLRTOTALNOTA').AsFloat;

//   ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALIPI').Value)        +
//   ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALBASEIPI').Value)    +
//   ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALISENTASIPI').Value) +
//  ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALOUTRASIPI').Value);

  Linha := Linha +
   InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, SomaValores))) +

   InsDelimitador( AspasDupla( ConsisteObservacao( cdsAuxNfs, 'DESCRICAOOBSERVACAO' ))) +
   InsDelimitador( AspasDupla(dmEf.cdsEmpresa.fieldByName('SIGLAUFID').AsString));

  if (dmEf.cdsEmpresa.FieldByName('EMPRESAID').value = 12) or
     (dmEf.cdsEmpresa.FieldByName('EMPRESAID').value = 13) then
      Linha := Linha + InsDelimitador('271')
  else
      Linha := Linha + InsDelimitador('855');

  Municipio := GetMunicipio( cdsAuxNfs.fieldByName('SIGLAUFID').AsString,
                             cdsAuxNfs.fieldByName('CIDADE').AsString );

  Linha := Linha +  InsDelimitador( AspasDupla(  cdsAuxNfs.FieldByName('SIGLAUFID').AsString ))+
           Municipio;

  Linha := InsDelimitador( Linha ) + AspasDupla( ContrICMS );

  { Criando Nova Linha }
  Writeln( Arq, Linha );
  ListGravados.Items.Add(Linha);

  Linha := InsDelimitador('2') +
           InsDelimitador('1');

  if Trim( cdsAuxNfs.FieldByName('CFOP').AsString ) <> '' then
     Linha := Linha + InsDelimitador(ConsisteCFOP(cdsAuxNfs.FieldByName('CFOP').AsString))
  else
     MessageDlg('CFOP Em branco',mtWarning,[mbOK],0);

  EncontrouNFSProd := True;
  if cdsAuxNfsItem.Locate('EMPRESAID;NFSID;DATAEMISSAOID',
                            VarArrayOf([ cdsAuxNfs.FieldByName('EMPRESAID').Value,
                                         cdsAuxNfs.FieldByName('NFSID').Value,
                                         cdsAuxNfs.FieldByName('DATAEMISSAOID').Value ]),[]) then
     begin
      CentroCusto := GetCentroCusto( cdsAuxNfs.FieldByName('EMPRESAID').Value, cdsAuxNfs.FieldByName('OSID').AsString,
                                     cdsAuxNfsItem.FieldByName('PRODUTOID').AsInteger  );
      Aliquota := GetAliquotaNfs;
     end
  else
     EncontrouNFSProd := False;

  Linha := Linha +
   InsDelimitador( NrOnly( FormatFloat(  Mask_PtFlut, Aliquota )));

  {}
  if cdsAuxNfsServico.Locate('EMPRESAID;NFSID;DATAEMISSAOID',
                             VarArrayOf([cdsAuxNfs.FieldByName('EMPRESAID').Value,
                                         cdsAuxNfs.FieldByName('NFSID').Value,
                                         cdsAuxNfs.FieldByName('DATAEMISSAOID').Value]),[]) then
     begin
      EncontrouNfsServ := True;
      CentroCusto := GetCentroCusto( cdsAuxNfs.FieldByName('EMPRESAID').Value, cdsAuxNfs.FieldByName('OSID').AsString,
                                     cdsAuxNfsServico.FieldByName('SERVICOID').AsInteger, 'SERVICO' );
      Linha := Linha +
       InsDelimitador( NrOnly( FormatFloat(Mask_PtFlut , (ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALNOTA').Value) - ConsisteValor(cdsAuxNfs.fieldByName('VLRTOTALSERVICO').value)))));
     end
  else
     begin
      Linha := Linha +
       InsDelimitador( NrOnly( FormatFloat(Mask_PtFlut , ConsisteValor(cdsAuxNfs.fieldByName('VLRTOTALNOTA').value))));
       EncontrouNfsServ := False;
     end;

  Linha := Linha +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALBASEICMS').Value))))     +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALICMS').Value))))         +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALISENTASICMS').Value))))  +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALOUTRASICMS').Value))))   +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALBASEIPI').Value))))      +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALIPI').Value))))          +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALISENTASIPI').Value))))   +
                  NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALOUTRASIPI').Value) ) );

   if EncontrouNFSProd then
      begin
       WriteLn(Arq, Linha );
       ListGravados.Items.Add(Linha);
      end;

  lbGravados.Caption := 'Processando NFS Serviços';
  cdsAuxNfsServico.First;
  if EncontrouNfsServ then
  begin
   {}
   Linha :=
    InsDelimitador('3') +
    InsDelimitador('1');

    AliqISS := cdsAuxNfs.FieldByName('ALIQUOTAISS').AsFloat;

    if      AnsiUpperCase(cdsAuxNfs.fieldByName('SIGLAUFID').Value) = AnsiUpperCase('SP') then
            Linha := Linha + InsDelimitador('593301')
    else if AnsiUpperCase(cdsAuxNfs.fieldByName('SIGLAUFID').Value) = AnsiUpperCase('EX') then
            begin
             Linha := Linha + InsDelimitador('555401');
             AliqISS := 2.00;
            end
    else
            Linha := Linha + InsDelimitador('693301');

   Linha := Linha +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor( AliqISS ))))+


    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALSERVICO').value)))) +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALSERVICO').value)))) +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALISS').value))))+
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, 0)))                                                             +
    InsDelimitador(  '""')                                                                    +
    InsDelimitador(  '""')                                                                    +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, 0)))                                                             +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, 0)))                                                             +
    InsDelimitador(  AspasDupla( ConsisteObservacao( cdsAuxNfs, 'OBSERVACAOID' )))        +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, 0)))                                                             +
    InsDelimitador(  NrOnly( FormatFloat(Mask_PtFlut, 0)))                                                             +
    InsDelimitador(  AspasDupla( cdsAuxNfs.fieldByName('SIGLAUFID').AsString))+
    Municipio + ',1';
    WriteLn(Arq, Linha );
    ListGravados.Items.Add(Linha);
  end;


  Linha := InsDelimitador('4') +
           InsDelimitador('1') +
           InsDelimitador('1') +
           AspasDupla( CentroCusto );

   if EncontrouNFSProd then
      begin
       WriteLn(Arq, Linha );
       ListGravados.Items.Add(Linha);
      end;
  cdsAuxNfs.Next;

  AtualizaDisplay('G', TotDisplay2);
 end;
end;

procedure TfrmIntegracao.ExportarSaidasNFS_Servicos(EmpresaAtiva: String);
var Str, Municipio : String;
begin
 cdsAuxNfs.First;
 ListGravados.Items.Clear;
 Linha := '';
 Str := '';

 while not cdsAuxNfs.Eof do
 begin
  lbGravados.Caption := 'Processando NFE: '+ cdsAuxNfs.FieldByName('NFEID').AsString;
  frmIntegracao.Repaint;

  cdsAuxNaturezaOp.FindKey([ cdsAuxNfs.FieldByName('NATUREZAOPID').Value ]);
  cdsAuxEntidade.FindKey([cdsAuxNfs.FieldByName('ENTIDADEID').Value]);
  {}
  ConsisteContrIcms(cdsAuxEntidade.fieldbyname('CONTRIBUINTEICMS').value);
  ConsisteTipoCPF(cdsAuxEntidade.FieldByName('FISICAJURIDICA').AsString) ;
  ConsisteCPFCNPJ(cdsAuxEntidade.fieldbyname('CPFCNPJ').value, cdsAuxNfs.FieldByName('NFEID').AsString);

  {if not cdsAuxNfsItem.FindKey([ cdsAuxNfs.FieldByName('EMPRESAID').Value,cdsAuxNfs.FieldByName('NFSID').Value,
                                 cdsAuxNfs.FieldByName('DATAEMISSAOID').Value ]) then
     begin
      cdsAuxNfs.Next;
      Continue;
     end;}

  Linha := InsDelimitador('1') +
   InsDelimitador(AspasDupla(FormatCurr( Mask_Decimal, cdsAuxNfs.FieldByName('NFSID').Value)))+
   InsDelimitador('""')+
   InsDelimitador('2') +
   InsDelimitador(AspasDupla(ConsisteTipoCPF(cdsAuxEntidade.FieldByName('FISICAJURIDICA').AsString)))              +
   InsDelimitador(AspasDupla(ConsisteCPFCNPJ(cdsAuxEntidade.fieldbyname('CPFCNPJ').AsString, cdsAuxNfs.FieldByName('NFSID').AsString)))+
   InsDelimitador(ConsisteCodPadraoTebas( cdsAuxNfs.FieldByName('NATUREZAOPID').Value ) )+
   InsDelimitador( AspasDupla( GetCondPagto( cdsAuxNfs.FieldByName('CONDPAGTOID').AsInteger ) ) );

  Linha :=  linha +
   InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYYYY, cdsAuxNfs.FieldByName('DATAEMISSAOID').AsDateTime)))+
   InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYYYY, cdsAuxNfs.FieldByName('DATAEMISSAOID').AsDateTime)))+
   InsDelimitador( NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALNOTA').Value))))+
   InsDelimitador( AspasDupla( ConsisteObservacao( cdsAuxNfs, 'DESCRICAOOBSERVACAO'))) +
   InsDelimitador(AspasDupla( dmEF.cdsEmpresaSIGLAUFID.AsString ));

  if (dmEf.cdsEmpresa.FieldByName('EMPRESAID').value = 12) or (dmEf.cdsEmpresa.FieldByName('EMPRESAID').value = 13)
  then
   Linha := Linha + InsDelimitador('271')
  else
   Linha := Linha + InsDelimitador('855');

  Municipio := GetMunicipio( cdsAuxNfs.fieldByName('SIGLAUFID').AsString,
                                 cdsAuxNfs.fieldByName('CIDADE').AsString );
  Linha := linha +
   InsDelimitador(AspasDupla( cdsAuxNfs.fieldByName('SIGLAUFID').value ) )+
   Municipio ;

  WriteLn(Arq, Linha);

  Linha :=
   InsDelimitador('3') +
   InsDelimitador('1');

  if Trim(ConsisteCFOP(cdsAuxNaturezaOp.FieldByName('CFOP').AsString))  = '' then
     Linha := Linha + InsDelimitador('593301')
  else
     Linha := Linha + InsDelimitador(cdsAuxNaturezaOp.FieldByName('CFOP').AsString);

  Linha := Linha +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, cdsAuxNfs.FieldByName('ALIQUOTAISS').Value))) +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALNOTA').Value))))    +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALSERVICO').Value)))) +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, cdsAuxNfs.FieldByName('VLRTOTALISS').Value)))       +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut,  0 )));

  Linha := Linha +
   InsDelimitador('""')                                                                +
   InsDelimitador('""')                                                                +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, 0)))                                             +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, 0)))                                             +
   InsDelimitador( AspasDupla( ConsisteObservacao( cdsAuxNfs, 'DESCRICAOOBSERVACAO' ))) +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, 0)))                                             +
   InsDelimitador(NrOnly( FormatFloat(Mask_PtFlut, 0)))                                             +
   InsDelimitador(AspasDupla(cdsAuxNfs.fieldByName('SIGLAUFID').Value))+
   Municipio+',1';

  WriteLn(Arq, Linha );
  ListGravados.Items.Add(Linha);

  AtualizaDisplay('G', TotDisplay2);
  cdsAuxNfs.Next;
 end;
end;

procedure TfrmIntegracao.ExportaSaidas;
var iSQL : String;
begin
 if not AtivaEmpresas then Exit;
 {}
 AtivaArquivo('SAIDAS.TXT');
 AtivaDisplay;

 { Carregando dados da Tabela Condicao de Pagamento }
 cdsAuxCondPagto := nil;
 iSQL := 'SELECT CONDPAGTOID,'+
         '       DESCRICAO,'+
         '       NUMPARCELA'+
         '  FROM EF_CONDPAGTO';

 ExecDynamicProvider( -1,iSQL,cdsAuxCondPagto );
 cdsAuxCondPagto.AddIndex('idx1','CONDPAGTOID',[ixPrimary],'','',0);
 cdsAuxCondPagto.IndexName := 'idx1';

 { Carregando dados da Tabela Entidade }
 cdsAuxEntidade := nil;
 iSQL := 'SELECT ENTIDADEID,'+
         '       FISICAJURIDICA,'+
         '       CPFCNPJ,'+
         '       CONTRIBUINTEICMS'+
         '  FROM EF_ENTIDADE';
 ExecDynamicProvider( -1,iSQL,cdsAuxEntidade );
 cdsAuxEntidade.AddIndex('idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsAuxEntidade.IndexName := 'idx1';

 { Carregando dados da Tabela Natureza de Operacao }
 cdsAuxNaturezaOp := nil;
 iSQL := 'SELECT NATUREZAOPID,'+
         '       TRANSFCONSUMO,'+
         '       CFOP,'+
         '       NUMPADRAO'+
         '  FROM EF_NATUREZAOP';

 ExecDynamicProvider( -1,iSQL,cdsAuxNaturezaOp );
 cdsAuxNaturezaOp.AddIndex('idx1','NATUREZAOPID',[ixPrimary],'','',0);
 cdsAuxNaturezaOp.IndexName := 'idx1';
 PreencheCCusto;
 {}
 lbGravados.Caption := 'Abrindo NFS';
  cdsAuxNfs := nil;
 iSQL := ' SELECT EF_NFS.*, '+
         '   EF_EMPRESA.ALIQUOTAISS, ' +
         '   EF_NATUREZAOP.NATUREZAOPID,'+
         '   EF_NATUREZAOP.CFOP,'+
         '   EF_NATUREZAOP.NUMPADRAO,'+
         '   EF_NATUREZAOP.TRANSFCONSUMO'+
         '   FROM '+
         '   EF_NFS, '+
         '   EF_NATUREZAOP,'+
         '   EF_EMPRESA ' +
         '  WHERE '+
         '   EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID'+
         '   AND EF_NFS.DATAEMISSAOID >= ' + QuotedStr( edExportNF_DtInicial.Text ) +
         '   AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr(edExportNF_DtFinal.Text ) +
         '   AND EF_NFS.CANCELADA = 0'+
         '   AND EF_NFS.EMPRESAID = EF_EMPRESA.EMPRESAID ' +
//         '   AND EF_NFS.VLRTOTALPRODUTO >= 1'+
         '   AND EF_NATUREZAOP.DOCINTERNO = 0';

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (15,17) ) ';
     end;

 ExecDynamicProvider( -1 , iSQL,cdsAuxNfs );

 { Carregando os Itens da Nota Fiscal }
  cdsAuxNfsItem := nil;
 {Retorna dados da NFS Item  de cada Empresa}
 iSQL := ' SELECT EF_NFSITEM.EMPRESAID,'+
         '   EF_NFSITEM.NFSID,'+
         '   EF_NFSITEM.DATAEMISSAOID,'+
         '   EF_NFSITEM.ALIQUOTAICMS,'+
         '   EF_NFSITEM.PRODUTOID'+
         '   FROM'+
         '   EF_NFSITEM,'+
         '   EF_NFS,'+
         '   EF_NATUREZAOP'+
         '  WHERE '+
         '   EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID'+
         '   AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr(edExportNF_DtInicial.EditText)+
         '   AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr(edExportNF_DtFinal.EditText)+
         '   AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID'+
         '   AND EF_NFS.NFSID = EF_NFSITEM.NFSID '+
         '   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID'+
         '   AND NVL( EF_NFS.VLRTOTALPRODUTO, 0 ) > 0'+
         '   AND EF_NATUREZAOP.DOCINTERNO = 0';

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (15,17) ) ';
     end;

 ExecDynamicProvider( -1,iSql,cdsAuxNfsItem );

 {Carregando os dados da Nota de Servico}
  {Retorna Nfs Serviços}
 iSQL := ' SELECT * '+
         '   FROM EF_NFSSERVICO '+
         '  WHERE '+
         '   DATAEMISSAOID >= ' + QuotedStr(edExportNF_DtInicial.EditText)+
         '   AND DATAEMISSAOID <= ' + QuotedStr(edExportNF_DtFinal.EditText);

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFSSERVICO.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFSSERVICO.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFSSERVICO.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFSSERVICO.EMPRESAID IN (15,17) ) ';
     end;

 ExecDynamicProvider( -1,iSQL,cdsAuxNfsServico);

 ExportarSaidasNFS(EmpresaAtiva);
 {}
 EmpresaAtiva := '1';
 FinalizaArquivo;
 LiberaCds;
 lbGravados.Caption := '';

 Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);
end;

procedure TfrmIntegracao.ExportaServicos;
var iSQL : String;
begin
 if not AtivaEmpresas then Exit;
 {}
 AtivaArquivo('SERVICOS.TXT');
 AtivaDisplay;
 {carregando os dados da Natureza de Operacao}
 cdsAuxNaturezaOp := nil;
 iSQL := 'SELECT NATUREZAOPID,'+
         '       TRANSFCONSUMO,'+
         '       CFOP,'+
         '       NUMPADRAO'+
         '  FROM EF_NATUREZAOP';

 ExecDynamicProvider( -1,iSQL,cdsAuxNaturezaOp );
 cdsAuxNaturezaOp.AddIndex('idx1','NATUREZAOPID',[ixPrimary],'','',0);
 cdsAuxNaturezaOp.IndexName := 'idx1';

 { Carregando dados da Tabela Condicao de Pagamento }
 cdsAuxCondPagto := nil;
 iSQL := 'SELECT CONDPAGTOID,'+
         '       DESCRICAO,'+
         '       NUMPARCELA'+
         '  FROM EF_CONDPAGTO';

 ExecDynamicProvider( -1,iSQL,cdsAuxCondPagto );
 cdsAuxCondPagto.AddIndex('idx1','CONDPAGTOID',[ixPrimary],'','',0);
 cdsAuxCondPagto.IndexName := 'idx1';

 { Carregando dados da Tabela Entidade }
 cdsAuxEntidade := nil;
 iSQL := 'SELECT ENTIDADEID,'+
         '       FISICAJURIDICA,'+
         '       CPFCNPJ,'+
         '       CONTRIBUINTEICMS'+
         '  FROM EF_ENTIDADE';
 ExecDynamicProvider( -1,iSQL,cdsAuxEntidade );
 cdsAuxEntidade.AddIndex('idx1','ENTIDADEID',[ixPrimary],'','',0);
 cdsAuxEntidade.IndexName := 'idx1';

 lbGravados.Caption := 'Abrindo NFS';
 cdsAuxNfs := nil;
 iSQL := ' SELECT * '+
         '   FROM EF_NFS '+
         '  WHERE '+
         '   DATAEMISSAOID >= ' + QuotedStr(edExportNF_DtInicial.Text)  +
         '   AND DATAEMISSAOID <= ' + QuotedStr(edExportNF_DtFinal.Text)    +
         '   AND CANCELADA = 0'+
         ' AND VLRTOTALSERVICO >= 1 ';

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (15,17) ) ';
     end;

 ExecDynamicProvider( -1 , iSQL,cdsAuxNfs );

 {Carregando os Itens da Nota de Saida}
  cdsAuxNfsItem := nil;
 {Retorna dados da NFS Item  de cada Empresa}
 iSQL := ' SELECT EF_NFSITEM.EMPRESAID,'+
         '   EF_NFSITEM.NFSID,'+
         '   EF_NFSITEM.DATAEMISSAOID'+
         '   FROM EF_NFSITEM, '+
         '   EF_NFS'+
         '  WHERE '+
         '   EF_NFS.DATAEMISSAOID >= '+ QuotedStr(edExportNF_DtInicial.EditText)+
         '   AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr(edExportNF_DtFinal.EditText)  +
         '   AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID'+
         '   AND EF_NFS.NFSID = EF_NFSITEM.NFSID '+
         '   AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID'+
         '   AND EF_NFS.CANCELADA = 0'+
         '   AND NVL( EF_NFS.VLRTOTALSERVICO, 0 ) >= 1';

 if ckbxAtiva.Checked then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId );

 if ckbxAtivaSimilar.Checked then
     case EmpresaAtualId of
     1  : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';
     12 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (12,13) ) ';
     15 : iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (15,17) ) ';
     end;

 ExecDynamicProvider( -1,iSql,cdsAuxNfsItem );

 cdsAuxNfsItem.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0);
 cdsAuxNfsItem.IndexName := 'idx1';

 ExportarSaidasNFS_Servicos( EmpresaAtiva );
 {}
 FinalizaArquivo;
 LiberaCds;
 lbGravados.Caption := '';
 Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);
end;


{ ArqFile }

procedure TfrmIntegracao.AtivaArquivo(NomeArq: String; LeGrava: Char = 'R');
begin
 PathArq := NomeArq;
 AssignFile( Arq, DirGeracao + NomeArq );
 Case LeGrava of
  'R': Rewrite( Arq );
  'A': Append( Arq );
 end;
end;


{ DataSet }
procedure TfrmIntegracao.spEntradasClick(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := ' Exportar: '+ spEntradas.Caption;
 ExportaEntradas;
end;

{ MensagemUsuario }

procedure TfrmIntegracao.MostraMsgUsuario(msg: String);
begin
 frmIntegracao.Repaint;
 ListCriticas.Items.Add(msg);
 AtualizaDisplay('C', ListCriticas.Items.Count);
end;

procedure TfrmIntegracao.spServicosClick(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := ' Exportar: '+ spServicos.Caption;
 ExportaServicos;
end;

procedure TfrmIntegracao.spSaidasClick(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := ' Exportar: '+ spSaidas.Caption;
 ExportaSaidas;
end;

procedure TfrmIntegracao.spPis_Cofins_IssClick(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := ' Exportar: '+ spPis_Cofins_Iss.Caption;
 ExportaPIS_COFINS_ISS;
end;

procedure TfrmIntegracao.ExportarImpostosNFS(EmpresaAtiva: String);
begin
 cdsAuxNfs.First;
 while not cdsAuxNfs.Eof do
 begin
  lbGravados.Caption := 'Processando NFS: ' + cdsAuxNfs.FieldByName('NFSID').AsString;
  frmIntegracao.Repaint;
  lbGravados.Caption := 'Processando NFS Itens';

  ExportaImpostosNFSItem(cdsAuxNfs.FieldByName('EMPRESAID').Value, cdsAuxNfs.FieldByName('NFSID').AsString, cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString);
  lbGravados.Caption := 'Processando Itens de Serviços NFS';

  ExportaImpostosServicoNFS(cdsAuxNfs.FieldByName('EMPRESAID').Value, cdsAuxNfs.FieldByName('NFSID').AsString, cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString);
  cdsAuxNfs.Next;
 end;
end;

procedure TfrmIntegracao.ExportaImpostosNFSItem(EmpresaAtiva, NfsId: String; DtEmissao: String);
var Valor : real;
const
 PISProd = 'PIS(Prod.)';
 COFProd = 'COFINS(Prod.)';
 MsgPIS    = 'CONTABILIZACAO DO PIS S/ RECEITA DE VENDA DE MERCADORIAS.';
 MsgCofins = 'CONTABILIZACAO DO COFINS S/ RECEITA DE VENDA DE MERCADORIAS.';
begin

 cdsAuxNfsitem.Filter := ' EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString +
                     ' AND NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString +
                     ' AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString );
 cdsAuxNfsItem.Filtered := True;

 cdsAuxNfsItem.First;
 while not cdsAuxNfsItem.Eof do
 begin
  lbGravados.Caption := 'Processando NFS: ' + cdsAuxNfsItem.FieldByName('NFSID').AsString;
  frmIntegracao.Repaint;

  frmIntegracao.Repaint;

  Valor := ConsisteValor(cdsAuxNfsItem.FieldByName('VLRPIS').Value);

  {Conta:41301003}
  UpSet(cdsAux, '41301003', PISProd ); {Conta | Centro_Custo}

  cdsAux.FieldByName('CONTA').Value           :=  '41301003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  PISProd;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgPIS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor( cdsAux.FieldByName('VALOR').Value ) + Valor;
  cdsAux.Post;

  {Conta:21102003}
  UpSet(cdsAux,'21102003',PISProd );

  cdsAux.FieldByName('CONTA').Value          := '21102003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value   := PISProd;
  cdsAux.FieldByName('HISTORICO').Value      := MsgPIS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value := 'C';
  cdsAux.FieldByName('VALOR').Value          := ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

 { Cálculos CoFins }
  Valor := ConsisteValor(cdsAuxNfsItem.FieldByName('VLRCOFINS').Value);

  {Conta:41301004}
  UpSet(cdsAux,'41301004',COFProd);
  cdsAux.FieldByName('CONTA').Value          := '41301004';
  cdsAux.FieldByName('CENTRO_CUSTO').Value   := COFProd;
  cdsAux.FieldByName('HISTORICO').Value      := MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value := 'D';
  cdsAux.FieldByName('VALOR').Value          := ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Conta:21102005}
  UpSet(cdsAux,'21102005',COFProd);
  cdsAux.FieldByName('CONTA').Value          := '21102005';
  cdsAux.FieldByName('CENTRO_CUSTO').Value   := COFProd;
  cdsAux.FieldByName('HISTORICO').Value      := MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value := 'C';
  cdsAux.FieldByName('VALOR').Value          := ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  AtualizaDisplay('G', TotDisplay2);

  cdsAuxNfsItem.Next;
 end;
end;

procedure TfrmIntegracao.ExportaImpostosServicoNFS(EmpresaAtiva, NfsId: String; DtEmissao: String);
var Valor     : real;
const
 PISServ = 'PIS(Serv.)';
 COFServ = 'COFINS(Serv.)';
 ISS     = 'ISS';
 MsgPIS    = 'CONTABILIZACAO DO PIS S/ RECEITA DE SERVICOS.';
 MsgCofins = 'CONTABILIZACAO DO COFINS S/ RECEITA DE SERVICOS.';
 MsgISS    = 'CONTABILIZACAO DO ISS S/ RECEITA DE SERVICOS.';
begin
 cdsAuxNfsServico.Filter := ' EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString +
                            ' AND NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString +
                            ' AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString );
 cdsAuxNfsServico.Filtered := True;

 cdsAuxNfsServico.First;
 while not cdsAuxNfsServico.Eof do
 begin
  lbGravados.Caption := 'Processando NFS: ' + cdsAuxNfsServico.FieldByName('NFSID').AsString;
  frmIntegracao.Repaint;

  Valor := ConsisteValor(cdsAuxNfsServico.FieldByName('VLRPIS').Value);

  {Conta:41301003}
  UpSet(cdsAux, '41301003', PISServ); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '41301003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  PISServ;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgPIS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           := ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Conta:21102003}
  UpSet(cdsAux, '21102003', PISServ); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '21102003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  PISServ;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgPIS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {COFINS}
  Valor := ConsisteValor(cdsAuxNfsServico.FieldByName('VLRCOFINS').Value);
  {Conta:41301004}
  UpSet(cdsAux, '41301004',COFServ); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '41301004';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  COFServ;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Conta:21102005}
  UpSet(cdsAux, '21102005',COFServ); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '21102005';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  COFServ;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {ISS}
  Valor := ConsisteValor(cdsAuxNfsServico.FieldByName('VLRISS').Value);
  {Conta:41301002}
  UpSet(cdsAux, '41301002',ISS); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '41301002';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  ISS;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgISS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Conta:21103006}
  UpSet(cdsAux, '21103006',ISS); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '21103006';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  ISS;
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgISS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Atualiza Contadores}
  cdsAuxNfsServico.Next;
  {}
 end;
end;

procedure TfrmIntegracao.ExportaImpostosNFEItem(EmpresaAtiva, NfeId: String; DtEmissao: String);
var Valor : real;
const
 PISDev = 'PIS(Devol.)';
 COFDev = 'COFINS(Devol.)';
 MsgPIS    = 'CONTABILIZACAO DO PIS S/ DEVOLUCAO DE VENDAS.';
 MsgCofins = 'CONTABILIZACAO DO COFINS S/ DEVOLUCAO DE VENDAS.';
begin
 cdsAuxNfeItem.Filter := ' EMPRESAID = '+ cdsAuxNfe.FieldByName('EMPRESAID').AsString +
                         ' AND NFEID = '+ cdsAuxNfe.FieldByName('NFEID').AsString +
                         ' AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfe.FieldByName('DATAEMISSAOID').AsString );
 cdsAuxNfeItem.Filtered := True;
 cdsAuxNfeItem.First;
 while not cdsAuxNfeItem.Eof do
 begin
  lbGravados.Caption := 'Processando NFE Item: ' + cdsAuxNfeItem.FieldByName('NFEID').AsString;
  frmIntegracao.Repaint;

  Valor :=  ConsisteValor(cdsAuxNfeItem.FieldByName('VLRPIS').Value);

  {Prod:21102003}
  UpSet(cdsAux, '21102003', PISDev ); {Conta | Centro_Custo}
  cdsAux.FieldByName('CONTA').Value           :=  '21102003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'PIS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgPIS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Prod:41301003}
  UpSet(cdsAux,'41301003', PISDev);
  cdsAux.FieldByName('CONTA').Value           :=  '41301003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'PIS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgPIS;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {COFINS}
  Valor :=  ConsisteValor(cdsAuxNfeItem.FieldByName('VLRCOFINS').Value);
  {Prod:21102005}
  UpSet(cdsAux,'21102005', COFDev);
  cdsAux.FieldByName('CONTA').Value           :=  '21102005';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'COFINS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Prod:41301004}
  UpSet(cdsAux,'41301004', COFDev);
  cdsAux.FieldByName('CONTA').Value           :=  '41301004';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'COFINS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Processa dados referentes a antiga  NF3 }
  {Prod:21102003}
{  UpSet(cdsAux,'21102003', COFDev);
  cdsAux.FieldByName('CONTA').Value           :=  '21102003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'PIS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Prod:41301003}
 { UpSet(cdsAux, '41301003', PISDev);
  cdsAux.FieldByName('CONTA').Value           :=  '41301003';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'PIS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Prod:21102005}
  {UpSet(cdsAux,'21102005', COFDev);
  cdsAux.FieldByName('CONTA').Value           :=  '21102005';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'COFINS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'D';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;

  {Prod:41301004}
  {UpSet(cdsAux,'41301004', COFDev);
  cdsAux.FieldByName('CONTA').Value           :=  '41301004';
  cdsAux.FieldByName('CENTRO_CUSTO').Value    :=  'COFINS(Devol.)';
  cdsAux.FieldByName('HISTORICO').Value       :=  MsgCofins;
  cdsAux.FieldByName('DEBITO_CREDITO').Value  :=  'C';
  cdsAux.FieldByName('VALOR').Value           :=  ConsisteValor(cdsAux.FieldByName('VALOR').Value) + Valor;
  cdsAux.Post;
  {}
  AtualizaDisplay('G', TotDisplay2);

  cdsAuxNfeItem.Next;
 end;
end;

procedure TfrmIntegracao.ExportaImpostosNFE(EmpresaAtiva: String);
begin
 cdsAuxNfe.First;
 while not cdsAuxNfe.Eof do
 begin
  lbGravados.Caption := 'Processando NFE: ' + ConsisteInteiro(cdsAuxNfe.FieldByName('NFEID').AsString);
  frmIntegracao.Repaint;
  lbGravados.Caption := 'Processando NFE Itens';

  ExportaImpostosNFEItem(cdsAuxNfe.FieldByName('EMPRESAID').Value, cdsAuxNfe.FieldByName('NFEID').AsString, cdsAuxNfe.FieldByName('DATAEMISSAOID').AsString);
  cdsAuxNfe.Next;
 end;
end;

procedure TfrmIntegracao.GravaImpostosArqTexto;
begin
 ListGravados.Items.Clear;
 cdsAux.First;
 while not cdsAux.Eof Do
 begin
  Linha :=
{dtFim}  InsDelimitador( AspasDupla( FormatDateTime( Mask_DDMMYYYY, StrToDate( edExportNF_DtFinal.Text)))) +
{001}    InsDelimitador( AspasDupla('001')) +
{008}    InsDelimitador( AspasDupla('008'));

  if cdsAux.FieldByName('DEBITO_CREDITO').Value = 'D' then
     Linha := Linha +
{conta}  InsDelimitador( AspasDupla(cdsAux.FieldByName('CONTA').Value)) +
{""}     InsDelimitador( AspasDupla(''))
  else
     Linha := Linha +
{""}     InsDelimitador( AspasDupla('')) +
{conta}  InsDelimitador( AspasDupla( cdsAux.FieldByName('CONTA').Value ));


  Linha := Linha +
{Valor}  InsDelimitador( AspasDupla( NrOnly( FormatFloat( '00000000000000.00',cdsAux.FieldByName('VALOR').Value)))) +
{901}    InsDelimitador( AspasDupla('901')) +
{Hist.}  AspasDupla(cdsAux.FieldByName('HISTORICO').AsSTring);


  WriteLn(Arq, Linha );
  ListGravados.Items.Add(Linha);

  cdsAux.Next;
 end;
end;


procedure TfrmIntegracao.Cdev_ComsisteMovNoTipoDocumento;
var iSQL,DescResumida : String;
begin
 lbGravados.Caption := 'Selecionando Ficha de Estoque';
 cdsAuxKardex := nil;
 iSQL :=
      ' SELECT '+
      '   EF_KARDEX.EMPRESAID,'+
      '   EF_KARDEX.KARDEXID,'+
      '   EF_KARDEX.PRODUTOID,'+
      '   EF_KARDEX.TIPODOCUMENTO,'+
      '   EF_KARDEX.NUMDOCUMENTO,'+
      '   EF_KARDEX.NATUREZAOPID,'+
      '   EF_NATUREZAOP.MOVIMENTOESTOQUE,'+
      '   EF_KARDEX.DATAOCORRENCIA,'+
      '   EF_KARDEX.VLRCUSTOUNITARIO,'+
      '   EF_KARDEX.QUANTIDADE'+
      '   FROM '+
      '   EF_KARDEX, '+
      '   EF_NATUREZAOP'+
      '  WHERE '+
      '   EF_NATUREZAOP.NATUREZAOPID = EF_KARDEX.NATUREZAOPID'+
      '   AND EF_KARDEX.DATAOCORRENCIA >= ' + QuotedStr(edExportNF_DtInicial.EditText)+
      '   AND EF_KARDEX.DATAOCORRENCIA <= ' + QuotedStr(edExportNF_DtFinal.EditText)  +
      '   AND EF_KARDEX.TIPODOCUMENTO <> '+ QuotedStr( 'DMC' )+
      '   AND EF_KARDEX.TIPODOCUMENTO <> '+ QuotedStr('NFS');

  if ckbxAtiva.Checked then
     iSQL := iSQL + ' AND EF_KARDEX.EMPRESAID = '+ IntToStr( EmpresaAtualId );

  if ckbxAtivaSimilar.Checked then
      case EmpresaAtualId of
      1  : iSQL := iSQL + ' AND ( EF_KARDEX.EMPRESAID IN (1,2,3,4,5) ) ';
      12 : iSQL := iSQL + ' AND ( EF_KARDEX.EMPRESAID IN (12,13) ) ';
      15 : iSQL := iSQL + ' AND ( EF_KARDEX.EMPRESAID IN (15,17) ) ';
      end;

 try
  ExecDynamicProvider( -1,iSQL, cdsAuxKardex );

  cdsAuxNfeItem := nil;
  iSQL := 'SELECT '+
          '  EF_NFEITEM.EMPRESAID,'+
          '  EF_NFEITEM.NFEID, '+
          '  EF_NFEITEM.DATAEMISSAOID,'+
          '  EF_NFEITEM.PRODUTOID'+
          '  FROM '+
          '  EF_NFEITEM '+
          ' WHERE '+
          '  EF_NFEITEM.DATAEMISSAOID >= ' + QuotedStr(edExportNF_DtInicial.EditText)+
          '  AND EF_NFEITEM.DATAEMISSAOID <= ' + QuotedStr(edExportNF_DtFinal.EditText);

  if ckbxAtiva.Checked then
     iSQL := iSQL + ' AND EF_NFEITEM.EMPRESAID = '+ IntToStr( EmpresaAtualId );

  if ckbxAtivaSimilar.Checked then
      case EmpresaAtualId of
      1  : iSQL := iSQL + ' AND ( EF_NFEITEM.EMPRESAID IN (1,2,3,4,5) ) ';
      12 : iSQL := iSQL + ' AND ( EF_NFEITEM.EMPRESAID IN (12,13) ) ';
      15 : iSQL := iSQL + ' AND ( EF_NFEITEM.EMPRESAID IN (15,17) ) ';
      end;

  ExecDynamicProvider(-1,iSQL,cdsAuxNfeItem);
  cdsAuxNfeItem.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID;PRODUTOID',[ixDescending],'','',0);
  cdsAuxNfeItem.IndexName := 'idx1';

  iSQL := ' SELECT '+
          '   EF_PRODUTO.EMPRESAID, '+
          '   EF_PRODUTO.PRODUTOID,'+
          '   EF_PRODUTO.SUBGRUPOID,'+
          '   EF_PRODUTO.CONTACTBDESPESA'+
          '   FROM '+
          '   EF_PRODUTO '+
          '   WHERE '+
          '   1 = 1';

  if ckbxAtiva.Checked then
     iSQL := iSQL + ' AND EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaAtualId );

  if ckbxAtivaSimilar.Checked then
      case EmpresaAtualId of
      1  : iSQL := iSQL + ' AND ( EF_PRODUTO.EMPRESAID IN (1,2,3,4,5) ) ';
      12 : iSQL := iSQL + ' AND ( EF_PRODUTO.EMPRESAID IN (12,13) ) ';
      15 : iSQL := iSQL + ' AND ( EF_PRODUTO.EMPRESAID IN (15,17) ) ';
      end;

  ExecDynamicProvider(-1,iSQL,cdsAuxProduto);
  cdsAuxProduto.AddIndex('idx1','EMPRESAID;PRODUTOID',[ixDescending],'','',0);
  cdsAuxProduto.IndexName := 'idx1';

  cdsAuxKardex.First;
  while not cdsAuxKardex.Eof do
  begin
   // Ignora movimento de desmembramento de custo
   if (cdsAuxKardex.FieldByName('TIPODOCUMENTO').Value = 'NFE') or
      (cdsAuxKardex.FieldByName('TIPODOCUMENTO').Value = 'NF3') then
      begin
       if (cdsAuxKardex.FieldByName('MOVIMENTOESTOQUE').Value <> 'V') then
          begin
//           cdsAuxKardex.Next;
//           Continue;
          end;
      end;

   cdsAuxNfeItem.Filter :=  ' NFEID = '+cdsAuxKardex.FieldByName('NUMDOCUMENTO').AsString +
                             ' AND EMPRESAID = ' + cdsAuxKardex.FieldByName('EMPRESAID').AsString +
                             ' AND PRODUTOID = ' + cdsAuxKardex.FieldByName('PRODUTOID').AsString +
                             ' AND DATAEMISSAOID = ' + QuotedStr(cdsAuxKardex.FieldByName('DATAOCORRENCIA').AsString);
   cdsAuxNfeItem.Filtered := True;

   cdsAuxProduto.Filter := ' EMPRESAID = '+ cdsAuxKardex.FieldByName('EMPRESAID').AsString +
                           ' AND PRODUTOID ='+ cdsAuxKardex.FieldByName('PRODUTOID').AsString;
   cdsAuxProduto.Filtered := True;

   lbGravados.Caption := 'Processando Kardex';
   DescResumida := GetDescResumida( cdsAuxKardex.FieldByName('NATUREZAOPID').AsString );

   Cdev_ProcessDescricaoResumKardex( DescResumida,
                                     cdsAuxProduto.FieldByName('SUBGRUPOID').AsString,
                                     cdsAuxProduto.FieldByName('CONTACTBDESPESA').AsString);
   cdsAuxKardex.Next;
  end;
 finally
  FreeAndNil(cdsAuxKardex);
  FreeAndNil(cdsAuxNfeItem);
  FreeAndNil(cdsAuxProduto);
 end;
end;

procedure TfrmIntegracao.Cdev_ProcessDescricaoResumKardex(DescResumida, SubGrupo, ContaCtbDespesa : String);
var
 CONTA, CENTROCUSTO, HISTORICO, DEBITOCREDITO : String;
 vValor : Real;
const
 MsgHistDevVendMerc  = 'DEVOLUCAO DE VENDA DE MERCADORIAS NO MES.' ;
 MsgHistDevRepGar    = 'DEVOLUCAO DE REPOSICAO EM GARANTIA NO MES.' ;
 MsgHistDevBonif     = 'DEVOLUCAO DE BONIFICACAO NO MES.';

 procedure GravaCdsAux;
 begin
  cdsAux.FieldByName('CONTA').value         := CONTA;
  cdsAux.FieldByName('CENTRO_CUSTO').value   := CENTROCUSTO;
  cdsAux.FieldByName('HISTORICO').value     := HISTORICO;
  cdsAux.FieldByName('DEBITO_CREDITO').value := DEBITOCREDITO;
  cdsAux.FieldByName('VALOR').value         := ConsisteValor(cdsAux.FieldByName('VALOR').Value) + vValor;
  cdsAux.Post;
 end;

begin
 lbGravados.Caption := 'Analisando Descrições: '+ DescResumida +
                       ' SubGrupo: '             + SubGrupo +
                       ' Conta Despesa: '        + ContaCtbDespesa;

 vValor := (ConsisteValor( cdsAuxKardex.FieldByName('VLRCUSTOUNITARIO').Value) * cdsAuxKardex.FieldByName('QUANTIDADE').Value);

 if TRIM(DescResumida) = 'DEV-VDA' then
 begin
  if SubGrupo = '8' then
  begin
   {DEBITO}
   UpSet(cdsAux, '11402001','VDA'); {Conta | Centro_Custo}
   CONTA          :=  '1142001';
   CENTROCUSTO    :=  'VDA';
   HISTORICO      :=  'DEVOLUCAO DE VENDA DE MERCADORIAS NO MES.' ;
   DEBITOCREDITO  :=  'D';
   GravaCdsAux;
   {CREDITO}
   UpSet(cdsAux, '41102001','VDA'); {Conta | Centro_Custo}
   CONTA          :=  '41101003';
   CENTROCUSTO    :=  'VDA';
   HISTORICO      :=  'DEVOLUCAO DE VENDA DE MERCADORIAS NO MES.';
   DEBITOCREDITO  :=  'C';
   GravaCdsAux;
  end
   else
  begin
  {DEBITO}
   UpSet(cdsAux, '11402002','VDA'); {Conta | Centro_Custo}
   CONTA          :=  '11402002';
   CENTROCUSTO    :=  'VDA';
   HISTORICO      :=  'DEVOLUCAO DE VENDA DE MERCADORIAS NO MES.';
   DEBITOCREDITO  :=  'D';
   GravaCdsAux;
   {CREDITO}
   UpSet(cdsAux, '41101004','VDA'); {Conta | Centro_Custo}
   CONTA          :=  '41101004';
   CENTROCUSTO    :=  'VDA';
   HISTORICO      :=  'DEVOLUCAO DE VENDA DE MERCADORIAS NO MES.';
   DEBITOCREDITO  :=  'C';
   GravaCdsAux;
  end;
 end
  else
   if TRIM(DescResumida) = 'DEV-RGA' then
   begin
    If SubGrupo = '8' then
    begin
     {DEBITO}
     UpSet(cdsAux, '11402001','RGA'); {Conta | Centro_Custo}
     CONTA          :=  '11402001';
     CENTROCUSTO    :=  'RGA';
     HISTORICO      :=  'DEVOLUCAO DE REPOSICAO EM GARANTIA NO MES.';
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
     {CREDITO}
     UpSet(cdsAux, '31108004','RGA'); {Conta | Centro_Custo}
     CONTA          :=  '31108004';
     CENTROCUSTO    :=  'RGA';
     HISTORICO      :=  'DEVOLUCAO DE REPOSICAO EM GARANTIA NO MES.';
     DEBITOCREDITO  :=  'C';
     GravaCdsAux;
    end
     else
    begin
     {DEBITO}
     UpSet(cdsAux, '11402001','RGA'); {Conta | Centro_Custo}
     CONTA          :=  '11402002';
     CENTROCUSTO    :=  'RGA';
     HISTORICO      :=  'DEVOLUCAO DE REPOSICAO EM GARANTIA NO MES.';
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
     {CREDITO}
     UpSet(cdsAux, '31108004','RGA'); {Conta | Centro_Custo}
     CONTA          :=  '31108004';
     CENTROCUSTO    :=  'RGA';
     HISTORICO      :=  'DEVOLUCAO DE REPOSICAO EM GARANTIA NO MES.';
     DEBITOCREDITO  :=  'C';
     GravaCdsAux;
    end;
   end
    else
     if TRIM(DescResumida) = 'DEV-BON' then
     begin
      If SubGrupo = '8' then
      begin
       UpSet(cdsAux, '11402001','BON');
       CONTA          :=  '11402001';
       CENTROCUSTO    :=  'BON';
       HISTORICO      :=  'DEVOLUCAO DE BONIFICACAO NO MES.';
       DEBITOCREDITO  :=  'D';
       GravaCdsAux;

       UpSet(cdsAux, '41104003','BON');
       CONTA          :=  '41104003';
       CENTROCUSTO    :=  'BON';
       HISTORICO      :=  'DEVOLUCAO DE BONIFICACAO NO MES.';
       DEBITOCREDITO  :=  'C';
       GravaCdsAux;
      end
       else
      begin
       UpSet(cdsAux, '11402002','BON');
       CONTA          :=  '11402002';
       CENTROCUSTO    :=  'BON';
       HISTORICO      :=  MsgHistDevBonif;
       DEBITOCREDITO  :=  'D';
       GravaCdsAux;

       UpSet(cdsAux, '41104003','BON');
       CONTA          :=  '41104003';
       CENTROCUSTO    :=  'BON';
       HISTORICO      :=  MsgHistDevBonif;
       DEBITOCREDITO  :=  'C';
       GravaCdsAux;
     END;
    END
end;

procedure TfrmIntegracao.spCustosDevolucaoClick(Sender: TObject);
begin
 ckbxAtiva.Checked := True; {*** Selecionando Empresa Ativa ***}
 ckbxAtivaSimilar.Checked := True;
 fcstbarIntegracao.Panels[0].Text := ' Exportar: '+ spCustosDevolucao.Caption;
 ExportaCustoDevolucao;
 ckbxAtiva.Checked := False; {*** Selecionando Empresa Ativa ***}
 ckbxAtivaSimilar.Checked := False;
end;

procedure TfrmIntegracao.ExportaCustoDevolucao;
begin
 if not AtivaEmpresas then Exit;
 {}
 AtivaArquivo('DEVOLUCAO.TXT');
 AtivaDisplay;
 CriaCdsAux;
 Cdev_ComsisteMovNoTipoDocumento;
 GravaCustDevolucaoArqTexto;
 {}
 FinalizaArquivo;
 Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);

 frmRelIntegracao := TfrmRelIntegracao.Create( self );
 try
  frmRelIntegracao.QRLabel19.Caption := 'Custo de Devolução de ' + edExportNF_DtInicial.Text + ' a '+ edExportNF_DtFinal.Text;
  frmRelIntegracao.QuickRep1.PreviewModal;
 finally
  FreeAndNil( frmRelIntegracao.QuickRep1 );
  FreeAndNil( frmRelIntegracao );
 end;
end;

procedure TfrmIntegracao.GravaCustDevolucaoArqTexto;
begin
 ListGravados.Items.Clear;
 cdsAux.First;
 while not cdsAux.Eof Do
 begin
  Linha :=
   InsDelimitador( AspasDupla( FormatDateTime( Mask_DDMMYYYY, StrToDate( edExportNF_DtFinal.Text)))) +
   InsDelimitador( AspasDupla('001')) +
   InsDelimitador( AspasDupla('107'));

   if cdsAux.FieldByName('DEBITO_CREDITO').Value = 'D' then
      Linha := Linha +
{conta} InsDelimitador( AspasDupla(cdsAux.FieldByName('CONTA').Value)) +
{""}    InsDelimitador( AspasDupla(''))
    else
      Linha := Linha +
{""}    InsDelimitador( AspasDupla('')) +
{conta} InsDelimitador( AspasDupla( cdsAux.FieldByName('CONTA').Value ));

    Linha := Linha +
         InsDelimitador( AspasDupla( NrOnly( FormatFloat( '00000000000000.00', ConsisteValor(cdsAux.FieldByName('VALOR').Value)))))+
         InsDelimitador( AspasDupla('901')) +
         AspasDupla( 'Devoluções de mercadorias do mes' );

  WriteLn(Arq, Linha );
  ListGravados.Items.Add(Linha);
  cdsAux.Next;
 end;
end;

procedure TfrmIntegracao.AnalisarCustoSaidas(
  EmpresaAtiva: String);
var iSQL  : String;
    CCusto   : String;
begin
 lbGravados.Caption := 'Selecionando Ficha de Estoque';

 iSQL := 'SELECT EF_NFS.EMPRESAID,' +
         '       EF_NFS.NFSID,' +
         '       EF_NFS.DATAEMISSAOID,' +
         '       EF_NFS.OSID,' +
         '       EF_NATUREZAOP.MOVIMENTOESTOQUE,' +
         '       EF_NATUREZAOP.VENDAFATANTECIPADO,' +
         '       EF_NFSITEM.PRODUTOID,' +
         '       EF_PRODUTO.GRUPOID,' +
         '       EF_PRODUTO.CONTACTBDESPESA,' +
         '       EF_PRODUTO.CONTACTBATIVO,' +
         '       EF_SIGLANATUREZA.DESCRICAORESUMIDA,' +
         '       EF_KARDEX.QUANTIDADE,' +
         '       EF_KARDEX.VLRCUSTOUNITARIO,' +
         '       EF_KARDEX.VLRCUSTOTOTAL' +
         '  FROM EF_NFS,' +
         '       EF_NATUREZAOP,' +
         '       EF_NFSITEM EF_NFSITEM,' +
         '       EF_PRODUTO EF_PRODUTO,' +
         '       EF_SIGLANATUREZA EF_SIGLANATUREZA,' +
         '       EF_KARDEX' +
         ' WHERE EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID' +
         '       AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> '+ QuotedStr('D')+
         '       AND EF_NATUREZAOP.MOVIMENTOESTOQUE <> '+ QuotedStr('E')+
         '       AND NVL(EF_NATUREZAOP.VENDAFATANTECIPADO, 0) = 0' +
         '       AND EF_NFS.DATAEMISSAOID >= ' + QuotedStr(edExportNF_DtInicial.EditText)+
         '       AND EF_NFS.DATAEMISSAOID <= ' + QuotedStr(edExportNF_DtFinal.EditText)+
         '       AND EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID' +
         '       AND EF_NFS.NFSID = EF_NFSITEM.NFSID' +
         '       AND EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID' +
         '       AND EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID' +
         '       AND EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID' +
         '       AND EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NATUREZAOP.SIGLANATUREZAID' +
         '       AND EF_NFS.EMPRESAID = EF_KARDEX.EMPRESAID' +
         '       AND EF_NFS.NFSID = EF_KARDEX.NUMDOCUMENTO' +
         '       AND EF_NFS.DATAEMISSAOID = EF_KARDEX.DATAOCORRENCIA' +
         '       AND EF_NFSITEM.PRODUTOID = EF_KARDEX.PRODUTOID' +
         '       AND EF_NFSITEM.ITEMID = DECODE( NVL(EF_KARDEX.ITEMID,0), 0, EF_NFSITEM.ITEMID, EF_KARDEX.ITEMID )'+         
         '       AND EF_KARDEX.TIPODOCUMENTO = '+ QuotedStr('NFS')+
         '       AND EF_NFS.EMPRESAID = ' + EmpresaAtiva +
         '       AND EF_NFS.NATUREZAOPID <> 1332 ';

  try
   ExecDynamicProvider(-1,iSQL,cdsAuxKardex);

   while not cdsAuxKardex.Eof Do
   begin
    lbGravados.Caption := 'Processando Kardex';
    CCusto := GetCentroCusto( cdsAuxKardex.FieldByName('EMPRESAID').AsString,
                              cdsAuxKardex.FieldByName('OSID').AsString,
                              cdsAuxKardex.FieldByName('PRODUTOID').AsInteger );


    CProd_ProcessDescricaoResumKardex( cdsAuxKardex.FieldByName('DESCRICAORESUMIDA').AsString,
                                       cdsAuxKardex.FieldByName('CONTACTBDESPESA').AsString,
                                       cdsAuxKardex.FieldByName('CONTACTBATIVO').AsString,CCusto, cdsAuxKardex );
    cdsAuxKardex.Next;
   end;
 finally
  FreeAndNil(cdsAuxNfs);
  FreeAndNil(cdsAuxNfsItem);
  FreeAndNil(cdsAuxKardex);
 end;
end;

procedure TfrmIntegracao.CProd_ProcessDescricaoResumKardex(DescResumida,
  ContaCtbDespesa, ContaCtbAtivo,CCusto: String; var CDS : TClientDataSet);
var
 CONTA, CENTROCUSTO, DEBITOCREDITO : String;
 vVALOR : Real;

 procedure GravaCdsAux;
 begin
  try
   cdsAux.FieldByName('CONTA').value          := CONTA;
   cdsAux.FieldByName('CENTRO_CUSTO').value   := CENTROCUSTO;
   cdsAux.FieldByName('DEBITO_CREDITO').value := DEBITOCREDITO;
   cdsAux.FieldByName('VALOR').value          := ConsisteValor(cdsAux.FieldByName('VALOR').Value) + vVALOR;
   cdsAux.Post;
  except
   ShowMessage( cds.FieldByName('EMPRESAID').AsString +  cds.FieldByName('NFSID').AsString );
//   beep; //   on E: Exception do ShowMessage( E.Message + ' - ' + CONTA );
  end;
 end;

begin
 lbGravados.Caption := 'Analisando Descrições: '+ DescResumida +
                       ' Despesa: '+ ContaCtbDespesa +
                       ' Ativo: '  + ContaCtbAtivo;

 vValor :=  (  ConsisteValor(cdsAuxKardex.FieldByName('VLRCUSTOUNITARIO').Value) *
               cdsAuxKardex.FieldByName('QUANTIDADE').Value);

 if (TRIM(DescResumida) = 'RVDA') or (TRIM(DescResumida) = 'LEASI')   or
    (TRIM(DescResumida) = 'VDA-EXT') or (TRIM(DescResumida) = 'REM-FUT') or
    (TRIM(DescResumida) = 'VDA-SUC') or (TRIM(DescResumida) = 'VDA-FAN') or
    (TRIM(DescResumida) = 'VDA-FUT') or (TRIM(DescResumida) = 'VDA-ORD') then
    begin
     UpSet( cdsAux, ContaCtbDespesa, ''); {Conta | Centro_Custo}
     CONTA          :=  ContaCtbDespesa;
     CENTROCUSTO    :=  '';
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'BXA-AJUSTE') or (TRIM(DescResumida) = 'ENT-AJUSTE') then
    begin
     UpSet( cdsAux, '32101004', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '32101004';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'DES-CUS') then
    begin
     UpSet( cdsAux, '11402002', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '11402002';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'DEV-COM') then
    begin
     UpSet( cdsAux, '21105001', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '21105001';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'DEV-BON') then
    begin
     UpSet( cdsAux, '11402002', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '11402002';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'COB-CON') then
    begin
     UpSet( cdsAux, '41104002', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '41104002';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
    GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'BAI-OBS') then
    begin
     UpSet( cdsAux, '41104008', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '41104008';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
    GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'TRA-CON') then
    begin
     UpSet( cdsAux, '42108043', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '42108043';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'FOR-GRA') or (TRIM(DescResumida) = 'REP-GAR') or
         (TRIM(DescResumida) = 'SAIDEXT') or (TRIM(DescResumida) = 'TRC-GAR') then
 begin
  UpSet( cdsAux, '41104001', CCusto ); {Conta | Centro_Custo}
  CONTA          :=  '41104001';
  CENTROCUSTO    :=  CCusto;
  DEBITOCREDITO  :=  'D';
  GravaCdsAux;
 end
 else if (TRIM(DescResumida) = 'OSA-EXT') then
 begin
  UpSet( cdsAux, '44101004', CCusto ); {Conta | Centro_Custo}
  CONTA          :=  '44101004';
  CENTROCUSTO    :=  CCusto;
  DEBITOCREDITO  :=  'D';
  GravaCdsAux;
 end

 else if (TRIM(DescResumida) = 'BONIFIC') then
    begin
     UpSet( cdsAux, '41104003', CCusto ); {Conta | Centro_Custo}
     CONTA          :=  '41104003';
     CENTROCUSTO    :=  CCusto;
     DEBITOCREDITO  :=  'D';
     GravaCdsAux;
    end
 else if (TRIM(DescResumida) = 'OUTSDCC') then
   begin
    UpSet( cdsAux, '41104002', CCusto ); {Conta | Centro_Custo}
    CONTA          :=  '41104002';
    CENTROCUSTO    :=  CCusto;
    DEBITOCREDITO  :=  'D';
    GravaCdsAux;
   end
 else if (TRIM(DescResumida) = 'MER-SIN') then
   begin
    UpSet( cdsAux, '44101002', CCusto ); {Conta | Centro_Custo}
    CONTA          :=  '44101002';
    CENTROCUSTO    :=  CCusto;
    DEBITOCREDITO  :=  'D';
    GravaCdsAux;
   end
 else if (TRIM(DescResumida) = 'TPC-REC') then
   begin
    UpSet( cdsAux, '11206003', CCusto ); {Conta | Centro_Custo}
    CONTA          :=  '11206003';
    CENTROCUSTO    :=  CCusto;
    DEBITOCREDITO  :=  'D';
    GravaCdsAux;
   end
 else if (TRIM(DescResumida) = 'TRC-REC') then
   begin
    UpSet( cdsAux, '11402002', CCusto ); {Conta | Centro_Custo}
    CONTA          :=  '11402002';
    CENTROCUSTO    :=  CCusto;
    DEBITOCREDITO  :=  'D';
    GravaCdsAux;
   end
 else if (TRIM(DescResumida) = 'DOACOES') or (TRIM(DescResumida) = 'DACAO')  then
   begin
    UpSet( cdsAux, '41104001', CCusto ); {Conta | Centro_Custo}
    CONTA          :=  '41104001';
    CENTROCUSTO    :=  CCusto;
    DEBITOCREDITO  :=  'D';
    GravaCdsAux;
   end
 else if (TRIM(DescResumida) = 'REM-DES') then
   begin
    UpSet( cdsAux, '44101001', CCusto ); {Conta | Centro_Custo}
    CONTA          :=  '44101001';
    CENTROCUSTO    :=  CCusto;
    DEBITOCREDITO  :=  'D';
    GravaCdsAux;
   end



 else
   ShowMessage('Descrição resumida não cadastrado no relatório:' +  DescResumida + #13 +
               'Comunicar o DSI');

 cdsAux.First;
 UpSet(cdsAux, ContaCtbAtivo, ''); {Conta | Centro_Custo}
 CONTA          := ContaCtbAtivo;
 CENTROCUSTO    := '';
 DEBITOCREDITO  := 'C';
 GravaCdsAux;
end;


procedure TfrmIntegracao.GravaCustosProdArqTexto;
begin
 ListGravados.Items.Clear;
 cdsAux.First;
 while not cdsAux.Eof Do
 begin
  Linha :=
   InsDelimitador( AspasDupla( FormatDateTime( Mask_DDMMYYYY, StrToDate( edExportNF_DtFinal.Text)))) +
   InsDelimitador( AspasDupla('001')) +
   InsDelimitador( AspasDupla('11'))  ;

   if cdsAux.FieldByName('DEBITO_CREDITO').Value = 'D' then
      Linha := Linha +
{conta} InsDelimitador( AspasDupla(cdsAux.FieldByName('CONTA').Value)) +
{""}    InsDelimitador( AspasDupla(''))
    else
      Linha := Linha +
{""}    InsDelimitador( AspasDupla('')) +
{conta} InsDelimitador( AspasDupla( cdsAux.FieldByName('CONTA').Value ));

  Linha := Linha +
           InsDelimitador( AspasDupla( NrOnly( FormatFloat( '00000000000000.00', ConsisteValor(cdsAux.FieldByName('VALOR').Value)))));

  if not cdsAux.FieldByname('CENTRO_CUSTO').IsNull then
     Linha := Linha + InsDelimitador( AspasDupla( cdsAux.FieldByname('CENTRO_CUSTO').Value ))
  else
     Linha := Linha + InsDelimitador(AspasDupla('901'));

  Linha := Linha +
           InsDelimitador( AspasDupla( 'Custos de saidas de mercadorias') );

  WriteLn(Arq,  Linha );
  ListGravados.Items.Add(Linha);

  cdsAux.Next;
 end;
end;

procedure TfrmIntegracao.spCustosProdClick(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := ' Exportar: '+ spCustosProd.Caption;
 ExportaCustosProdutos;
end;

procedure TfrmIntegracao.ExportaConvICMS;
var FilePath,iSQL : String;

 procedure CriaCdsIcms;
 begin
  if cdsICMS.Active then
     begin
      cdsICMS.EmptyDataSet;
      cdsICMS.Close;
     end;

  cdsICMS.CreateDataSet;
  cdsICMS.LogChanges := false;
  cdsICMS.Active := True;
  cdsICMS.First;
  cdsICMS.EmptyDataSet;
 end;

 procedure CriaTipo75;
 begin
  if cdsTipo75.Active then
     begin
      cdsTipo75.EmptyDataSet;
      cdsTipo75.Close;
     end;

  cdsTipo75.CreateDataSet;
  cdsTipo75.LogChanges := false;
  cdsTipo75.Active := True;
  cdsTipo75.First;
  cdsTipo75.EmptyDataSet;
 end;
begin
// AtivaArquivo('CONVICMS.TXT');
 AtivaDisplay;
 PathExport := ExtractFilePath( Application.ExeName )+ 'EXPORT\INTER';

 VlrDesc     := 0;
 VlrIcms     := 0;

 CriaCdsIcms;
 CriaTipo75;
 LoadcdsIcms;

 if not AtivaEmpresas then Exit;

 cdsICMS.First;
 while not cdsICMS.Eof do
 begin
  Tipo10_11( cdsICMS.FieldByName('ESTADO').AsString );
  cdsICMS.Next;
 end;

 { *** Categoria do Cliente ***}
 cdsAuxEntidadeGrupo := nil;
 iSQL := ' SELECT'+
         '  EF_ENTIDADEGRUPO.ENTIDADEID,'+
         '  EF_ENTIDADEGRUPO.CATEGORIAID'+
         '  FROM'+
         '  EF_ENTIDADE,'+
         '  EF_ENTIDADEGRUPO'+
         ' WHERE'+
         '  EF_ENTIDADEGRUPO.ENTIDADEID = EF_ENTIDADE.ENTIDADEID';

 try
  ExecDynamicProvider(-1,iSQL,cdsAuxEntidadeGrupo);

  cdsAuxEntidadeGrupo.AddIndex('idx1','ENTIDADEID',[ixPrimary] );
  cdsAuxEntidadeGrupo.IndexName := 'idx1';

  Screen.Cursor := crHourGlass;

  cdsAuxNfe := nil;
  iSQL := 'SELECT EF_NFE.EMPRESAID,'+
          '       EF_NFE.NFEID,'+
          '       EF_NFE.DATAEMISSAOID,'+
          '       EF_NFE.ENTIDADEID,'+
          '       EF_NFE.DATAENTRADA,'+
          '       EF_NFE.NATUREZAOPID,'+
          '       EF_NATUREZAOP.CFOP,'+
          '       EF_NFE.CONTRIBUINTEICMS,'+
          '       EF_NFE.CATEGORIAID CATEGNOTA,'+
          '       EF_NFE.MODALIDADEFRETE,'+
          '       EF_NFE.SIGLAUFID,'+
          '       EF_NFE.NOME,'+
          '       EF_NFE.TIPONOTA,'+
          '       EF_NFE.VLRTOTALNOTA,'+
          '       EF_NFE.VLRTOTALISENTASICMS,'+
          '       EF_NFE.VLRTOTALIPI,'+
          '       EF_NFE.VLRTOTALBASEIPI,'+
          '       EF_NFE.VLRTOTALOUTRASIPI,'+
          '       EF_NFE.VLRTOTALISENTASIPI,'+
          '       EF_NFE.VLRTOTALBASEICMS,'+
          '       EF_NFE.VLRTOTALICMS,'+
          '       EF_NFE.VLRTOTALOUTRASICMS,'+
          '       EF_ENTIDADE.CPFCNPJ,'+
          '       EF_ENTIDADE.FISICAJURIDICA,'+
          '       EF_ENTIDADE.INSCRESTADUAL'+
          '  FROM EF_NFE,'+
          '       EF_NATUREZAOP,'+
          '       EF_ENTIDADE'+
          ' WHERE'+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID '+
          '  AND EF_ENTIDADE.ENTIDADEID(+) = EF_NFE.ENTIDADEID'+
          '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
          '  AND EF_NFE.DATAENTRADA >= '+QuotedStr( MaskDtINIConvIcms.Text )+
          '  AND EF_NFE.DATAENTRADA <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
          '  AND EF_NFE.DATAENTRADA IS NOT NULL'+
          '  AND EF_NFE.CANCELADA = 0'+
          '  AND EF_NATUREZAOP.DOCINTERNO = 0';

  if ( CheckEmp12e13.Checked = False ) then
      iSQL := iSQL + '  AND ( EF_NFE.EMPRESAID = 1 ' +
                      '        OR EF_NFE.EMPRESAID = 2 '+
                      '        OR EF_NFE.EMPRESAID = 3 '+
                      '        OR EF_NFE.EMPRESAID = 4 '+
                      '        OR EF_NFE.EMPRESAID = 5 '+
                      '       )';

  if ( CheckEmp12e13.Checked ) then
     iSQL := iSQL + ' AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) )';

  ExecDynamicProvider(-1,iSQL,cdsAuxNfe );
  cdsAuxNfe.Name := 'cdsAuxNfe';

  cdsAuxNfs := nil;
  iSQL := 'SELECT EF_NFS.EMPRESAID,'+
          '       EF_NFS.NFSID,'+
          '       EF_NFS.DATAEMISSAOID,'+
          '       EF_NFS.ENTIDADEID,'+
          '       EF_NFS.NATUREZAOPID,'+
          '       EF_NATUREZAOP.CFOP,'+
          '       EF_NFS.CONTRIBUINTEICMS,'+
          '       EF_NFS.MODALIDADEFRETE,'+
          '       EF_NFS.CATEGORIAID CATEGNOTA,'+
          '       EF_NFS.SIGLAUFID,'+
          '       EF_NFS.NOME,'+
          '       EF_NFS.TIPONOTA,'+
          '       EF_NFS.VLRTOTALNOTA,'+
          '       EF_NFS.VLRTOTALBASEICMS,'+
          '       EF_NFS.VLRTOTALICMS,'+
          '       EF_NFS.VLRTOTALIPI,'+
          '       EF_NFS.VLRTOTALBASEIPI,'+
          '       EF_NFS.VLRTOTALISENTASIPI,'+
          '       EF_NFS.VLRTOTALOUTRASIPI,'+
          '       EF_NFS.VLRTOTALISENTASICMS,'+
          '       EF_NFS.VLRTOTALOUTRASICMS,'+
          '       EF_NFS.VLRTOTALSERVICO,'+
          '       EF_NFS.VLRTOTALPRODUTO,'+
          '       EF_ENTIDADE.CPFCNPJ,'+
          '       EF_ENTIDADE.FISICAJURIDICA,'+
          '       EF_ENTIDADE.INSCRESTADUAL'+
          '  FROM EF_NFS,'+
          '       EF_NATUREZAOP,'+
          '       EF_ENTIDADE'+
          ' WHERE'+
          '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID '+
          '  AND EF_ENTIDADE.ENTIDADEID(+) = EF_NFS.ENTIDADEID'+
          '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
          '  AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( MaskDtINIConvIcms.Text )+
          '  AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( MaskDtFIMConvIcms.Text )+
          '  AND EF_NFS.CANCELADA = 0'+
          '  AND EF_NATUREZAOP.DOCINTERNO = 0';

   if ( CheckEmp12e13.Checked = False ) then
       iSQL := iSQL + '  AND ( EF_NFS.EMPRESAID = 1 ' +
                      '        OR EF_NFS.EMPRESAID = 2 '+
                      '        OR EF_NFS.EMPRESAID = 3 '+
                      '        OR EF_NFS.EMPRESAID = 4 '+
                      '        OR EF_NFS.EMPRESAID = 5 '+
                      '       )';

  if ( CheckEmp12e13.Checked ) then
           iSQL := iSQL + ' AND ( ( EF_NFS.EMPRESAID = 12 ) OR ( EF_NFS.EMPRESAID = 13 ) )';

  if CheckEmp12e13.Checked = False then
     iSQL := iSQL + 'AND EF_NFS.VLRTOTALPRODUTO > 0';

  ExecDynamicProvider(-1, iSQL, cdsAuxNfs );
  cdsAuxNfs.Name := 'cdsAuxNfs';

  Proc_NF( cdsAuxNFS, 'EF_NFS', 'EF_NFSITEM');
  Proc_NF( cdsAuxNFE,'EF_NFE', 'EF_NFEITEM');

  if ckbInventario.Checked then
     Tipo74;

  if CheckEmp12e13.Checked then
     begin
      Tipo8810( 'PE' );
      Tipo8835( 'PE' );
     end;

  cdsICMS.First;
  while not cdsICMS.Eof do
  begin
   {Juntar arquivos}
   FilePath := PathExport +cdsICMS.FieldByName('ESTADO').AsString+ 'TP50.TXT';
   if FileExists( FilePath ) then
      begin
       AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP50' );
       AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP51' );
       AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP54' );
       AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP70' );
       AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP85' );

       if ckbInventario.Checked then
          AgruparArq( 'PE', 'TP74' );

       AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP75' );
       if CheckEmp12e13.Checked then
          begin
           AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP8810' );
           AgruparArq( cdsICMS.FieldByName('ESTADO').AsString, 'TP8835' );
          end;
       Tipo90( cdsICMS.FieldByName('ESTADO').AsString );
      end;
    cdsICMS.Next;
  end;

 finally
  Screen.Cursor := crDefault;
  FreeAndNil(cdsAuxNfe);
  FreeAndNil(cdsAuxNfs);
  FreeAndNil(cdsAuxProduto);
  FreeAndNil(cdsAuxEntidadeGrupo);
 end;
  //FinalizaArquivo;
 MessageDlg('Exportação Realizada com Sucesso!',mtInformation,[mbok],0)
end;

procedure TfrmIntegracao.Tipo10_11(UF: String);
begin
 AtivaArquivo2(PathExport+ UF + '.TXT');
 {Apagar os arquivos para nova geração}
 try
  ApagaArquivosTxt(UF);
  if CheckEmp12e13.Checked then
     begin
      RetornaLocalTmb('1');
      IniciaRegistro;
     end
  else
     RetornaLocalTmb('2');


//  cdsICMS.IndexFieldNames := 'ESTADO';
  cdsICMS.FindKey([copy(UF,1,2)]);
  cdsICMS.Edit;
  cdsICMS.FieldByName('TIPO_10').Value := cdsICMS.FieldByName('TIPO_10').Value + 1;
  cdsICMS.FieldByName('TIPO_11').Value := cdsICMS.FieldByName('TIPO_11').Value + 1;
  cdsICMS.Post;
 finally
  FinalizaArquivo;
 end;
end;

procedure TfrmIntegracao.IniciaRegistro;
var i : Integer;

 procedure CriaDataSetsCds;
 begin
{  cds8835.CreateDataSet;
  cds881040.CreateDataSet;
  cds8880CFOP.CreateDataSet;
  cds8880Total.CreateDataSet;
  cds8835.LogChanges      := false;
  cds881040.LogChanges    := false;
  cds8880CFOP.LogChanges  := false;
  cds8880Total.LogChanges := false;}
  {}
  cds8835.EmptyDataSet;
  cds881040.EmptyDataSet;
  cds8880CFOP.EmptyDataSet;
  cds8880Total.EmptyDataSet;
  {
  cds8835.Active      := true;
  cds881040.Active    := true;
  cds8880CFOP.Active  := true;
  cds8880Total.Active := true;}
 end;

begin
 CriaDataSetsCds;
 {Inicializando registro 88 - 35 - Detalhe 11}

 cds8835.Append;
 cds8835.FieldByName('CodApuracao').Value         := '02';
 cds8835.FieldByName('VlrTotalImport').Value      := 0;
 cds8835.FieldByName('VlrTotalIcms').Value        := 0;
 cds8835.FieldByName('PercentualIncentivo').Value := 47.5;
 cds8835.FieldByName('VlrTotalSaidaN').Value      := 0;
 cds8835.FieldByName('VlrTotalSaidaForaUF').Value := 0;
 cds8835.FieldByName('VlrTotalIcmsSaidaUF').Value := 0;
 cds8835.Post;

 {Inicializando registro de Total 88 - 80 - Detalhe 00/01/02/10}
 with cds8880Total do
 begin
  Append;
  cds8880Total.FieldByName('Detalhe').Value := 0;
  Post;
  Append;
  cds8880Total.FieldByName('Detalhe').Value := 1;
  Post;
  Append;
  cds8880Total.FieldByName('Detalhe').Value := 12;
  Post;
  Append;
  cds8880Total.FieldByName('Detalhe').Value := 2;
  Post;
  Append;
  cds8880Total.FieldByName('Detalhe').Value := 10;
  Post;
  First;
  while not Eof do
  begin
   Edit;
   for i := 1 to Fields.Count - 1 do
    Fields[i].AsFloat := 0;
   Post;
   Next;
  end;
 end;
end;

procedure TfrmIntegracao.Proc_NF(var cdsPai : TClientDataSet; NomeTblPai, NomeTblFilho : String);
var UF : String;
    cdsFilho : TClientDataSet;
begin
 cdsFilho := nil;
 {Geração dos arquivos}
 try
  if NomeTblPai = 'EF_NFS' then
     AbreNFsItemConvenio( cdsFilho )
  else
    AbreNFeItemConvenio( cdsFilho );

  cdsPai.First;
  while not cdsPai.Eof do
  begin
   if       AnsiUpperCase( NomeTblPai ) = 'EF_NFS' then
            begin
             cdsFilho.Filter := 'EMPRESAID = '+ cdsPai.FieldByName('EMPRESAID').AsString +
                                'AND NFSID = '+ cdsPai.FieldByName('NFSID').AsString +
                                'AND DATAEMISSAOID = '+ QuotedStr( cdsPai.FieldByName('DATAEMISSAOID').AsString );
             cdsFilho.Filtered := True;

             if CheckEmp12e13.Checked then
                if cdsFilho.IsEmpty then
                   begin
                    cdsPai.Next;
                    Continue;
                   end;
            end
    else begin
          cdsFilho.Filter := 'EMPRESAID = '+ cdsPai.FieldByName('EMPRESAID').AsString +
                             'AND NFEID = '+ cdsPai.FieldByName('NFEID').AsString +
                             'AND DATAEMISSAOID = '+ QuotedStr( cdsPai.FieldByName('DATAEMISSAOID').AsString );
          cdsFilho.Filtered := True;
         end;
    {Para os casos Novos enviar todas as operações}
    if      CheckEmp12e13.Checked then
            UF := 'PE'
    else if CheckUF_SP.Checked then
            UF := 'SP'
    else begin
          UF := cdsPai.FieldByName('SIGLAUFID').AsString;
          if not cdsICMS.FindKey( [cdsPai.FieldByName('SIGLAUFID').AsString] ) then
             begin
              cdsPai.Next;
              Continue;
             end;
         end;

        if NomeTblPai = 'EF_NFE' then
           if ( cdsPai.FieldByName('NFEID').AsInteger = 3401 ) then
              beep;


    if ( cdsPai.FieldByName('CFOP').AsInteger <> 1353 ) and
       ( cdsPai.FieldByName('CFOP').AsInteger <> 1360 ) and
       ( cdsPai.FieldByName('CFOP').AsInteger <> 2353 ) then
       begin

        Tipo50( cdsPai,cdsFilho,  NomeTblPai,UF + 'TP50'  );
        Tipo51(  cdsPai, NomeTblPai, UF + 'TP51' );

        if CheckEmp12e13.Checked then
           begin
            if not cdsFilho.IsEmpty then
               Tipo54( cdsPai, cdsFilho, NomeTblPai, UF + 'TP54' )
           end
        else
           Tipo54( cdsPai, cdsFilho,NomeTblPai, UF + 'TP54' );
       end;

    if ( cdsPai.FieldByName('CFOP').AsInteger = 1353 ) or
       ( cdsPai.FieldByName('CFOP').AsInteger = 1360 ) or
       ( cdsPai.FieldByName('CFOP').AsInteger = 2353 ) then
       Tipo70( cdsPai, cdsFilho, NomeTblPai, UF + 'TP70' );

    if ( cdsPai.FieldByName('CFOP').AsInteger <> 1353 ) and
       ( cdsPai.FieldByName('CFOP').AsInteger <> 1360 ) and
       ( cdsPai.FieldByName('CFOP').AsInteger <> 2353 ) then
        if CheckEmp12e13.Checked then
           begin
            if not cdsFilho.IsEmpty then
               Tipo75( cdsPai, cdsFilho, NomeTblPai, UF + 'TP75', NomeTblPai );
           end
        else
           Tipo75( cdsPai, cdsFilho,NomeTblPai, UF + 'TP75', NomeTblPai );

    cdsPai.Next;
   end;
 finally
  FreeAndNil( cdsFilho );
 end;
end;

procedure TfrmIntegracao.Tipo50(var cdsPai,cdsFilho: TClientDataSet; NomeTabela : String; UF: String);
var FieldName : String;
begin
 Linha := '';
 if not FileExists(PathExport+ UF + '.TXT') then
    AtivaArquivo2(PathExport+ UF + '.TXT', 'R')
 else
    AtivaArquivo2(PathExport+ UF + '.TXT', 'A');

 Linha := '50';
 with dmEf do
 begin

  if ( Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').Value) ) > 0 )then
      begin
       Linha := Linha + '00000000000000'+
                        'ISENTO        ';
      end
  else
     begin
      if      ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 1 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' );
               //if ( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) <> '' ) then
               Linha := Linha + AdicCaracter( TransfNum( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) ),' ',14)
              end
      else if ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' )+
                        'ISENTO        ';
              end;
     end;

  if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS' ) then
     begin
      FieldName := 'NFSID';
      Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAEMISSAOID').AsDateTime);
     end
  else
     begin
      FieldName := 'NFEID';
      Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAENTRADA').AsDateTime) ;
     end;

  Linha := Linha +  cdsPai.FieldByName('SIGLAUFID').AsString;
  Linha := Linha + '01';

  if ( cdsPai.FieldByName('EMPRESAID').Value = 12 ) or ( cdsPai.FieldByName('EMPRESAID').Value = 13 ) then
     Linha := Linha + '1  '
  else
     Linha := Linha + '   ';

  Linha := Linha + FormatFloat('000000', cdsPai.FieldByName(FieldName).AsInteger);
  Linha := Linha + AdicCaracter( Copy( cdsPai.FieldByName('CFOP').Value, 1, 4 ),' ',4 ) ; //NATOPERACAO

  if cdsPai.FieldByName('TIPONOTA').AsString = 'F' then
     Linha := Linha + 'T'
  else
     Linha := Linha + 'P';

  if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
     Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)-ConsisteValor(cdsPai.FieldByName('VLRTOTALSERVICO').AsCurrency)),'')
  else
     Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)),'');

  Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALBASEICMS').AsCurrency)),'');
  Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALICMS').AsCurrency)),'');
  Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALISENTASICMS').AsCurrency) ),'' );
  Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALOUTRASICMS').AsCurrency) ),'' );
  Linha := Linha + NrOnly( FormatFloat('00.00', cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency ),'' );

  if CheckEmp12e13.Checked then
     Tipo50PE( Arq, cdsPai, NomeTabela, UF )
  else
     begin
      Linha := Linha + 'N';
      Writeln( Arq, Linha );
     end;

  cdsICMS.IndexFieldNames := 'ESTADO';
  cdsICMS.FindKey([copy(UF,1,2)]);
  cdsICMS.Edit;
  cdsICMS.FieldByName('TIPO_50').Value    := ConsisteValor( cdsICMS.FieldByName('TIPO_50').Value ) + 1;
  cdsICMS.FieldByName('TIPO_TOTAL').Value := ConsisteValor( cdsICMS.FieldByName('TIPO_TOTAL').Value ) + 1;
  cdsICMS.Post;
 end;
 FinalizaArquivo;
end;

procedure TfrmIntegracao.Tipo51(cdsPai: TClientDataset; NomeTabela : String; UF: String);
var F : TextFile;
    FieldName : String;
begin
 try
   if not FileExists(PathExport+ UF + '.TXT') then
      AtivaArquivo2(PathExport+ UF + '.TXT', 'R')
   else
      AtivaArquivo2(PathExport+ UF + '.TXT', 'A');

  Linha := '51';
{  if      ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 ) then
           begin
            Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' )+
                             'ISENTO        ';
           end
  else if ( Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').Value) ) > 0 )then
           begin
            Linha := Linha + '00000000000000'+
                             'ISENTO        ';
          end
  else begin
        Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' );
        if ( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) <> '' ) then
           Linha := Linha + AdicCaracter( TransfNum( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) ),' ',14)
        else
           Linha := Linha + 'ISENTO        ';
       end;}

  if ( Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').Value) ) > 0 )then
      begin
       Linha := Linha + '00000000000000'+
                        'ISENTO        ';
      end
  else
     begin
      if      ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 1 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' );
               //if ( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) <> '' ) then
               Linha := Linha + AdicCaracter( TransfNum( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) ),' ',14)
              end
      else if ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' )+
                        'ISENTO        ';
              end;
     end;

 if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
    begin
     FieldName := 'NFSID';
     Linha :=  Linha + FormatDateTime( Mask_YYYYMMDD , cdsPai.FieldByName('DATAEMISSAOID').AsDateTime);
    end
 else
    begin
     FieldName := 'NFEID';
     Linha :=  Linha + FormatDateTime( Mask_YYYYMMDD , cdsPai.FieldByName('DATAENTRADA').AsDateTime);
    end;

 Linha :=  Linha + cdsPai.FieldByName('SIGLAUFID').AsString;

 if ( cdsPai.FieldByName('EMPRESAID').Value = 12 ) or ( cdsPai.FieldByName('EMPRESAID').Value = '13' ) then
    Linha :=  Linha + '1  '
 else
    Linha :=  Linha + '   ';

  Linha :=  Linha + FormatFloat('000000' , cdsPai.FieldByName(FieldName).AsInteger);
  Linha := Linha + AdicCaracter( Copy( cdsPai.FieldByName('CFOP').Value, 1, 4 ),' ',4 ) ; //NATOPERACAO

  if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
     Linha :=  Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)-ConsisteValor(cdsPai.FieldByName('VLRTOTALSERVICO').AsCurrency)),'')
  else
     Linha :=  Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)),'');


  Linha :=  Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALIPI').AsCurrency)),'');
  Linha :=  Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALISENTASIPI').AsCurrency)),'');
  Linha :=  Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALOUTRASIPI').AsCurrency)),'');
  Linha :=  Linha + Repl(' ', 20);

  if CheckEmp12e13.Checked then
     Linha := Linha + Tipo51PE( F, cdsPai, NomeTabela, UF )
  else
     Linha :=  Linha + 'N';

  WriteLn(Arq, Linha);

  cdsICMS.IndexFieldNames := 'ESTADO';
  cdsICMS.FindKey([copy(UF,1,2)]);
  cdsICMS.Edit;
  cdsICMS.FieldByName('TIPO_51').Value    := ConsisteValor( cdsICMS.FieldByName('TIPO_51').Value )   + 1;
  cdsICMS.FieldByName('TIPO_TOTAL').Value := ConsisteValor( cdsICMS.FieldByName('TIPO_TOTAL').Value ) + 1;
  cdsICMS.Post;
 Finally
  FinalizaArquivo;
 end;
end;

procedure TfrmIntegracao.Tipo54(cdsPai, cdsFilho: TClientDataset; NomeTabela : String; UF: String);
var CodigoProduto,Item : Integer;
    FieldName : String;
  cdsN: TClientDataSet;
  UF2: string;

  procedure AbrirArqTipo54;
  begin
   if not FileExists(PathExport+ UF + '.TXT') then
      AtivaArquivo2( PathExport+ UF + '.TXT', 'R' )
   else
      AtivaArquivo2(PathExport+ UF + '.TXT', 'A' );

   if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
      FieldName := 'NFSID'
   else
      FieldName := 'NFEID';
  end;

begin
 AbrirArqTipo54;

 cdsN := TClientDataSet.Create( Nil );
 cdsN.FieldDefs.Add( 'ALIQUOTAICMS', ftFloat, 0,true );
 cdsN.CreateDataSet;

 try
   cdsN.InsertRecord([cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency]);

   cdsFilho.First;
   Item := 1;
   while not cdsFilho.Eof Do
    begin
    try
     Linha := '';
     Linha := '54';

     if ( Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').Value) ) > 0 )then
        Linha := Linha + '00000000000000'
     else
       begin
        if      ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 1 ) then
                Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' )
        else if ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 ) then
                Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' );
       end;

     Linha := linha + '01';
     if ( cdsPai.FieldByName('EMPRESAID').Value = 12 ) or ( cdsPai.FieldByName('EMPRESAID').Value = 13 ) then
        Linha := linha +  '1  '
     else
        Linha := linha +  '   ';

     Linha := linha +  FormatFloat('000000', cdsPai.FieldByName(FieldName).AsInteger);
     Linha := Linha + AdicCaracter( Copy( cdsPai.FieldByName('CFOP').Value, 1, 4 ),' ',4 ) ; //NATOPERACAO

     if CheckEmp12e13.Checked then
        Linha := linha +  FormatFloat( '000', cdsFilho.FieldByName('SITTRIBUTARIAESTADUAL').AsFloat)
     else
        Linha := linha +  PadL( Trim( cdsFilho.FieldByName('SITTRIBUTARIAESTADUAL').AsString ), 3);

     Linha := linha +  StrToStrZero(IntToStr(Item), 3);

     if      ( cdsFilho.FieldByName('EMPRESAID').Value > 1 ) and ( cdsFilho.FieldByName('EMPRESAID').Value <> 12 )
             and ( cdsFilho.FieldByName('EMPRESAID').Value <> 13 ) then
             CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger + ( 20000 * cdsFilho.FieldByName('EMPRESAID').Value )
     else if ( cdsFilho.FieldByName('EMPRESAID').Value = 12 ) then
             CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger + ( 30000 * cdsFilho.FieldByName('EMPRESAID').Value )
     else if ( cdsFilho.FieldByName('EMPRESAID').Value = 13 ) then
             CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger + ( 40000 * cdsFilho.FieldByName('EMPRESAID').Value )
     else CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger;

     Linha := linha +  AdicCaracter((IntToStr(CodigoProduto)),' ',14,'D');

     Linha := linha +  NrOnly( FormatFloat('00000000.000', cdsFilho.FieldByName('QUANTIDADE').AsCurrency ),'');
     Linha := linha +  NrOnly( FormatFloat('0000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRPRECOUNITARIO').AsCurrency) * cdsFilho.FieldByName('QUANTIDADE').AsCurrency),'');
     Linha := linha +  '000000000000';
     Linha := linha +  NrOnly( FormatFloat('0000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRBASEICMS').AsCurrency)),'');

     if CheckEmp12e13.Checked then
        Tipo54PE( Arq, cdsPai, cdsFilho, NomeTabela, UF )
     else
     begin
      Linha := linha +  NrOnly( FormatFloat('0000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRBASEICMS').AsCurrency)),'');
      Linha := linha +  NrOnly( FormatFloat('0000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRIPI').AsCurrency)),'');
      Write( Arq, Linha );
      Linha :=  NrOnly( FormatFloat('00.00', cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency),'');
      Writeln( Arq, linha );
     end;

     if not cdsN.Locate( 'ALIQUOTAICMS',VarArrayOf([cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency]
                         ),[loCaseInsensitive]) then
        begin
         // Para os casos Novos enviar todas as operações
         if      CheckEmp12e13.Checked then
                 UF2 := 'PE'
         else if CheckUF_SP.Checked then
                 UF2 := 'SP'
         else    UF2 := cdsPai.FieldByName('SIGLAUFID').AsString;

         CloseFile( Arq );
         Tipo50( cdsPai,cdsFilho, NomeTabela, UF2 + 'TP50'  );

         cdsN.InsertRecord([cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency ]);

         AbrirArqTipo54;
        end;

     {Próximo Item}
     Inc( Item );

     cdsFilho.Next;

     cdsICMS.IndexFieldNames := 'ESTADO';
     cdsICMS.FindKey([copy(UF,1,2)]);
     cdsICMS.Edit;
     cdsICMS.FieldByName('TIPO_54').Value    := ConsisteValor( cdsICMS.FieldByName('TIPO_54').Value ) + 1;
     cdsICMS.FieldByName('TIPO_TOTAL').Value := ConsisteValor( cdsICMS.FieldByName('TIPO_TOTAL').Value ) + 1;
     cdsICMS.Post;

    except on
     E : Exception do
     raise Exception.Create( e.Message + ' Nota '+ cdsFilho.FieldByname( FieldName ).AsString );
    end;

    end;

    cdsN.Close;

 Finally
  FreeAndNil( cdsN );
  FinalizaArquivo;
 end;
end;

procedure TfrmIntegracao.Tipo70(cdsPai, cdsFilho: TClientDataset; NomeTabela : String; UF: String);
var FieldName : String;
begin
 try
  if not FileExists(PathExport+ UF + '.TXT') then
     AtivaArquivo2(PathExport+ UF + '.TXT', 'R')
  else
     AtivaArquivo2(PathExport+ UF + '.TXT', 'A');

  Linha := '70';

  if ( Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').Value) ) > 0 )then
      begin
       Linha := Linha + '00000000000000'+
                        'ISENTO        ';
      end
  else
     begin
      if      ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 1 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' );
               //if ( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) <> '' ) then
               Linha := Linha + AdicCaracter( TransfNum( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) ),' ',14)
              end
      else if ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' )+
                        'ISENTO        ';
              end;
     end;


    if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
      begin
       FieldName := 'NFSID';
       Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAEMISSAOID').AsDateTime);
      end
   else
      begin
       FieldName := 'NFEID';
       Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAENTRADA').AsDateTime);
      end;

   Linha := Linha + cdsPai.FieldByName('SIGLAUFID').AsString;
   Linha := Linha + '08';
   Linha := Linha + Repl(' ',3);
   Linha := Linha + FormatFloat('000000', cdsPai.FieldByName(FieldName).AsInteger);
   Linha := Linha + Copy( cdsPai.FieldByName('CFOP').Value, 1, 4 );

   if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
      Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency) - ConsisteValor(cdsPai.FieldByName('VLRTOTALSERVICO').AsCurrency)),'')
   else
      Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)),'');

   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALBASEICMS').AsCurrency)),'');
   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALICMS').AsCurrency)),'');
   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALISENTASICMS').AsCurrency)),'');
   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALOUTRASICMS').AsCurrency)),'');

   if cdsPai.FieldByName('MODALIDADEFRETE').AsString = 'E' then
      Linha := Linha +  '1'
   else
      Linha := Linha +  '2';

   if CheckEmp12e13.Checked then
      Linha := Linha + Tipo70PE( Arq, cdsPai, cdsFilho, NomeTabela, UF )
   else
      Linha := Linha + 'N';

   WriteLn(Arq, Linha);

   cdsICMS.IndexFieldNames := 'ESTADO';
   cdsICMS.FindKey([copy(UF,1,2)]);
   cdsICMS.Edit;
   cdsICMS.FieldByName('TIPO_70').Value    := cdsICMS.FieldByName('TIPO_70').Value + 1;
   cdsICMS.FieldByName('TIPO_TOTAL').Value := cdsICMS.FieldByName('TIPO_TOTAL').Value + 1;
   cdsICMS.Post;
 finally
   FinalizaArquivo;
 end;
end;

procedure TfrmIntegracao.Tipo75(cdsPai, cdsFilho: TClientDataset; NomeTabela : String; UF: String; NomeArq : string );
var  CodigoProduto : Integer;
begin
 try
  if not FileExists(PathExport+ UF + '.TXT') then
     AtivaArquivo2(PathExport+ UF + '.TXT', 'R')
  else
     AtivaArquivo2(PathExport+ UF + '.TXT', 'A');

  with dmEF do begin
   cdsFilho.First;
   while not cdsFilho.Eof do
    begin
     if      ( cdsFilho.FieldByName('EMPRESAID').Value > 1 ) and ( cdsFilho.FieldByName('EMPRESAID').Value <> 12 )
              and ( cdsFilho.FieldByName('EMPRESAID').Value <> 13 ) then
             CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger + ( 20000 * cdsFilho.FieldByName('EMPRESAID').Value )
     else if ( cdsFilho.FieldByName('EMPRESAID').Value = 12 ) then
             CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger + ( 30000 * cdsFilho.FieldByName('EMPRESAID').Value )
     else if ( cdsFilho.FieldByName('EMPRESAID').Value = 13 ) then
             CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger + ( 40000 * cdsFilho.FieldByName('EMPRESAID').Value )
     else CodigoProduto := cdsFilho.FieldByName('PRODUTOID').AsInteger;

     if not cdsTipo75.FindKey([CodigoProduto]) then
        begin
         cdsTipo75.InsertRecord( [ CodigoProduto ] );

         Linha := '75';
         Linha := Linha + FormatDateTime(Mask_YYYYMMDD, StrToDate( MaskDtINIConvIcms.Text ) );
         Linha := Linha + FormatDateTime(Mask_YYYYMMDD, StrToDate( MaskDtFIMConvIcms.Text ) );
         Linha := Linha + AdicCaracter( IntToStr( CodigoProduto ),' ',14 );
         Linha := Linha + AdicCaracter( Trim( cdsFilho.FieldByName('NCMID').AsString),'0',8,'E' );
         Linha := Linha + AdicCaracter( Copy( cdsFilho.FieldByName('DESCRICAOPORTUGUES').AsString, 1, 53 ),' ',53 );
         Linha := Linha + AdicCaracter( Trim( ConsisteInteiro( cdsFilho.FieldByName('UNIDADEID').AsString ) ),' ',6 );

         if CheckEmp12e13.Checked then
            begin
             Linha := Linha + AdicCaracter( Trim( ConsisteInteiro( cdsFilho.FieldByName('SITTRIBUTARIAESTADUAL').AsString ) ),' ',3 );
             Linha := Linha + NrOnly( FormatFloat('00.00', cdsFilho.FieldByName('ALIQUOTAIPI').AsCurrency ),'' );
             Linha := Linha + NrOnly( FormatFloat('00.00', cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency ),'' );
             Linha := Linha + '0000';
             Linha := Linha + NrOnly( FormatFloat('0000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRBASEICMS').AsCurrency) ),'');
             Linha := Linha + '              190001';
            end
         else
            begin
             Linha := Linha + NrOnly( FormatFloat('000.00', cdsFilho.FieldByName('ALIQUOTAIPI').AsCurrency ),'' );
             Linha := Linha + NrOnly( FormatFloat('00.00', cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency ),'' );
             Linha := Linha + '00000';
             Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRBASEICMS').AsCurrency)),'');
            end;

// cgl apagar esta linha - somente teste
//         if  AnsiUpperCase( NomeArq ) = 'EF_NFS' then
//             linha := Linha + '-' + cdsFilho.FieldByName('NFSID').AsString
//         else
//             linha := Linha + '-' +  cdsFilho.FieldByName('NFEID').AsString;

         WriteLn(Arq, Linha);

         cdsICMS.IndexFieldNames := 'ESTADO';
         cdsICMS.FindKey([Copy( UF,1, 2)]);
         cdsICMS.Edit;
         cdsICMS.FieldByName('TIPO_75').Value    := ConsisteValor( cdsICMS.FieldByName('TIPO_75').Value ) + 1;
         cdsICMS.FieldByName('TIPO_TOTAL').Value := ConsisteValor( cdsICMS.FieldByName('TIPO_TOTAL').Value ) + 1;
         cdsICMS.Post;
        end;
     {Próximo Item}
     cdsFilho.Next;
    end;
  end;
 finally
  FinalizaArquivo;
 end;
end;

{procedure TfrmIntegracao.Tipo85(cdsPai: TClientDataset; NomeTabela : String; UF: String);
var FieldName : String;
begin
 try
  if not FileExists(PathExport+ UF + '.TXT') then
     AtivaArquivo2(PathExport+ UF + '.TXT', 'R')
  else
     AtivaArquivo2(PathExport+ UF + '.TXT', 'A');

  Linha := '70';

  if ( Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').Value) ) > 0 )then
      begin
       Linha := Linha + '00000000000000'+
                        'ISENTO        ';
      end
  else
     begin
      if      ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 1 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' );
               //if ( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) <> '' ) then
               Linha := Linha + AdicCaracter( TransfNum( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) ),' ',14)
              end
      else if ( cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 ) then
              begin
               Linha := Linha + AdicCaracter( CGC(cdsPai.FieldByName('CPFCNPJ').AsString),'0',14,'E' )+
                        'ISENTO        ';
              end;
     end;


    if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
      begin
       FieldName := 'NFSID';
       Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAEMISSAOID').AsDateTime);
      end
   else
      begin
       FieldName := 'NFEID';
       Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAENTRADA').AsDateTime);
      end;

   Linha := Linha + cdsPai.FieldByName('SIGLAUFID').AsString;
   Linha := Linha + '08';
   Linha := Linha + Repl(' ',3);
   Linha := Linha + FormatFloat('000000', cdsPai.FieldByName(FieldName).AsInteger);
   Linha := Linha + Copy( cdsPai.FieldByName('CFOP').Value, 1, 4 );

   if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
      Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency) - ConsisteValor(cdsPai.FieldByName('VLRTOTALSERVICO').AsCurrency)),'')
   else
      Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)),'');

   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALBASEICMS').AsCurrency)),'');
   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALICMS').AsCurrency)),'');
   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALISENTASICMS').AsCurrency)),'');
   Linha := Linha + NrOnly( FormatFloat('000000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALOUTRASICMS').AsCurrency)),'');

   if cdsPai.FieldByName('MODALIDADEFRETE').AsString = 'E' then
      Linha := Linha +  '1'
   else
      Linha := Linha +  '2';

   if CheckEmp12e13.Checked then
      Linha := Linha + Tipo70PE( Arq, cdsPai, NomeTabela, UF )
   else
      Linha := Linha + 'N';

   WriteLn(Arq, Linha);

   cdsICMS.IndexFieldNames := 'ESTADO';
   cdsICMS.FindKey([copy(UF,1,2)]);
   cdsICMS.Edit;
   cdsICMS.FieldByName('TIPO_85').Value    := cdsICMS.FieldByName('TIPO_85').Value + 1;
   cdsICMS.FieldByName('TIPO_TOTAL').Value := cdsICMS.FieldByName('TIPO_TOTAL').Value + 1;
   cdsICMS.Post;
 finally
   FinalizaArquivo;
 end;
end;}

procedure TfrmIntegracao.Tipo50PE(var F: TextFile; cdsPai: TClientDataSet;
  NomeTabela : String; UF: String);
begin
 Linha := Linha + 'N';
 if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
    Linha := Linha + Repl(' ', 8)
 else
    Linha := Linha + FormatDateTime( Mask_YYYYMMDD, cdsPai.FieldByName('DATAEMISSAOID').AsDateTime);

 {Número de lançamento contábil}
 Linha := Linha + Repl(' ',12);

 {Não utilizado}
 Linha := Linha + '000         00                00000000000000000000000';

 if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
    Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency) - ConsisteValor(cdsPai.FieldByName('VLRTOTALSERVICO').AsCurrency)),'')
 else
    Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALNOTA').AsCurrency)),'');

 Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALBASEICMS').AsCurrency)),'');
 Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALICMS').AsCurrency)),'');
 Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALISENTASICMS').AsCurrency)),'');
 Linha := Linha + NrOnly( FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALOUTRASICMS').AsCurrency)),'');

 {Observação}
 Linha := Linha + Repl('0', 5);
 WriteLn(Arq, Linha);

 {Geração do registro 88 - 10 - 40}
 GerarRegistro881040( cdsPai );

 {Geração do registro 88 - 80 - 00/01/02/10}
 {GerarRegistro8880( cdsPai );}
end;

procedure TfrmIntegracao.GerarRegistro881040(cdsPai: TClientDataset);
var ItemCds : Integer;
    Cliente,Fornecedor : Boolean;
begin
 {Geração do registro 88 - 10 - 40}
 Cliente    := False;
 Fornecedor := False;

 cds881040.Last;
 if cds881040.FieldByName('ITEM').IsNull then
    ItemCds := 1
 else
    ItemCds := cds881040.FieldByName('ITEM').Value + 1;
   {}
       if ( Trim(cdsPai.FieldByName('CPFCNPJ').Value) <> '' ) and not
          ( Pos( '999999', TransfNum( cdsPai.FieldByName('CPFCNPJ').Value ) ) > 0 ) then
          begin
           if not cds881040.Locate( 'CNPJ', CGC( cdsPai.FieldByName('CPFCNPJ').Value ), [] ) then
              begin
               cds881040.Append;
               cds881040.FieldByName('CNPJ').Value := CGC( cdsPai.FieldByName('CPFCNPJ').Value );
               cds881040.FieldByName('IE').Value   := TransfNum( ConsisteNull( cdsPai.FieldByName('INSCRESTADUAL').Value ) );

               cdsAuxEntidadeGrupo.FindKey([ cdsPai.FieldByName('CATEGNOTA').Value ]);
               cdsAuxEntidadeGrupo.First;
               while not cdsAuxEntidadeGrupo.Eof do
               begin
                Cliente    := False;
                Fornecedor := False;

                if cdsAuxEntidadeGrupo.FieldByName('CATEGORIAID').Value = 1 then
                   Cliente    := True;
                if cdsAuxEntidadeGrupo.FieldByName('CATEGORIAID').Value = 2 then
                   Fornecedor := True;
                cdsAuxEntidadeGrupo.Next;
               end;
               if      ( ( Fornecedor ) and ( Cliente ) ) then
                       cds881040.FieldByName('SITUACAO').Value := 3
               else if ( Cliente ) then
                       cds881040.FieldByName('SITUACAO').Value := 1
                    else
                       cds881040.FieldByName('SITUACAO').Value := 2;
               end
          end;
  {}
  if cds881040.State = dsInsert then
  begin
   cds881040ITEM.Value                        := ItemCds;
   cds881040.FieldByName('UF').Value          := cdsPai.FieldByName('SIGLAUFID').AsString;
   cds881040.FieldByName('NOME').Value        := cdsPai.FieldByName('NOME').AsString;
   cds881040.FieldByName('DATAINICIAL').Value := FormatDateTime(Mask_YYYYMMDD, StrToDate(MaskDtINIConvIcms.EditText));
   cds881040.FieldByName('DATAFINAL').Value   := FormatDateTime(Mask_YYYYMMDD, StrToDate(MaskDtFIMConvIcms.EditText));
   cds881040.Post;
  end;
end;

procedure TfrmIntegracao.Tipo8810(UF: String);
var Dia, Mes, Ano  : Word;
    SldCredorAnterior,
    EstDebito,
    EstCredito,
    OutrosDebitos,
    OutrosCreditos,
    Saldo,
    VlrAcumulado,
    TotalCredito8510,
    TotalDebito8500,
    Deducoes,
    EVlrTotalIcms,
    SVlrTotalIcms  : Real;
    cds88          : TClientDataSet;
    i              : Integer;
    Qualificacao   : String;
begin
 OutrosDebitos := StrToFloat( MktODebito.Text );
 OutrosCreditos := StrToFloat( MktOCredito.Text );
 EstDebito := StrToFloat( MktEstDebito.Text );
 EstCredito := StrToFloat( MktEstCredito.Text );
 SldCredorAnterior := StrToFloat( MktSldCAnterior.Text );
 Deducoes := StrToFloat( MktDeducoes.Text );

 try
  if FileExists( PathExport + UF + 'TP8810.TXT' ) then
     DeleteFile( PathExport + UF + 'TP8810.TXT' );

   AtivaArquivo2(PathExport + UF + 'TP8810.TXT', 'R');

   TotalItem := 1;
   DecodeDate( StrToDate( MaskDtINIConvIcms.Text ), Ano, Mes, Dia );
   {Registro Tipo 88 - 10 - Detalhe 00}
   Linha := '88';
   Linha := Linha + FormatFloat('000000000', TotalItem);
   Linha := Linha + '10';
   Linha := Linha + '00';
   Linha := Linha + IntToStr( Ano ) + FormatFloat( '00',  Mes );
   Linha := Linha + 'N';
   Linha := Linha + 'S';
   Linha := Linha + 'N';
   WriteLn(Arq, Linha);

   Inc( TotalItem );

   {Registro Tipo 88 - 10 - Detalhe 10}
   Linha := '88';
   Linha := Linha + FormatFloat( '000000000', TotalItem );
   Linha := Linha +  '10';
   Linha := Linha +  '10';
   Linha := Linha +  AdicCaracter( NomeTMB ,' ',35 );
   Linha := Linha +  '18158002971906';
   Linha := Linha +  '46563938000200';
   Linha := Linha +  '008132228611';
   Linha := Linha +  '008132228611';
   Linha := Linha +  '000000';
   Linha := Linha +  '54345160';
   Linha := Linha +  AdicCaracter( EmailContabilTMB ,' ',50 );
   WriteLn(Arq, Linha);

   Inc( TotalItem );

   {Registro Tipo 88 - 10 - Detalhe 20}
   Linha := '88';
   Linha := Linha +  FormatFloat( '000000000', TotalItem);
   Linha := Linha +  '10';
   Linha := Linha +  '20';
   Linha := Linha +  AdicCaracter('TAKUYA YAMAJI',' ',40);
   Linha := Linha +  '22897910836';
   Linha := Linha +  '001141340001';
   Linha := Linha +  AdicCaracter( EmailContabilTMB ,' ',50);
   WriteLn(Arq, Linha);

   Inc( TotalItem );

   {Registro Tipo 88 - 10 - Detalhe 30}
   Linha := '88';
   Linha := Linha +   FormatFloat( '000000000', TotalItem );
   Linha := Linha +   '10';
   Linha := Linha +   '30';
   Linha := Linha +   AdicCaracter( 'LUIZ CARLOS BERNHOEFT JUNIOR',' ',50);
   Linha := Linha +   '78486548420';
   Linha := Linha +   'PE015455O7';
   Linha := Linha +   '008132228611';
   Linha := Linha +   '008199652599';
   Linha := Linha +   '008132228611';
   Linha := Linha +   '000000';
   Linha := Linha +  AdicCaracter( EmailContabilTMB ,' ',50 );
   WriteLn(Arq, Linha);

   cds881040.First;
   while not cds881040.Eof do
   begin
    Inc( TotalItem );
    {Registro Tipo 88 - 10 - Detalhe 40}
    Linha := '88';
    Linha := Linha +  FormatFloat('000000000', TotalItem);
    Linha := Linha +  '10';
    Linha := Linha +  '40';
    Linha := Linha +  AdicCaracter( cds881040.FieldByName('CNPJ').AsString,'0',14,'E' );
    Linha := Linha +  AdicCaracter( cds881040.FieldByName('IE').AsString,' ',14 );
    Linha := Linha +  cds881040.FieldByName('UF').Value;
    Linha := Linha +  AdicCaracter( cds881040.FieldByName('NOME').AsString,' ',35 );
    Linha := Linha +  cds881040.FieldByName('DATAINICIAL').Value;
    Linha := Linha +  cds881040.FieldByName('DATAFINAL').Value;
    Linha := Linha +  cds881040.FieldByName('SITUACAO').AsString;
    WriteLn(Arq, Linha);
    cds881040.Next;
   end;

  if CheckEmp12e13.Checked then
     begin
      Inc( TotalItem );
      {Registro Tipo 88 - 15 Detalhe 00}
      Linha := '88';
      Linha := Linha + FormatFloat( '000000000', TotalItem );
      Linha := Linha + '15';
      Linha := Linha + '00';
      Linha := Linha + IntToStr( YearOf( StrToDate( MaskDtINIConvIcms.Text ) ) -1 )+ '1231';
      Linha := Linha + '000015';
      VlrAcumulado := CalcVATipo881500; { Calcula o Total de Saídas menos Total de Entradas }
      if VlrAcumulado < 0 then
         Linha := Linha + '8888888888888'
      else
         Linha := Linha + AdicCaracter( NrOnly( FormatFloat('00000000000.00', VlrAcumulado ),''),'0',13,'E');
      Writeln(Arq,Linha);

     if ckbInventario.Checked then
        GeraInventario;

     {Registro Tipo 88 - 80 Detalhe 00}
      for i := 1 to 2 do
      begin
       if i = 1 then
          begin
           Qualificacao := '00';
           GeraTipo8880(cds88,'1');
          end
       else
          begin
           Qualificacao := '01';
           GeraTipo8880(cds88,'1',Qualificacao);
          end;

       while not ( cds88.Eof ) do
       begin
        Inc( TotalItem );
        Linha := '88';
        Linha := Linha + FormatFloat( '000000000', TotalItem );
        Linha := Linha + '80';
        Linha := Linha + '00';
        Linha := Linha + Qualificacao;

        if Qualificacao = '00' then
           Linha := Linha + Copy( cds88.FieldByName('CFOP').AsString,1,4 )
        else
           Linha := Linha + '0000';

        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
        Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
        Writeln(Arq,Linha);
        cds88.Next;
       end;
      end;

     {Registro Tipo 88 - 80 Detalhe 01}
      for i := 1 to 2 do
      begin
       if i = 1 then
          begin
           Qualificacao := '00';
           GeraTipo8880(cds88,'2');
          end
       else
          begin
           Qualificacao := '01';
           GeraTipo8880(cds88,'2',Qualificacao );
          end;

       while not ( cds88.Eof ) do
       begin
        Inc( TotalItem );
        Linha := '88';
        Linha := Linha + FormatFloat( '000000000', TotalItem );
        Linha := Linha + '80';
        Linha := Linha + '01';
        Linha := Linha + Qualificacao;

        if Qualificacao = '00' then
           Linha := Linha + Copy( cds88.FieldByName('CFOP').AsString,1,4 )
        else
           Linha := Linha + '0000';

        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
        Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
        Writeln(Arq,Linha);
        cds88.Next;
       end;
      end;

     {Registro Tipo 88 - 80 Detalhe 02}
      for i := 1 to 2 do
      begin
       if i = 1 then
          begin
           Qualificacao := '00';
           GeraTipo8880(cds88,'3');
          end
       else
          begin
           Qualificacao := '01';
           GeraTipo8880(cds88,'3',Qualificacao );
          end;

       while not ( cds88.Eof ) do
       begin
        Inc( TotalItem );
        Linha := '88';
        Linha := Linha + FormatFloat( '000000000', TotalItem );
        Linha := Linha + '80';
        Linha := Linha + '02';
        Linha := Linha + Qualificacao;

        if Qualificacao = '00' then
           Linha := Linha + Copy( cds88.FieldByName('CFOP').AsString,1,4 )
        else
           Linha := Linha + '0000';

        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
        Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
        Writeln(Arq,Linha);
        cds88.Next;
       end;
      end;

     {Registro Tipo 88 - 80 Detalhe 10}
      GeraTotalTipo8880(cds88);
      Inc( TotalItem );
      Linha := '88';
      Linha := Linha + FormatFloat( '000000000', TotalItem );
      Linha := Linha + '80';
      Linha := Linha + '10';
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
      EVlrTotalIcms := cds88.FieldByName('VLRTOTALICMS').AsFloat; { Entradas e Aquisicoes Credito Imposto }
      Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
      Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
      Writeln(Arq,Linha);
      cds88.Next;

     {Registro Tipo 88 - 82 Detalhe 00}
      for i := 1 to 2 do
      begin
       if i = 1 then
          begin
           Qualificacao := '00';
           GeraTipo8882(cds88,'5');
          end
       else
          begin
           Qualificacao := '01';
           GeraTipo8882(cds88,'5',Qualificacao );
          end;

       while not ( cds88.Eof ) do
       begin
        Inc( TotalItem );
        Linha := '88';
        Linha := Linha + FormatFloat( '000000000', TotalItem );
        Linha := Linha + '82';
        Linha := Linha + '00';
        Linha := Linha + Qualificacao;

        if Qualificacao = '00' then
           Linha := Linha + Copy( cds88.FieldByName('CFOP').AsString,1,4 )
        else
           Linha := Linha + '0000';

        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
        Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
        Writeln(Arq,Linha);
        cds88.Next;
       end;
      end;

     {Registro Tipo 88 - 82 Detalhe 01}
      for i := 1 to 2 do
      begin
       if i = 1 then
          begin
           Qualificacao := '00';
           GeraTipo8882(cds88,'6');
          end
       else
          begin
           Qualificacao := '01';
           GeraTipo8882(cds88,'6',Qualificacao );
          end;

       while not ( cds88.Eof ) do
       begin
        Inc( TotalItem );
        Linha := '88';
        Linha := Linha + FormatFloat( '000000000', TotalItem );
        Linha := Linha + '82';
        Linha := Linha + '01';
        Linha := Linha + Qualificacao;

        if Qualificacao = '00' then
           Linha := Linha + Copy( cds88.FieldByName('CFOP').AsString,1,4 )
        else
           Linha := Linha + '0000';

        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
        Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
        Writeln(Arq,Linha);
        cds88.Next;
       end;
      end;

     {Registro Tipo 88 - 82 Detalhe 02}
      for i := 1 to 2 do
      begin
       if i = 1 then
          begin
           Qualificacao := '00';
           GeraTipo8882(cds88,'7');
          end
       else
          begin
           Qualificacao := '01';
           GeraTipo8882(cds88,'7',Qualificacao );
          end;

       while not ( cds88.Eof ) do
       begin
        Inc( TotalItem );
        Linha := '88';
        Linha := Linha + FormatFloat( '000000000', TotalItem );
        Linha := Linha + '82';
        Linha := Linha + '02';
        Linha := Linha + Qualificacao;

        if Qualificacao = '00' then
           Linha := Linha + Copy( cds88.FieldByName('CFOP').AsString,1,4 )
        else
           Linha := Linha + '0000';

        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
        Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
        Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
        Writeln(Arq,Linha);
        cds88.Next;
       end;
      end;

      {Registro Tipo 88 - 82 Detalhe 10}
       GeraTotalTipo8882(cds88);
       Inc( TotalItem );
       Linha := '88';
       Linha := Linha + FormatFloat( '000000000', TotalItem );
       Linha := Linha + '82';
       Linha := Linha + '10';
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', cds88.FieldByName('VLRTOTALNOTA').AsFloat ),'') ,'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEICMS').AsFloat ),''),'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALICMS').AsFloat ),''),'0',13 );
       SVlrTotalIcms := cds88.FieldByName('VLRTOTALICMS').AsFloat; { Prestações com Debito do Imposto }
       Linha := Linha + '0000000000000'; { Icms Fonte | não se encaixa no caso da toshiba. Sr. Joel }
       Linha := Linha + '0000000000000'; { Icms Entrada | não se encaixa no caso da toshiba. Sr. Joel }
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASICMS').AsFloat ),''),'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASICMS').AsFloat),''),'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALBASEIPI').AsFloat ),''),'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALIPI').AsFloat ),''),'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALISENTASIPI').AsFloat ),''),'0',13 );
       Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',cds88.FieldByName('VLRTOTALOUTRASIPI').AsFloat ),''),'0',13 );
       Writeln(Arq,Linha);

  {*** Apuracao do Icms - Tipo 88 - 85 *** }
     {Registro Tipo 88 - 85 Detalhe 00 - Saidas}
      Inc( TotalItem );
      Linha := '88';
      Linha := Linha + FormatFloat( '000000000', TotalItem );
      Linha := Linha + '85';
      Linha := Linha + '00';
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', SVlrTotalIcms ),''),'0',13); { Total de Icms das Saídas = Tipo 88 - 82 - 10 campo 07 }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', OutrosDebitos ),''),'0',13); { Outros Débitos }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', EstCredito ),''),'0',13); { Estorno de Crédito }
      TotalDebito8500 := SVlrTotalIcms + OutrosDebitos + EstCredito;
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', TotalDebito8500 ),''),'0',13); { Total dos Débitos - soma dos anteriores  }
      Writeln(Arq,Linha);

     {Registro Tipo 88 - 85 Detalhe 10 Entradas}
      Inc( TotalItem );
      Linha := '88';
      Linha := Linha + FormatFloat( '000000000', TotalItem );
      Linha := Linha + '85';
      Linha := Linha + '10';
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', EVlrTotalIcms ),''),'0',13);
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', OutrosCreditos ),''),'0',13); { Outros Creditos }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', EstDebito ),''),'0',13); { Estorno de Dedito }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00',( EVlrTotalIcms + OutrosCreditos + EstDebito ) ),''),'0',13); { SubTotal dos Creditos - somar os anteriores }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', SldCredorAnterior ),''),'0',13); { Saldo Credor periodo anterior }
      TotalCredito8510 := EVlrTotalIcms + OutrosCreditos + EstDebito + SldCredorAnterior;
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', TotalCredito8510 ),''),'0',13); { Total dos Débitos - soma dos anteriores  }
      Writeln(Arq,Linha);

     {Registro Tipo 88 - 85 Detalhe 20 Entradas}
      Inc( TotalItem );
      Linha := '88';
      Linha := Linha + FormatFloat( '000000000', TotalItem );
      Linha := Linha + '85';
      Linha := Linha + '20';
      Saldo := TotalCredito8510 - TotalDebito8500;

      if Saldo < 0 then
         Saldo := 0;
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', Saldo ),''),'0',13); { Saldo Credor - ( Total de Credito - Total Debito ) }

      Saldo := TotalDebito8500 - TotalCredito8510;
      if Saldo < 0 then
         Saldo := 0;
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', Saldo ),''),'0',13); { Saldo Devedor - ( Total de Débito - Total Crédito ) }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', Deducoes ),''),'0',13); { Deducoes }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', ( Saldo - Deducoes ) ),''),'0',13); { Total dos Débitos - soma dos anteriores  }
      Writeln(Arq,Linha);

     {Registro Tipo 88 - 85 Detalhe 30 Entradas}
      Inc( TotalItem );
      Linha := '88';
      Linha := Linha + FormatFloat( '000000000', TotalItem );
      Linha := Linha + '85';
      Linha := Linha + '30';
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13);
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13); { Icms Substituto Entradas }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13); { Icms Substituto Saidas }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13); { Icms Diferenca Aliquotas }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13); { Icms Importacao }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13); { Outras Obrigacoes }
      Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', 0 ),''),'0',13); { Total de Obrigacoes }
      Writeln(Arq,Linha);
     end;
  finally
  FinalizaArquivo;
 end;
end;

procedure TfrmIntegracao.GeraTotalTipo8880(var cds: TClientDataSet);
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  SUM( EF_NFE.VLRTOTALNOTA ) VLRTOTALNOTA ,'+
         '  SUM( EF_NFE.VLRTOTALBASEICMS ) VLRTOTALBASEICMS,'+
         '  SUM( EF_NFE.VLRTOTALICMS )  VLRTOTALICMS,'+
         '  SUM( EF_NFE.VLRTOTALISENTASICMS )  VLRTOTALISENTASICMS,'+
         '  SUM( EF_NFE.VLRTOTALOUTRASICMS ) VLRTOTALOUTRASICMS,'+
         '  SUM( EF_NFE.VLRTOTALBASEIPI ) VLRTOTALBASEIPI,'+
         '  SUM( EF_NFE.VLRTOTALIPI ) VLRTOTALIPI,'+
         '  SUM( EF_NFE.VLRTOTALISENTASIPI ) VLRTOTALISENTASIPI,'+
         '  SUM( EF_NFE.VLRTOTALOUTRASIPI ) VLRTOTALOUTRASIPI'+
         '  FROM'+
         '  EF_NFE,'+
         '  EF_NATUREZAOP'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
         '  AND EF_NFE.DATAENTRADA >= '+QuotedStr( MaskDtINIConvIcms.Text )+
         '  AND EF_NFE.DATAENTRADA <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
         '  AND EF_NFE.DATAENTRADA IS NOT NULL'+
         '  AND EF_NFE.CANCELADA = 0'+
         '  AND EF_NATUREZAOP.CFOP <> 1353 '+
         '  AND EF_NATUREZAOP.CFOP <> 1360 '+
         '  AND EF_NATUREZAOP.CFOP <> 2353 '+
         '  AND SUBSTR( EF_NATUREZAOP.CFOP,1,1) IN ('+ QuotedStr('1')+','+ QuotedStr('2')+','+ QuotedStr('3')+ ') '+
         '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0';

 if ( CheckEmp12e13.Checked ) then
    iSQL := iSQL + ' AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) )';

 try
  ExecDynamicProvider(-1,iSQL,cds );
  cds.First;
 except on
  E : Exception do
  raise Exception.create(E.Message);
 end;
end;

procedure TfrmIntegracao.Tipo8835(UF: String);
var CreditoPresumido,
    SaldaoDevedor,
    SaldoRecolher,
    SaidaForaEstado : Real;

function FormatNumber( Value : Real ): Real;
var StrValue,NewValue,IntValue : String;
    index : Integer;
begin
 StrValue := FloatToStr( Frac( Value ) );
 NewValue := StrValue;
 if Length( StrValue ) > 2 then
    begin
     index := PosEx( ',',StrValue );
     StrValue := copy( StrValue,index+1,2 );
     IntValue := FloatToStr( int( Value ) );
     NewValue := IntValue + ',' + StrValue;
    end;
 Result := StrToFloat(NewValue);
end;

begin
 if FileExists( PathExport + UF + 'TP8835.TXT' ) then
    DeleteFile( PathExport + UF + 'TP8835.TXT' );

 try
  AtivaArquivo2(PathExport + UF + 'TP8835.TXT', 'R');
  Inc( TotalItem );
  {Registro Tipo 88 - 10 - Detalhe 00}
  Linha := '88';
  Linha := Linha + FormatFloat( '000000000', TotalItem);
  Linha := Linha + '35';
  Linha := Linha + '11';
  Linha := Linha + AdicCaracter( cds8835.FieldByName('CodApuracao').AsString,'0',2,'E');
  Linha := Linha + AdicCaracter( NrOnly( FormatFloat('00000000000.00', ConsisteValor(cds8835.FieldByName('VLRTOTALIMPORT').Value)),''),' ',13,'E');
  Linha := Linha + AdicCaracter( NrOnly( FormatFloat('00000000000.00', ConsisteValor(cds8835.FieldByName('VLRTOTALICMS').Value)),''),' ',13,'E');
  Linha := Linha + AdicCaracter( NrOnly( FormatFloat('00000000000.00', ConsisteValor(cds8835.FieldByName('VLRTOTALSAIDAN').Value)),''),' ',13,'E');
  Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '000.00' , cds8835.FieldByName('PERCENTUALINCENTIVO').Value),''),'0',5,'E');
  Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', ConsisteValor(cds8835.FieldByName('VLRTOTALSAIDAFORAUF').Value)),''),' ',13,'E');
  SaidaForaEstado := StrToFloat( FormatFloat( '00000000000.00', ConsisteValor(cds8835.FieldByName('VLRTOTALICMSSAIDAUF').Value) ) );
  Linha := Linha + AdicCaracter( NrOnly( FormatFloat( '00000000000.00', ConsisteValor(cds8835.FieldByName('VLRTOTALICMSSAIDAUF').Value)),''),' ',13,'E');
  CreditoPresumido := SaidaForaEstado * cds8835.FieldByName('PERCENTUALINCENTIVO').Value /100;
  SaldaoDevedor     := ( cds8835.FieldByName('VLRTOTALICMSSAIDAUF').Value - CreditoPresumido);
  CreditoPresumido  := StrToFloat( FormatFloat( '00000000000.00', FormatNumber( CreditoPresumido ) ) );
  SaldaoDevedor     := StrToFloat( FormatFloat( '00000000000.00', SaldaoDevedor ) );
  SaldoRecolher     := StrToFloat( FormatFloat( '00000000000.00', SaldaoDevedor - CreditoPresumido ) );
  Linha := Linha + AdicCaracter( NrOnly( FloatToStr( CreditoPresumido ),''),'0',13,'E');
  Linha := Linha + AdicCaracter( NrOnly( FloatToStr( SaldaoDevedor ),''),'0',13,'E');
  Linha := Linha + AdicCaracter( NrOnly( FloatToStr( SaldoRecolher ),''),'0',13,'E');
  WriteLn(Arq, Linha);
 finally
  FinalizaArquivo;
 end;
end;

procedure TfrmIntegracao.AgruparArq(UF, TIPO: String);
var F_Le, F_Grava : TextFile;
    Txt : Char;
begin
 if FileExists( PathExport + UF + TIPO + '.TXT' ) then
 begin
  AssignFile( F_Grava, PathExport + UF + '.TXT' );
  Append(F_Grava);

  AssignFile( F_Le, PathExport + UF + TIPO + '.TXT' );
  Reset(F_Le);

  try
   while not Eof(F_Le) Do
    begin
     Read( F_Le ,Txt );
     Write( F_Grava, Txt );
    end;
  finally
   Flush(F_Le);
   Flush(F_Grava);

   CloseFile(F_Le);
   CloseFile(F_Grava);
  end;
 end;
end;

procedure TfrmIntegracao.Tipo90(UF: String);
var brancos : String;
begin
 try
  brancos := '                                   ';
  if not FileExists(PathExport+ UF + '.TXT') then
     AtivaArquivo2(PathExport+ UF + '.TXT', 'R')
  else
     AtivaArquivo2(PathExport+ UF + '.TXT', 'A' );

  {Tipo 90 Totais}
  Linha := '90';
  if CheckEmp12e13.Checked then
  begin
   Linha := Linha + '46563938000200';
   Linha := Linha + '18158002971906';
  end
   else
  begin
   Linha := Linha + '46563938000110';
   Linha := Linha + '206235020114  ';
  end;
  Linha := Linha + '50';
  Linha := Linha + FormatFloat('00000000', cdsICMS.FieldByName('TIPO_50').Value);
  Linha := Linha + '51';
  Linha := Linha + FormatFloat('00000000', cdsICMS.FieldByName('TIPO_51').Value);
  Linha := Linha + '54';
  Linha := Linha + FormatFloat('00000000', cdsICMS.FieldByName('TIPO_54').Value);
  Linha := Linha + '70';
  Linha := Linha +  FormatFloat('00000000', cdsICMS.FieldByName('TIPO_70').Value);

  if ckbInventario.Checked then
     begin
      Linha := Linha + '74';
      Linha := Linha + FormatFloat('00000000', Total74);
      TotalItem := TotalItem + Total74;
      brancos := '                         ';
     end;

  Linha := Linha + '75';
  Linha := Linha + FormatFloat('00000000', cdsICMS.FieldByName('TIPO_75').Value);

  if CheckEmp12e13.Checked then
  begin
   Linha := Linha +  '99';
   Linha := Linha + FormatFloat('00000000', cdsICMS.FieldByName('TIPO_TOTAL').Value + TotalItem + 3);
  end
  else
  begin
   Linha := Linha +  '99';
   Linha := Linha +  FormatFloat('00000000', cdsICMS.FieldByName('TIPO_TOTAL').Value + 3);
  end;
  Linha := Linha + brancos;
  Linha := Linha + '1';

  WriteLn(Arq, Linha);
 Finally
  FinalizaArquivo;
 end;
end;

function TfrmIntegracao.Tipo51PE(var F: TextFile; cdsPai: TClientDataset;
  NomeTabela : String; UF: String):String;
begin
 Result := 'N' + FormatFloat('00000000000.00', ConsisteValor(cdsPai.FieldByName('VLRTOTALBASEIPI').AsCurrency));
end;

function TfrmIntegracao.Tipo70PE(var F: TextFile; cdsPai, cdsFilho: TClientDataset;
  NomeTabela : String; UF: String):String;
var  Aliq : string;
begin
 Result := 'N';
 if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
    Result := Result + Repl(' ', 8)
 else
    Result := Result + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAEMISSAOID').AsDateTime);
 Result := Result + Repl(' ', 12);                                     {???}{NFS | NFE}

 Aliq := NrOnly(FormatFloat('00.00', cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency),'');

 Result := Result + Aliq;
 Result := Result + Repl('0', 5);
end;

{Convertar campo texto que contenha string com numero para somente número}
function TfrmIntegracao.TransfNum(Txt: String): String;
var NovoTxt : String;
    x : integer;
begin
 for x := 1 to LengTh( Txt ) do begin
  if Txt[x] in ['0'..'9'] then
     NovoTxt := NovoTxt + Txt[x];
 end;

 if NovoTxt = ''  then
    Result := UpperCase( Txt )
 else
    Result := NovoTxt;
end;

function TfrmIntegracao.CGC(cTexto: String): String;
begin
 if COPY( cTEXTO , 3,1 ) = '.' then
    CGC := COPY(cTEXTO,1,2)+COPY(cTEXTO,4,3)+COPY(cTEXTO,8,3)+COPY(cTEXTO,12,4)+COPY(cTEXTO,17,2)
 else
    CGC := cTEXTO;
end;

procedure TfrmIntegracao.Tipo54PE(var F: TextFile; cdsPai, cdsFilho: TClientDataset;
  NomeTabela : String; UF: String);
begin
 Linha := Linha + '000000000000';
 Linha := Linha + NrOnly( FormatFloat('0000000000.00', ConsisteValor(cdsFilho.FieldByName('VLRIPI').AsCurrency)),'');
 Linha := Linha + Copy(NrOnly( FormatFloat('000.00', ConsisteValor(cdsFilho.FieldByName('ALIQUOTAICMS').AsCurrency)),''), 2, 4);

 if Pos( '999999', TransfNum(cdsPai.FieldByName('CPFCNPJ').value) ) > 0 then
    Linha := Linha + 'ISENTO        '
 else
   begin
    if      cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 1 then
            Linha := Linha + AdicCaracter( TransfNum( cdsPai.FieldByName('INSCRESTADUAL').AsString),' ',14 )
    else if cdsPai.FieldByName('CONTRIBUINTEICMS').Value = 0 then
            Linha := Linha + 'ISENTO        ';
   end;

 if AnsiUpperCase( NomeTabela ) = AnsiUpperCase( 'EF_NFS') then
    Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAEMISSAOID').AsDateTime)
 else
    Linha := Linha + FormatDateTime(Mask_YYYYMMDD, cdsPai.FieldByName('DATAENTRADA').AsDateTime);
 Linha := Linha + cdsPai.FieldByName('SIGLAUFID').AsString;

 if cdsFilho.FieldByName('INCENTIVOICMS').AsInteger = 1 then
    begin
     Linha := Linha + '0200';
     Writeln(Arq,Linha);
     Linha := '';
    end
 else
    begin
     Linha := Linha + '0100';
     Writeln(Arq,Linha);
     Linha := '';
    end;     
{
 if cdsFilho.FieldByName('INCENTIVOICMS').AsInteger = 1 then
    begin
     Linha := Linha + '00';
     Write(Arq,Linha);
     Linha := '02';
     Writeln(Arq,Linha);
     Linha := '';
    end
 else
    begin
     Linha := Linha + '01';
     Write(Arq,Linha);
     Linha := '01';
     Writeln(Arq,Linha);
     Linha := '';
    end;      }

 cds8835.Edit;
 {Totalização dos valores para o registro 88 - 35 - Detalho 11}
 if cdsFilho.FieldByName('INCENTIVOICMS').AsInteger = 1 then
 begin
  if (  NomeTabela = 'EF_NFE' ) and ( cdsPai.FieldByName('SIGLAUFID').AsString = 'EX' ) then
  begin
   cds8835VlrTotalImport.Value := cds8835VlrTotalImport.Value + ConsisteValor(cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency);
   cds8835VlrTotalIcms.Value   := cds8835VlrTotalIcms.Value + ( ConsisteValor(cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency) * 0.17 );
  end
  else if NomeTabela = 'EF_NFS' then
  begin
   if cdsFilho.FieldByName('INCENTIVOICMS').AsInteger = 0 then
      cds8835VlrTotalSaidaN.Value := cds8835VlrTotalSaidaN.Value + ConsisteValor(cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency)
   else if cdsPai.FieldByName('SIGLAUFID').AsString <> 'PE' then
   begin
    cds8835VlrTotalSaidaForaUF.Value := cds8835VlrTotalSaidaForaUF.Value + ConsisteValor(cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency);
    cds8835VlrTotalIcmsSaidaUF.Value := cds8835VlrTotalIcmsSaidaUF.Value + ( ConsisteValor(cdsFilho.FieldByName('VLRPRECOTOTAL').AsCurrency) * 0.17 );
   end;
  end;
 end;
 cds8835.Post;
end;

procedure TfrmIntegracao.BtnGravaDiscoClick(Sender: TObject);
begin
 case ComboUF.ItemIndex of
 0 : begin
      cdsICMS.First;
      while not cdsICMS.eof do
       begin
        GravaDisco( cdsICMS.FieldByName('SIGLAUFID').Value );
        cdsICMS.Next;
       end;
     end;
 else
    GravaDisco( ComboUF.Text );
 end;
 MessageDlg('Disquete gerado com sucesso.', mtInformation,  [mbOk], 0);
end;

procedure TfrmIntegracao.GravaDisco(UF: String);
var F, F_Novo : TextFile;
    Txt : Char;
begin
 try
  ShowMessage( 'Arquivo de ' + UF + '. Coloque o disquete na UNIDADEID A:');

  AssignFile( F, 'EXPORT\INTER' + UF + '.TXT' );
  Reset(F);

  AssignFile( F_Novo, 'A:INTER' + UF + '.TXT' );
  Rewrite(F_Novo);

  while not Eof(F) Do
   begin
    Read( F ,Txt );
    Write( F_Novo, Txt );
   end;

  Flush(F);
  Flush(F_Novo );

  CloseFile(F);
  CloseFile(F_Novo);
 except
  ShowMessage( 'Verifique o drive ou o disquete e tente de novo!');
 end;

end;

procedure TfrmIntegracao.BtnProssDadosClick(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := 'Operações Interestaduais';
 ExportaConvICMS;
end;

procedure TfrmIntegracao.Button1Click(Sender: TObject);
begin
 dmEF.cdsMunicipioIBGE.First;
 while not dmEF.cdsMunicipioIBGE.Eof do
 begin
  dmEF.cdsMunicipioIBGE.Edit;
  dmEF.cdsMunicipioIBGEDESCRICAO2.Value := UpperCase( RemoverAcentos( dmEF.cdsMunicipioIBGEDESCRICAO.Value ) );
  dmEF.cdsMunicipioIBGE.Post;
 end;

end;

procedure TfrmIntegracao.BitBtn6Click(Sender: TObject);
begin
 fcstbarIntegracao.Panels[0].Text := 'Exportação Tit. Receber';
 if ListBox1.Items.Count > 0 then
    ExportaTitReceber
 else MessageDlg('Favor Selecionar uma Nota!',mtWarning,[mbOK],0);
end;

procedure TfrmIntegracao.ExportaTitReceber;
var CNPJ2,CNPJ : String;
    Porcentagem, Frete,Vlr_Export, Dif,VlrParcela : Currency;
    iSQL,Categoria : String;
    cds : TClientDataSet;
    Valor : String;
    i          : Integer;

  procedure CriaDataSetsCds;
  begin
   cdsTitRecAgrupa.Close;
   cdsTitRecAgrupa.Open;
   cdsTitRecAgrupa.IndexFieldNames := 'CONTA_CONTABIL';
   cdsTitRecAgrupa.EmptyDataSet;
   {}
   cdsTitRecAgrupa2.Close;
   cdsTitRecAgrupa2.Open;
   cdsTitRecAgrupa2.IndexFieldNames := 'CONTA_CONTABIL;CENTRO_CUSTO';
   cdsTitRecAgrupa2.EmptyDataSet;
  end;

begin
 if not AtivaEmpresas then
    Exit;

 try
  DirGeracao := ExtractFilePath( Application.ExeName );
  AtivaArquivo('DUPLICATAS.TXT');
  AtivaDisplay;
  ContadorTitRec := 1;
  EmpresaAtiva := IntToStr( EmpresaAtualId );

  {*** Condicao de Pagamento ***}
  cdsAuxCondPagto := nil;
  iSQL := 'SELECT CONDPAGTOID,'+
          '       DESCRICAO,'+
          '       NUMPARCELA'+
          '  FROM EF_CONDPAGTO';

  try
   ExecDynamicProvider( -1,iSQL, cdsAuxCondPagto );
  except on
   E : Exception do
   raise Exception.Create(E.message);
  end;

  {*** Notas Fiscais de Saida ***}
  cdsAuxNfs := nil;
  iSQL := ' SELECT EF_NFS.*, EF_CONDPAGTO.DESCRICAO, EF_CONDPAGTO.NUMPARCELA '+
          '   FROM EF_NFS, ' +
          '   EF_CONDPAGTO ' +
          '  WHERE EMPRESAID = ' + EmpresaAtiva +
          '        AND EF_NFS.CONDPAGTOID = EF_CONDPAGTO.CONDPAGTOID(+) ' +
          '        AND DATAEMISSAOID >= ' + QuotedStr(edTitRecDtIni.Text)  +
          '        AND DATAEMISSAOID <= ' + QuotedStr(edTitRecDtFim.Text) +
          '        AND CANCELADA = 0';
  try
   ExecDynamicProvider( -1,iSQL, cdsAuxNfs );
  except on
   E : Exception do
   raise Exception.Create(E.message);
  end;
  cdsAuxNfs.IndexFieldNames := 'NFSID;DATAEMISSAOID';

  while ListBox1.Items.Count >= ContadorTitRec do
  begin
   {Gerar registro para serviço}
   CriaDataSetsCds;

  if not cdsAuxNfs.FindKey([ StrToInt(ListBox1.Items.Strings[ContadorTitRec-1]),     {No. Nota}
                       StrToDate(ListBox2.Items.Strings[ContadorTitRec-1]) ]) {Dt. Emissão} then
     raise Exception.Create('A Nota ' + ListBox1.Items.Strings[ContadorTitRec-1] + ' está cancelada ' );

   cdsAuxCondPagto.Locate('CONDPAGTOID',cdsAuxNfs.FieldByName('CONDPAGTOID').Value,[]);

   { Atualizando o Campo Exportado da EF_NFS }
   iSQL := 'UPDATE EF_NFS '+
           '   SET EXPORTADO = 1'+
           ' WHERE EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString+
           '       AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString )+
           '       AND NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString;
   ExecDML( iSQL );

   Frete := ConsisteValor(cdsAuxNfs.FieldByName('VLRFRETE').Value);

   { *** Titulos *** }
   cdsAuxNfsItem := nil;
   iSQL := 'SELECT EF_NFSITEM.EMPRESAID,'+
           '       EF_NFSITEM.NFSID,'+
           '       EF_NFSITEM.DATAEMISSAOID,'+
           '       EF_NFSITEM.VLRPRECOTOTAL,'+
           '       EF_NFSITEM.VLRIPI,'+
           '       EF_NFSITEM.PRODUTOID,'+
           '       EF_PRODUTO.CONTACTBRECEITA, ' +
           '       EF_GRUPO.SIGLAGRUPO' +
           '  FROM EF_NFSITEM,'+
           '       EF_PRODUTO,' +
           '       EF_GRUPO'+
           ' WHERE ' +
           '       EF_NFSITEM.EMPRESAID = EF_PRODUTO.EMPRESAID ' +
           '       AND EF_NFSITEM.PRODUTOID = EF_PRODUTO.PRODUTOID ' +
           '       AND EF_NFSITEM.EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString +
           '       AND EF_NFSITEM.DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString )+
           '       AND EF_NFSITEM.NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString +
           '       AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
           '       AND EF_NFSITEM.PRODUTOID IS NOT NULL';
   try
    ExecDynamicProvider( -1,iSQL, cdsAuxNfsItem );
   except on
    E : Exception do
    raise Exception.Create(E.message);
   end;

   cdsAuxNfsItem.First;
   while not cdsAuxNfsItem.Eof Do
   begin
    {Agrupar os produtos por conta contábil}
    if cdsTitRecAgrupa.FindKey( [cdsAuxNfsItem.FieldByName('CONTACTBRECEITA').Value] ) then
      begin
       cdsTitRecAgrupa.Edit;
       cdsTitRecAgrupa.FieldByName('VLR_CONTA_CONTABIL').Value := ConsisteValor(cdsTitRecAgrupa.FieldByName('VLR_CONTA_CONTABIL').Value) + ( ConsisteValor(cdsAuxNfsItem.FieldByName('VLRPRECOTOTAL').Value) + ConsisteValor(cdsAuxNfsItem.FieldByName('VLRIPI').Value) + Frete );
       cdsTitRecAgrupa.Post;
      end
    else
       cdsTitRecAgrupa.InsertRecord( [cdsAuxNfsItem.FieldByName('CONTACTBRECEITA').Value, ( ConsisteValor(cdsAuxNfsItem.FieldByName('VLRPRECOTOTAL').Value) + ConsisteValor(cdsAuxNfsItem.FieldByName('VLRIPI').Value) + Frete ), 'P' ] );

    Frete := 0;
    cdsAuxNfsItem.Next;
   end;

  cdsAuxNfsServico := nil;
  iSQL := 'SELECT '+
          '  EF_NFSSERVICO.EMPRESAID,'+
          '  EF_NFSSERVICO.NFSID,'+
          '  EF_NFSSERVICO.DATAEMISSAOID,'+
          '  EF_NFSSERVICO.VLRSERVICO,'+
          '  EF_RECEITA.CENTROCUSTOID,'+
          '  EF_RECEITA.CONTACONTABILID'+
          '  FROM'+
          '  EF_NFSSERVICO,'+
          '  EF_SERVICO,'+
          '  EF_RECEITA'+
          ' WHERE '+
          '  EF_NFSSERVICO.EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString +
          '  AND EF_NFSSERVICO.NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString +
          '  AND EF_NFSSERVICO.DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString )+
          '  AND EF_NFSSERVICO.VLRSERVICO <> 0'+
          '  AND EF_SERVICO.EMPRESAID = EF_NFSSERVICO.EMPRESAID'+
          '  AND EF_SERVICO.SERVICOID = EF_NFSSERVICO.SERVICOID'+
          '  AND EF_RECEITA.RECEITAID = EF_SERVICO.RECEITAID';
  try
   ExecDynamicProvider(-1,iSQL, cdsAuxNfsServico );
  except on
   E : Exception do
   raise Exception.create(E.message);
  end;

  cdsAuxNfsServico.First;
  while not cdsAuxNfsServico.Eof do
  begin
   {Conta Contabil}
   if cdsTitRecAgrupa.FindKey( [cdsAuxNfsServico.FieldByName('CONTACONTABILID').Value] ) then
     begin
      cdsTitRecAgrupa.Edit;
      cdsTitRecAgrupa.FieldByName('VLR_CONTA_CONTABIL').Value := ConsisteValor(cdsTitRecAgrupa.FieldByName('VLR_CONTA_CONTABIL').Value) + ConsisteValor(cdsAuxNfsServico.FieldByName('VLRSERVICO').Value);
      cdsTitRecAgrupa.Post;
     end
   else
     cdsTitRecAgrupa.InsertRecord( [ConsisteValor(cdsAuxNfsServico.FieldByName('CONTACONTABILID').Value), ConsisteValor(cdsAuxNfsServico.FieldByName('VLRSERVICO').Value), 'S' ] );

   {Centro de Custo}
  if cdsTitRecAgrupa2.FindKey( [cdsAuxNfsServico.FieldByName('CONTACONTABILID').Value, cdsAuxNfsServico.FieldByName('CENTROCUSTOID').Value ] ) then
     begin
      cdsTitRecAgrupa2.Edit;
      cdsTitRecAgrupa2.FieldByName('VLR').Value := ConsisteValor(cdsTitRecAgrupa2.FieldByName('VLR').Value) + ConsisteValor(cdsAuxNfsServico.FieldByName('VLRSERVICO').Value);
      cdsTitRecAgrupa2.Post;
     end
    else
     cdsTitRecAgrupa2.InsertRecord( [cdsAuxNfsServico.FieldByName('CONTACONTABILID').Value, cdsAuxNfsServico.FieldByName('CENTROCUSTOID').Value, ConsisteValor(cdsAuxNfsServico.FieldByName('VLRSERVICO').Value) ] );

    cdsAuxNfsServico.Next;
  end;

   {}
   Linha := InsDelimitador('1');

  {*** Entidade ***}
  cdsAuxEntidade := nil;
  iSQL := 'SELECT '+
           '  * '+
           '  FROM '+
           '  EF_ENTIDADE'+
           ' WHERE '+
           '  ENTIDADEID (+)='+ cdsAuxNfs.FieldByName('ENTIDADEID').AsString;

  try
   ExecDynamicProvider(-1,iSQL, cdsAuxEntidade );
  except on
   E : Exception do
   raise Exception.create(E.message);
  end;

   {}
   {ConsisTe CNPJ}
   if cdsAuxEntidade.FieldByName('CPFCNPJ').AsString <> '' then
      begin
       CNPJ := FormatCNPF_CNPJ_CCM( Trim( cdsAuxEntidade.fieldbyname('CPFCNPJ').value ) );
       if cdsAuxEntidade.FieldByName('FISICAJURIDICA').Value = 'J' then
          CNPJ2 := CGC( cdsAuxEntidade.FieldByName('CPFCNPJ').AsString )
       else
          CNPJ2 := FormatCNPF_CNPJ_CCM( Trim( cdsAuxEntidade.fieldbyname('CPFCNPJ').value ) );
      end;

   {Consiste CGC ou CPF}
   cds := nil;
   iSQL := 'SELECT AGN_ST_CPF,'+
           '       AGN_ST_CGC,'+
           '       AGN_IN_CODIGO'+
           '  FROM MGGLO.GLO_VW_CLIENTE@MEGA_MUNICIPIO ';

   if ( Length( CNPJ ) < 15 ) then
      iSQL  := iSQL + ' WHERE AGN_ST_CPF = ' + QuotedStr( CNPJ )
   else
      iSQL  := iSQL + ' WHERE AGN_ST_CGC = ' + QuotedStr( CNPJ );

   try
    ExecDynamicProvider( -1,iSQL,cds );
   except on
    E : Exception do
    raise Exception.create(E.message);
   end;

   Linha := Linha +
            InsDelimitador( AspasDupla( FormatFloat( Mask_Decimal, cds.FieldByName('AGN_IN_CODIGO').AsInteger)))  +
            InsDelimitador( AspasDupla('NF'+EmpresaAtiva))                                       +
            InsDelimitador( AspasDupla(FormatFloat( Mask_Dolar , cdsAuxNfs.FieldByName('NFSID').Value)))                        +
            InsDelimitador( AspasDupla(FormatDateTime(Mask_DDMMYY, cdsAuxNfs.FieldByName('DATAEMISSAOID').Value)))           +
            InsDelimitador( AspasDupla(NrOnly( FormatCurr('0000000000.00', ConsisteValor(cdsAuxNfs.FieldByName('VLRTOTALNOTA').Value)))));

   Categoria := GetCategoria( cdsAuxNfs.FieldByName('CATEGORIAID').AsInteger );
   if Categoria = '' then
      begin
       ListCriticas.Items.Add('Nota: '+ cdsAuxNfs.FieldByName('NFSID').AsString +
                              ' DataEmissao: '+ cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString+
                              ' Categoria não encontrada! Nota não Exportada');
       inc( ContadorTitRec );
       Continue;
      end;

   Linha := Linha + InsDelimitador( AspasDupla( Categoria ) )+
                    InsDelimitador( AspasDupla('1')) +
                    FormatFloat('00', cdsAuxCondPagto.FieldByName('NUMPARCELA').value);

   WriteLn( Arq,  Linha );
   AtualizaDisplay('G', TotDisplay2);
   {}

  cdsAuxNfsParcela := nil;
  iSQL := 'SELECT EF_NFSPARCELA.EMPRESAID,'+
          '       EF_NFSPARCELA.NFSID,'+
          '       EF_NFSPARCELA.DATAEMISSAOID,'+
          '       EF_NFSPARCELA.PARCELAID,'+
          '       EF_NFSPARCELA.DATAPAGTO,'+
          '       EF_NFSPARCELA.DATAVENCIMENTO,'+
          '       EF_NFSPARCELA.VLRPARCELA,'+
          '       EF_NFSPARCELA.EXPORTADO'+
          '  FROM EF_NFSPARCELA'+
          ' WHERE EF_NFSPARCELA.EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString+
          '       AND EF_NFSPARCELA.DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString )+
          '       AND EF_NFSPARCELA.NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString;

  try
   ExecDynamicProvider( -1, iSQL, cdsAuxNfsParcela );
  except on
   E : Exception do
   raise Exception.create(E.message);
  end;

  cdsAuxNfsParcela.First;
  while not cdsAuxNfsParcela.Eof do
  begin
    {Registro 2}
    Linha := InsDelimitador('2')+
             InsDelimitador( AspasDupla( FormatCurr('000000',cdsAuxNfs.FieldByName('ENTIDADEID').AsInteger )));
             Linha := Linha + InsDelimitador( AspasDupla( GetCategoria( cdsAuxNfs.FieldByName('CATEGORIAID').AsInteger )));
             Linha := Linha + InsDelimitador(AspasDupla('NF'+ EmpresaAtiva ))+
                      InsDelimitador(AspasDupla(FormatFloat( '######', cdsAuxNfs.FieldByName('NFSID').Value )))+
                      InsDelimitador(AspasDupla(FormatFloat('00', cdsAuxNfsParcela.FieldByName('PARCELAID').Value )))+
                      InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYY, StrToDate( cdsAuxNfs.FieldByName('DATAEMISSAOID').Value ))))+
                      InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYY, ConsisteValor( cdsAuxNfsParcela.FieldByName('DATAPAGTO').Value ))))+
                      InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYY, cdsAuxNfsParcela.FieldByName('DATAVENCIMENTO').Value)))+
                      InsDelimitador(AspasDupla(FormatDateTime(Mask_DDMMYY, cdsAuxNfsParcela.FieldByName('DATAVENCIMENTO').Value)));

    Valor := FormatCurr( '0000000000.00', ConsisteValor(cdsAuxNfsParcela.FieldByName('VLRPARCELA').Value) );
    Linha := Linha + InsDelimitador( AspasDupla( NrOnly( Valor ) ));
    Linha := Linha + AspasDupla('C');

    VlrParcela  := 0;
    Porcentagem := 0;

//    if cdsAuxNfsItem.RecordCount > 0 then
       WriteLn(Arq , Linha);

    cdsTitRecAgrupa.First;
    for i := 1 to cdsTitRecAgrupa.RecordCount do
     begin
      {Registro 3}
      Vlr_Export := ( cdsTitRecAgrupa.FieldByName('VLR_CONTA_CONTABIL').Value ) / cdsAuxNfs.FieldByName('VLRTOTALNOTA').Value * cdsAuxNfsParcela.FieldByName('VLRPARCELA').Value ;
      VlrParcela := VlrParcela + StrToCurr( FormatCurr('0000000000.00',Vlr_Export) ) ;

      {*** Atingindo Meta ***}
      Dif := ( VlrParcela -  StrToFloat( Valor ) );
      if ( i = cdsTitRecAgrupa.RecordCount ) then
         begin
          if ( Dif <> 0 ) then
             Vlr_Export := Vlr_Export - Dif;
          Export_Serv( '3', Vlr_Export,Porcentagem,True );
         end
      else
         Export_Serv( '3', Vlr_Export,Porcentagem );

      {Gerar registro do tipo 4 para os casos onde não houver serviço }
      Export_Serv( '4', Vlr_Export,Porcentagem );

      {Registro}
      Export_Serv( '5', Vlr_Export,Porcentagem );

      cdsTitRecAgrupa.Next;
     end;


     { Atualizando o Campo Exportado da EF_NFS }
      iSQL := 'UPDATE EF_NFSPARCELA '+
              '   SET EXPORTADO = 1'+
              ' WHERE EMPRESAID = '+ cdsAuxNfs.FieldByName('EMPRESAID').AsString +
              '       AND DATAEMISSAOID = '+ QuotedStr( cdsAuxNfs.FieldByName('DATAEMISSAOID').AsString ) +
              '       AND NFSID = '+ cdsAuxNfs.FieldByName('NFSID').AsString+
              '       AND PARCELAID = '+ cdsAuxNfsParcela.FieldByName('PARCELAID').AsString;
      try
       ExecDML( iSQL );
      except on
       E : Exception do
       raise Exception.create(E.Message);
      end;

    cdsAuxNfsParcela.Next;
   end;

   Inc( ContadorTitRec );
  end;
  ListBox1.Clear;
  ListBox2.Clear;
  Messagedlg('Exportação Realizada com Sucesso!',mtConfirmation,[mbOK],0);
 finally
  FinalizaArquivo;
 end;
end;


procedure TfrmIntegracao.Export_Serv(Registro: String; Vlr: Currency; var Porcentagem : Currency; CalcularDiferenca : Boolean = False );
var sCentroCusto, CtaCtb : String;
    Porc,Dif   : Currency;
begin
  {Registro 3 ao 5}
  Linha := InsDelimitador(Registro);

  // Comercial
  if cdsAuxNfs.FieldByName('OSID').IsNull then
     begin
      sCentroCusto := '140301';
      if cdsAuxNfs.FieldByName('EMPRESAID').AsInteger = 2 then
         sCentroCusto := '120101';
     end
  else  // Técnica
     begin
      if      cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'UL' then
              sCentroCusto := '150102'
      else if ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'CT' ) or
              ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'MR' ) or
              ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'NM' ) or
              ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'DIV' ) or
              ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'OUT' )then
              sCentroCusto := '150103'
      else if ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'XR' ) or
              ( cdsAuxNfsItem.FieldByName('SIGLAGRUPO').AsString = 'ANG' ) then
              sCentroCusto := '150104'
      else
              sCentroCusto := 'INVALIDO'
     end;

  if      ( Registro = '5') then
          Linha := Linha + InsDelimitador(AspasDupla( '901' ))
  else if ( Registro = '4' ) and ( cdsTitRecAgrupa2.IsEmpty ) then
          Linha := Linha + InsDelimitador(AspasDupla( sCentroCusto ) )
  else if ( Registro = '4') and ( not cdsTitRecAgrupa2.IsEmpty) then
          begin
           cdsTitRecAgrupa2.FindKey( [ cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value] );
           Linha := Linha + InsDelimitador( AspasDupla( NrOnly( cdsTitRecAgrupa2.FieldByName('CENTRO_CUSTO').Value ) ) );
          end
  else
   begin

   // dmEf.cdsEmpresa.FieldByName('EMPRESAID').Value
    Case StrToInt( EmpresaAtiva ) of
         1..11 : if       cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value = '31102001' then
                          CtaCtb := '1110101001'
                 else if  cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value = '31102002' then
                          CtaCtb := '1110101002'
                 else     CtaCtb := cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value;
         12..13 : if      cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value = '31102001' then
                          CtaCtb := '1110101003'
                  else if cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value = '31102002' then
                          CtaCtb := '1110101004'
                  else    CtaCtb := cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value;

         15..17 : if      cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value = '31102001' then
                          CtaCtb := '1110101009'
                  else if cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value = '31102002' then
                          CtaCtb := '1110101010'
                  else    CtaCtb := cdsTitRecAgrupa.FieldByName('CONTA_CONTABIL').Value;   


     else  CtaCtb := 'Error';
    end;
    Linha := Linha + InsDelimitador( AspasDupla( CtaCtb ) );
   end;
  {}
  Linha := Linha + AspasDupla( NrOnly( FormatCurr('0000000000.00', Vlr ) ) ) ;
  if Trim(Registro) = '3' then
     begin
      {Porcentagem sobre o valor da parcela}
      Porc := ( Vlr / ConsisteValor( cdsAuxNfsParcela.FieldByName('VLRPARCELA').Value ) * 100 );
      Porcentagem := Porcentagem + StrToFloat( FormatCurr('0000000000.00', Porc) );
      Dif  := 100 - Porcentagem;
      if Dif <> 0 then
         if CalcularDiferenca then
            if Dif < 0 then
               Porc := Porc + Dif
            else
               Porc := Porc + Dif;

       Linha := Linha + ','+ InsDelimitador( AspasDupla('C') ) + AspasDupla(NrOnly((FormatCurr('0000000000.00', Porc))));
     end;
  Writeln( Arq, Linha );
end;

procedure TfrmIntegracao.DBGridTitRecDblClick(Sender: TObject);
var Contador : Integer;
begin
 with dmEF do begin
  if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
     Exit;
  Contador := 1 ;
  while ListBox1.Items.Count >= Contador Do
   begin
    if ListBox1.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
       Exit;
    Contador := Contador + 1;
   end;

  ListBox1.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
  ListBox2.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
 end;
end;

procedure TfrmIntegracao.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 Then
    begin
     SelectNext(Sender as tWinControl, True, True);
     Key := #0;
    end;
end;

procedure TfrmIntegracao.btnPesquisaTitRec5Click(Sender: TObject);
begin
 PesquisaTitRec;
end;

procedure TfrmIntegracao.edTitRecDtIniKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 Then
    begin
     SelectNext(Sender as TWinControl, True, True);
     Key := #0;
    end;
end;

procedure TfrmIntegracao.PesquisaTitRec;
begin
 EmpresaAtiva := IntToStr( EmpresaAtualId );
 AbrePesquisa( EmpresaAtiva,edTitRecDtIni.Text,edTitRecDtFim.Text );
end;

function TfrmIntegracao.FormatCNPF_CNPJ_CCM(Text: String): String;
var CpoFormat, TextCnv : String;
begin
 CpoFormat := '';
 TextCnv   := TransfNum( Text );
 if LengTh( Trim( TextCnv ) ) > 13 then
    CpoFormat := FormatMaskText( Mask_CpoMaior, TextCnv )
 else
    CpoFormat := FormatMaskText( Mask_CpoMenor, TextCnv );

 Result := CpoFormat;
end;

procedure TfrmIntegracao.FinalizaArquivo;
begin
 CloseFile(Arq);
 actSalvar.Enabled := (ListCriticas.Items.Count > 0);
 TotDisplay2  := 0;
 TotDisplay1  := 0;
 {}
 AtualizaDisplay('G', TotDisplay1);
 AtualizaDisplay('G', TotDisplay2);
// Application.MessageBox( PChar('Exportação concluída.'+#13+ 'Arquivo gerado em '+ DirGeracao+PathArq) ,'Mensagem', MB_OK);
end;



procedure TfrmIntegracao.FormShow(Sender: TObject);
var day,Month, year : Word;
   DInicial, DFinal : String;
begin
 ListCriticas.Items.Clear;
 fcstbarIntegracao.Panels[0].Text := ' Exportar Notas';
 CriaDataSets;

 DecodeDate( pCnnMain.AppServer.iServerDate,year,Month,day );
 DInicial := '01/'+ FormatFloat('00',Month ) + '/'+ IntToStr( year );
 DFinal   := FormatDateTime('DD/MM/YYYY', LastDayOfMonth( pCnnMain.AppServer.iServerDate ) );

 edExportNF_DtInicial.Text := DInicial;
 edExportNF_DtFinal.Text   := DFinal;
 edTitRecDtIni.Text        := DInicial;
 edTitRecDtFim.Text        := DFinal;
 MaskEdit2.Text            := DInicial;
 MaskEdit4.Text            := DFinal;
 MaskEdit6.Text            := DInicial;
 MaskEdit7.Text            := DFinal;

 DInicial := '01/'+ FormatFloat('00',Month-1 ) + '/'+ IntToStr( year );
 DFinal   := FormatDateTime('DD/MM/YYYY', LastDayOfMonth( pCnnMain.AppServer.iServerDate - 30 ) );
 MaskDtINIConvIcms.Text    := DInicial;
 MaskDtFIMConvIcms.Text    := DFinal;

 DateTimePicker1.Date := FirstDayOfMonth( pCnnMain.AppServer.iServerDate );
 DateTimePicker2.Date := LastDayOfMonth( pCnnMain.AppServer.iServerDate );

 wwdtpckteISSINI.Date := DateTimePicker1.Date;
 wwdtpckteISSFIM.Date := DateTimePicker2.Date;

 wwdtpcktDtIni.Date   := DateTimePicker1.Date;
 wwdtpcktDtFim.Date   := DateTimePicker2.Date;
end;

function TfrmIntegracao.AtivaEmpresas:boolean;
begin
 if dmEf.cdsEmpresa.Active = false then dmEf.cdsEmpresa.Active := true;
    EmpresaAtiva := IntToStr( EmpresaAtualId );
  Result := not dmEf.cdsEmpresa.IsEmpty;
  if not Result then MostraMsgUsuario('Não há dados a serem gerados.');
end;

procedure TfrmIntegracao.AtivaDisplay;
begin
 TotDisplay2            := 0;
 TotDisplay1            := 0;
 LbContGravados.Caption := '0';
 LbContCrit.Caption     := '0';
end;

procedure TfrmIntegracao.ExecutaSql(exSql: String; var exCds: TClientDataSet; NomeCds: String);
begin
 InstanciaCds(exCds, NomeCds);
 ExecDynamicProvider( -1, exSql, exCds );
end;

function TfrmIntegracao.ConsisteCPFCNPJ(CPFCNPJ: variant; NFID: String): String;
begin
  if (CPFCNPJ = '0') or (CPFCNPJ = null ) then
      MostraMsgUsuario(' Fornecedor com CGC zerado.' + NFID { + #13 + 'Código - ' + CPFCNPJ});
  if CPFCNPJ <> null then
     Result := FormatCNPF_CNPJ_CCM( Trim(CPFCNPJ) )
  else
     Result := '';
end;

function TfrmIntegracao.ConsisteTipoCPF(CPF: String): String;
begin
 if AnsiUpperCase(CPF) = AnsiUpperCase('F') then
    Result := 'CPF'
  else
    Result := 'CGC';
end;

function TfrmIntegracao.ConsisteContrIcms(ContrIcms: variant): String;
begin
 if (ContrIcms <> 0) and (ContrIcms <> null )then
    Result := 'S'
   else
    Result := 'N';
end;

function TfrmIntegracao.AspasDupla(conteudo: String): String;
const Aspas = '"';
begin
 Result := Aspas + conteudo + Aspas;
end;

function TfrmIntegracao.ConsisteCFOP(CFOP: String): String;
begin
 Result := GetCFOPMega( CFOP + '001',CFOP + '01' );
end;

function TfrmIntegracao.InsDelimitador(conteudo: String): String;
const Delimitador = ',';
begin
 Result := conteudo + Delimitador;
end;

procedure TfrmIntegracao.AtualizaDisplay(Proc_Grav: Char; cont: integer);
begin
 {Atualiza Display de Contador na Tela}
 inc(cont);
 Case Proc_Grav of
  'C' : begin {Regs. Criticados}
         LbContCrit.Caption := intToStr(cont);
         LbContCrit.Refresh;
         pnDisplayProcess.Refresh;
        end;
  'G' : begin {Regs. Gravados com sucesso}
         inc(totDisplay1);
         LbContGravados.Caption := intToStr(cont);
         LbContGravados.Refresh;
         pnDisplayGravados.Refresh;
        end;
 end;
end;

procedure TfrmIntegracao.InstanciaCds(var instCds: TClientDataSet; NomeCds : String);
begin
  if instCds = nil then
     instCds := TClientDataSet.Create(self);
     instCds.Name := NomeCds;
end;

function TfrmIntegracao.ConsisteObservacao( cds : TClientDataSet; Campo : String):String;
var rchtxt : TDBRichEdit;
    ds : TDataSource;
    Obs : String;
begin
 ds := TDataSource.Create( Self );
 rchtxt := TDBRichEdit.Create( Self );
 try
  ds.DataSet := cds;

  rchtxt.Parent := Self;
  rchtxt.DataField := Campo;
  rchtxt.DataSource := ds;

  Obs := rchtxt.Text;
  repeat
    if Pos( '"', Obs ) > 0 then
       Delete( Obs, Pos( '"', Obs ), 1 );
    if Pos( #13, Obs ) > 0 then
       Delete( Obs, Pos( #13, Obs ), 1 );
  until ( Pos( '"', Obs ) < 1 ) and ( Pos( #13, Obs ) < 1 );

  Result := Obs;
 finally
  FreeAndNil( rchtxt );
  FreeAndNil( ds );
 end;
end;

procedure TfrmIntegracao.LiberaCds;
begin
 if cdsAuxNfe <> nil then
    FreeAndNil(cdsAuxNfe);

 if cdsAuxNfeitem <> nil then
    FreeAndNil(cdsAuxNfeitem);

 if cdsAuxNaturezaOp <> nil then
    FreeAndNil(cdsAuxNaturezaOp);

 if cdsAuxCFOPMega <> nil then
    FreeAndNil(cdsAuxCFOPMega);

 if cdsAuxNfsServico <> nil then
    FreeAndNil( cdsAuxNfsServico );

 if cdsAuxCondPagto <> nil then
    FreeAndNil( cdsAuxCondPagto );

 if cdsAuxCondPagto <> nil then
    FreeAndNil( cdsAuxEntidade );

 if cdsAuxCondPagto <> nil then
    FreeAndNil( cdsAuxProduto );

 if cdsAuxNfs <> nil then
    FreeAndNil( cdsAuxNfs );

 if cdsAuxNfsItem <> nil then
    FreeAndNil( cdsAuxNfsItem );

 if cdsAuxKardex <> nil then
    FreeAndNil( cdsAuxKardex );

end;



procedure TfrmIntegracao.UpSet(var cdsUpSet: TClientDataSet; valor1,
  valor2: String);
begin
 if cdsUpSet.FindKey([valor1, valor2]) then
    cdsUpSet.Edit
 else
    cdsUpSet.Insert;
end;

procedure TfrmIntegracao.ApagaArquivosTxt(UF: String);
begin
 {Apagar os arquivos para nova geração}
 if FileExists( PathExport  + UF + 'TP50.TXT' ) then
    DeleteFile( PathExport  + UF + 'TP50.TXT' );

 if FileExists( PathExport + UF + 'TP51.TXT' ) then
    DeleteFile( PathExport + UF + 'TP51.TXT' );

 if FileExists( PathExport + UF + 'TP54.TXT' ) then
    DeleteFile( PathExport +UF + 'TP54.TXT' );

 if FileExists( PathExport +UF + 'TP70.TXT' ) then
    DeleteFile( PathExport +UF + 'TP70.TXT' );

 if FileExists( PathExport +UF + 'TP75.TXT' ) then
    DeleteFile( PathExport +UF + 'TP75.TXT' );
end;

procedure TfrmIntegracao.RetornaLocalTmb(Local: Char);
var
 Linha : String;
begin
 Case Local of
  '1': begin
        Linha :=
         '10'                                     +
         '46563938000200'                         +
         '18158002971906'                         +
         PadL(NomeTMB, 35)                        +
         PadL('JABOATAO DOS GUARARAPES', 30 )     +
         'PE'                                     +
         '8132228611'                             +
         FormatDateTime(Mask_YYYYMMDD, StrToDate(MaskDtINIConvIcms.EditText)) +
         FormatDateTime(Mask_YYYYMMDD, StrToDate(MaskDtFIMConvIcms.EditText)) +
         '2'                                      +
         '311';

         Writeln( Arq, Linha );

         Linha := '11'                            +
         'ROD BR 101 SUL                    S/N  SETOR J               PRAZERES       '+
         '54345160'                               +
         PadL( 'LUIZ CARLOS BERNHOEFT JUNIOR', 28 )+
         '008132228611';

         Writeln( Arq, Linha );
       end;
  '2': begin
        Linha :=
         '10'                                     +
         '46563938000110'                         +
         '206235020114  '                         +
         PadL(NomeTMB ,35)                        +
         PadL('BARUERI' , 30 )            +
         'SP'                                     +
         '1141340000'                             +
         FormatDateTime( Mask_YYYYMMDD, StrToDate(MaskDtINIConvIcms.EditText)) +
         FormatDateTime( Mask_YYYYMMDD, StrToDate(MaskDtFIMConvIcms.EditText)) +
         '3'                                      +
         '31';

         WriteLn( Arq,Linha );

         Linha := '11'                            +
//         'R.MARCELO MORAES CORDEIRO         00110                      PQ.IND.OLIVEIRA' +
         'AV. CECI                          00328                      TAMBORE        ' +
         '06460120'                               +
         PadL( 'JOEL APARECIDO BITTENCOURT',28 )  +
         '001141340000';

         Writeln( Arq, Linha );
       end;
 end;
end;

{function TfrmIntegracao.ConsisteSerie: String;
begin
  (*
    if cdsAuxNfe.FieldByName('SERIE').Value <> '' then
       Result :=  RetornaSERIE; InsDelimitador(AspasDupla(cdsAuxNfeItem.FieldByName('SERIE').Value))
    else
       Result := InsDelimitador(AspasDupla('UN'));
    *)
end;}

function TfrmIntegracao.ConsisteCodPadraoTebas( NaturezaOpId : Integer ): String;
begin
 Result := '';
 if cdsAuxNaturezaOp.Locate('NATUREZAOPID',NaturezaOpId,[]) then
    if Copy( cdsAuxNaturezaOp.FieldByName('NUMPADRAO').AsString,1,1 ) <> '' then
       Result := Copy( Trim( cdsAuxNaturezaOp.FieldByName('NUMPADRAO').AsString ), 1, 4 );
end;

procedure TfrmIntegracao.PageIntegracaoChange(Sender: TObject);

 procedure AbreCdsPacelas;
  var Sql : String;
  begin
   Campos := ' * ';
   Sql := ' SELECT ' + CAMPOS + ' FROM EF_NFSPARCELA WHERE '   +
          ' EMPRESAID= '    + EmpresaAtivada                   + ' AND ' +
          ' PARCELAID = 1 '                                    + ' AND ' +
          ' DATAEMISSAOID >= '+ QuotedStr(edTitRecDtIni.Text)  + ' AND ' +
          ' DATAEMISSAOID <= '+ QuotedStr(edTitRecDtFim.Text);

   ExecutaSql(Sql, cdsAuxNfsParcela, 'cdsAuxNfsParcela');
  end;

begin

end;

procedure TfrmIntegracao.CriaDataSets;
begin
  cdsAuxEntidade      := TClientDataSet.Create(self);
  cdsAuxNaturezaOp    := TClientDataSet.Create(self);
  cdsAuxNfe           := TClientDataSet.Create(self);
  cdsAuxNfeItem       := TClientDataSet.Create(self);
  cdsAuxNfs           := TClientDataSet.Create(self);
  cdsAuxNfsServico    := TClientDataSet.Create(self);
  cdsAuxProduto       := TClientDataSet.Create(self);
  cdsAuxKardex        := TClientDataSet.Create(self);
  cdsAuxCondPagto     := TClientDataSet.Create(self);
  cdsAuxNfsItem       := TClientDataSet.Create(self);
  cdsAuxNfsParcela    := TClientDataSet.Create(self);
end;

{procedure TfrmIntegracao.LiberaDataSets;
begin
 FreeAndNil( cdsAuxEntidade   );
 FreeAndNil( cdsAuxNaturezaOp );
 FreeAndNil( cdsAuxNfe        );
 FreeAndNil( cdsAuxNfeItem    );
 FreeAndNil( cdsAuxNfs        );
 FreeAndNil( cdsAuxNfsServico );
 FreeAndNil( cdsAuxProduto    );
 FreeAndNil( cdsAuxKardex     );
 FreeAndNil( cdsAuxCondPagto  );
 FreeAndNil( cdsAuxNfsItem    );
 FreeAndNil( cdsAuxNfsParcela );
end;}

function TfrmIntegracao.ConsisteValor(vlr: variant): real;
begin
 if vlr = null then
    Result := 0
 else
    Result := vlr;
end;

function TfrmIntegracao.ConsisteInteiro(vlr: variant): String;
begin
 if vlr = null then
    Result := '0'
 else
    Result := vlr;
end;

procedure TfrmIntegracao.CriaCdsAux;
begin
 cdsAux.Close;
 cdsAux.CreateDataSet;
 cdsAux.IndexFieldNames := 'CONTA;CENTRO_CUSTO';
 cdsAux.Active := true;
 cdsAux.EmptyDataSet;
end;

function TfrmIntegracao.ConsisteBool(vlr: variant): boolean;
begin
 Result := (vlr = 1);
end;

procedure TfrmIntegracao.sbImpJapaoArqClick(Sender: TObject);
var Linha, iSQL, PartN : String;
    x : Integer;
    NomeArq : TextFile;
    cdsPreco : TClientDataSet;
    VlrFob, VlrRepair : Currency;

 procedure AtualPrecoJapao;
 begin
  if dmIT.cdsListaPreco.ChangeCount > 0 then
     dmIT.cdsListaPreco.ApplyUpdates(-1);
 end;

begin
 Screen.Cursor := crHourGlass;
 x := 0;
 AssignFile( NomeArq , mktJapaoArq.Text );
 Reset( NomeArq );

 dmIT.cdsListaPreco.Open;

 try
  if Length( mktJapaoArq.Text ) = 0 then
     raise Exception.Create('Arquivo não selecionado !');

  ReadLn( NomeArq , Linha );
  while not Eof( NomeArq ) do
  begin
   Inc( x );
   ReadLn( NomeArq , Linha ) ;

   PartN     := Trim( Copy( Linha, 14, 16) );
   VlrFob    := StrToFloat( ReplaceStr(  ReplaceStr( ( Copy( Linha, 48, 13 ) ),',','' ),'.',',' ) );
   VlrRepair := StrToFloat( ReplaceStr(  ReplaceStr( ( Copy( Linha, 62, 13 ) ),',','' ),'.',',' ) );

   cdsPreco  := Nil;

   iSQL      := 'SELECT PARTNUMBERID FROM IT_LISTAPRECO ' +
                ' WHERE IT_LISTAPRECO.PARTNUMBERID = ' + QuotedStr( PartN );

   ExecDynamicProvider( -1, iSQL, cdsPreco );


   if cdsPreco.RecordCount = 0 then
      begin
       dmIT.cdsListaPreco.Insert;
       dmIT.cdsListaPrecoPARTNUMBERID.Value    := PartN;
       dmIT.cdsListaPrecoDESCRICAOINGLES.Value := Copy( Linha, 31, 16);
       dmIT.cdsListaPrecoMODELOID.Value        := Copy( Linha, 76, 16);
       dmIT.cdsListaPrecoVLRFOB.Value          := VlrFob;
       dmIT.cdsListaPrecoVLRTROCA.Value        := VlrRepair;
       dmIT.cdsListaPreco.Post;
      end
   else
      begin
       iSQL := ' UPDATE IT_LISTAPRECO ' +
               '  SET VLRFOB   = ' + SubstituiString( FloatToStr( VlrFob ), ',', '.' ) + ','  +
               '      VLRTROCA = ' + SubstituiString( FloatToStr( VlrRepair ), ',', '.' )  +
               '  WHERE PARTNUMBERID = ' + QuotedStr( PartN );
       ExecDML( iSQL );
      end;

   if x > 400 then
      begin
       AtualPrecoJapao;
       x := 0;
      end;
  end;

  MessageDlg('Importação concluida com sucesso!', mtInformation, [mbOk], 0);

 finally
  dmIT.cdsListaPreco.Close;
  Screen.Cursor :=  crDefault;
  CloseFile( NomeArq );
 end;
end;

procedure TfrmIntegracao.SpeedButton1Click(Sender: TObject);
var NomeArqUso : String;
begin
  if PageIntegracao.TabIndex = 1 then
  begin
    if spEntradas.Down then
       NomeArqUso  := 'NFEntradas.txt'
    else
    if spSaidas.Down  then
       NomeArqUso  := 'NFSaida.txt'
    else
    if spServicos.Down  then
       NomeArqUso  := 'NFServicos.txt'
    else
    if spPis_Cofins_Iss.Down  then
       NomeArqUso  := 'NFPis_Cofins_Iss.txt'
    else
    if spCustosProd.Down  then
       NomeArqUso  := 'NFCustosProd.txt'
    else
    if spCustosDevolucao.Down  then
       NomeArqUso  := 'NFCustosDevolucao.txt'
  end
   else
    if PageIntegracao.TabIndex = 2 then
       NomeArqUso  := 'OperaçõesInterestaduais.txt'
    else
     if PageIntegracao.TabIndex = 3 then
        NomeArqUso  := 'ExportaçãoTitReceber.txt';

  ListCriticas.items.SaveToFile( DirGeracao + 'Criticados' + NomeArqUso );
  ListGravados.items.SaveToFile( DirGeracao + 'Gravados'   + NomeArqUso );
end;




function TfrmIntegracao.GetAliquota( EmpresaAtiva : Integer ) : Real;
begin
 Result := 0;
 if cdsAuxNfeItem.Locate('EMPRESAID;NFEID;DATAEMISSAOID;ENTIDADEID',
                                VarArrayOf([ EmpresaAtiva,
                                             cdsAuxNfe.FieldByName('NFEID').Value,
                                             cdsAuxNfe.FieldByName('DATAEMISSAOID').Value,
                                             cdsAuxNfe.FieldByName('ENTIDADEID').Value ]),[]) then
    Result := cdsAuxNfeItem.FieldByName('ALIQUOTAICMS').AsFloat;
end;



function TfrmIntegracao.GetCondPagto(CondPagtoId: Integer): String;
begin
 Result := 'ND';
 if cdsAuxCondPagto.Locate( 'CONDPAGTOID',CondPagtoId,[] ) then
    Result := cdsAuxCondPagto.FieldByName('DESCRICAO').AsString;
end;

function TfrmIntegracao.GetAliquotaNfs : Real;
begin
 Result := 0;
 if cdsAuxNfs.FieldByName('VLRTOTALBASEICMS').Value <> 0 then
    Result := cdsAuxNfSItem.FieldByName('ALIQUOTAICMS').AsFloat;
end;

function TfrmIntegracao.GetCentroCusto(Empresa,OSId : String;
  ProdutoId: Integer; TipoNota : String = 'PRODUTO' ): String;
var iSQL : String;
    cds  : TClientDataSet;
begin
 Result := '901';
 cds := nil;

 if UpperCase( TipoNota ) = 'PRODUTO' then
    iSQL := 'SELECT EF_GRUPO.SIGLAGRUPO'+
             '  FROM EF_PRODUTO,'+
             '       EF_GRUPO'+
             ' WHERE EF_PRODUTO.EMPRESAID = '+ Empresa +
             '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
             '       AND PRODUTOID = '+ IntToStr( ProdutoId )
 else
   iSQL :=   'SELECT EF_GRUPO.SIGLAGRUPO'+
             '  FROM EF_SERVICO,'+
             '       EF_GRUPO'+
             ' WHERE EF_SERVICO.EMPRESAID = '+ Empresa +
             '   AND EF_SERVICO.GRUPOID = EF_GRUPO.GRUPOID(+)'+
             '       AND EF_SERVICO.SERVICOID = '+ IntToStr( ProdutoId );

 try
  ExecDynamicProvider( -1,iSQL,cds );

  if OSId <> '' then
     begin
      if not cds.FieldByName('SIGLAGRUPO').IsNull then
         Result := GetCCusto( UpperCase( cds.FieldByName('SIGLAGRUPO').AsString ) );
     end
  else Result := '140301';

  if Result = '' then
     Result := '150103';

 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmIntegracao.PreencheCCusto;
begin
 CCusto[1,1] := 'XR';
 CCusto[1,2] := '150104';
 CCusto[2,1] := 'UL';
 CCusto[2,2] := '150102';
 CCusto[3,1] := 'CT';
 CCusto[3,2] := '150103';
 CCusto[4,1] := 'MR';
 CCusto[4,2] := '150103';
 CCusto[5,1] := 'NM';
 CCusto[5,2] := '150103';
 CCusto[6,1] := 'OUT';
 CCusto[6,2] := '150103';
 CCusto[7,1] := 'DIV';
 CCusto[7,2] := '150103';
end;

function TfrmIntegracao.GetCCusto( SIGLAGRUPO : String): String;
var i : Integer;
begin
 Result :='';
 for i := 1 to 7 do
   if SIGLAGRUPO = CCusto[i,1] then
      Result := CCusto[i,2];
end;

{procedure TfrmIntegracao.AtivaArquivo2(NomeArq: String; LeGrava: Char);
begin
 PathArq := NomeArq;
 AssignFile( Arq2, DirGeracao + NomeArq );
 Case LeGrava of
  'R': Rewrite( Arq2);
  'A': Append( Arq2);
 end;
end;}

function TfrmIntegracao.GetMunicipio(UFID, NomeCidade: String): String;
var cds  : TClientDataSet;
    iSQL : String;
begin
 Result := '0';
 cds  := nil;
 iSQL := 'SELECT MUN_IN_CODIGO'+
         '  FROM MGGLO.GLO_MUNICIPIO@MEGA_MUNICIPIO'+
         ' WHERE UF_ST_SIGLA = '+ QuotedStr( UpperCase( UFID ) )+
         '       AND MUN_ST_NOME = '+ QuotedStr( UpperCase( NomeCidade ) );

 try
  ExecDynamicProvider( -1, iSQL, cds );

  if Not cds.IsEmpty then
     Result := cds.Fieldbyname('MUN_IN_CODIGO').AsString;;
 finally
  FreeAndNil( cds );
 end;
end;


function TfrmIntegracao.GetCFOPMega(CFOP1, CFOP2: String): String;
var iSQL : String;
    cds  : TClientDataSet;
begin
 Result := '';
 cds    := nil;
 iSQL   := 'SELECT CFOP_ST_EXTENSO '+
           '  FROM MGTRF.TRF_CFOP@MEGA_CFOP '+
           ' WHERE CFOP_ST_EXTENSO = '+ CFOP1; 

 if CFOP2 <> '' then
    iSQL := iSQL + ' OR CFOP_ST_EXTENSO = '+ CFOP2;

 try
  ExecDynamicProvider(-1,iSQL, cds );

  if not cds.IsEmpty then
     Result := cds.FieldByName('CFOP_ST_EXTENSO').AsString;
 finally
  FreeAndNil( cds );
 end;
end;


function TfrmIntegracao.GetDescResumida( NaturezaOpId: String): String;
var iSQL : String;
    cds  : TClientDataSet;
begin
 Result := '';
 try
  cds  := nil;
  iSQL := 'SELECT EF_SIGLANATUREZA.DESCRICAORESUMIDA'+
          '  FROM EF_SIGLANATUREZA,'+
          '       EF_NATUREZAOP'+
          ' WHERE EF_NATUREZAOP.SIGLANATUREZAID = EF_SIGLANATUREZA.SIGLANATUREZAID'+
          '       AND EF_NATUREZAOP.NATUREZAOPID = '+ NaturezaOpId;

  ExecDynamicProvider(-1, iSQL, cds );
  if not cds.IsEmpty then
     Result := cds.FieldByName('DESCRICAORESUMIDA').AsString;
     
 finally
  FreeAndNil( cds );
 end;
end;

function TfrmIntegracao.ConsisteNull(vlr: variant): String;
begin
 if vlr = null then
    Result := ''
 else
    Result := vlr;
end;

procedure TfrmIntegracao.LoadcdsIcms;
var iSQL : String;
    cds  : TClientDataSet;
begin
 cds := nil;
 iSQL := 'SELECT EF_UF.SIGLAUFID'+
         '  FROM EF_UF'+
         ' WHERE INTERNACIONAL = 0'+
         ' ORDER BY EF_UF.SIGLAUFID';
  try
  ExecDynamicProvider(-1,iSQL,cds);
  cds.First;
  while not cds.Eof do
  begin
   cdsICMS.Insert;
   cdsICMSESTADO.AsString := cds.FieldByName('SIGLAUFID').AsString;
   cdsICMSTIPO_10.Value   := 0;
   cdsICMSTIPO_11.Value   := 0;
   cdsICMSTIPO_50.Value   := 0;
   cdsICMSTIPO_51.Value   := 0;
   cdsICMSTIPO_53.Value   := 0;
   cdsICMSTIPO_54.Value   := 0;
   cdsICMSTIPO_60.Value   := 0;
   cdsICMSTIPO_61.Value   := 0;
   cdsICMSTIPO_70.Value   := 0;
   cdsICMSTIPO_71.Value   := 0;
   cdsICMSTIPO_75.Value   := 0;
   cdsICMSTIPO_90.Value   := 0;
   cdsICMSTIPO_TOTAL.Value:= 0;
   cdsICMS.Post;
   cds.next;
  end;
 cdsICMS.IndexFieldNames := 'ESTADO';
 finally
  FreeAndNil( cds );
 end;
end;

procedure TfrmIntegracao.AtivaArquivo2(NomeArq: String; LeGrava: Char);
begin
 PathArq := NomeArq;
 AssignFile( Arq, NomeArq );
 Case LeGrava of
  'R': Rewrite( Arq );
  'A': Append( Arq );
 end;
end;


procedure TfrmIntegracao.AbrePesquisa(Empresa: String;DataInicio, DataFim : String);
var iSQL : String;
begin
 Listbox1.clear;
 Listbox2.clear;
 cdsAuxNfsPesquisa.Close;
 iSQL := 'SELECT EF_NFSPARCELA.EMPRESAID,'+
         '       EF_NFSPARCELA.NFSID,'+
         '       EF_NFSPARCELA.DATAEMISSAOID,'+
         '       EF_NFSPARCELA.DUPLICATAID,'+
         '       EF_NFSPARCELA.VLRPARCELA,'+
         '       EF_NFSPARCELA.EXPORTADO'+
         '  FROM EF_NFSPARCELA'+
         ' WHERE EF_NFSPARCELA.PARCELAID = 1'+
         '       AND EF_NFSPARCELA.EMPRESAID = '+ Empresa +
         '       AND EF_NFSPARCELA.DATAEMISSAOID >= '+ QuotedStr( DataInicio )+
         '       AND EF_NFSPARCELA.DATAEMISSAOID <= '+ QuotedStr( DataFim );

 ExecDynamicProvider( -1, iSQL, cdsAuxNfsPesquisa );
 cdsAuxNfsPesquisa.Active := True;
end;

function TfrmIntegracao.GetCategoria(CategoriaId : Integer ):String;
begin
 Result := '';
 if      CategoriaId = 1 then
         Result := 'C'
 else if CategoriaId = 2 then
         Result := 'F'
 else if CategoriaId = 5 then
         Result := 'U'
 else Result := 'C';
end;


procedure TfrmIntegracao.AbreNFeItemConvenio( var cds : TClientDataSet);
var iSQL : String;
begin
 cds := nil;
 iSQL := ' SELECT '+
         '  EF_NFEITEM.*, '+
         '  EF_PRODUTO.NCMID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_PRODUTO.UNIDADEID,'+
         '  EF_PRODUTO.INCENTIVOICMS'+
         '  FROM '+
         '  EF_NFE,'+
         '  EF_NFEITEM,'+
         '  EF_PRODUTO ' +
         ' WHERE'+
         '  EF_NFEITEM.EMPRESAID = EF_NFE.EMPRESAID'+
         '  AND EF_NFEITEM.NFEID = EF_NFE.NFEID'+
         '  AND EF_NFEITEM.DATAEMISSAOID = EF_NFE.DATAEMISSAOID'+
         '  AND EF_PRODUTO.PRODUTOID(+) = EF_NFEITEM.PRODUTOID'+
         '  AND EF_PRODUTO.EMPRESAID    = EF_NFEITEM.EMPRESAID'+
         '  AND EF_NFE.DATAENTRADA >= '+QuotedStr( MaskDtINIConvIcms.Text )+
         '  AND EF_NFE.DATAENTRADA <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
         '  AND EF_NFEITEM.PRODUTOID >= 1';

  if ( CheckEmp12e13.Checked = False ) then
      iSQL := iSQL + '  AND ( EF_NFE.EMPRESAID = 1 ' +
                     '        OR EF_NFE.EMPRESAID = 2 '+
                     '        OR EF_NFE.EMPRESAID = 3 '+
                     '        OR EF_NFE.EMPRESAID = 4 '+
                     '        OR EF_NFE.EMPRESAID = 5 '+
                     '       )';

  if ( CheckEmp12e13.Checked ) then
     iSQL := iSQL + ' AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) )';

 ExecDynamicProvider(-1, iSQL, cds );

 cds.AddIndex('idx1','EMPRESAID;NFEID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

procedure TfrmIntegracao.AbreNFsItemConvenio( var cds : TClientDataSet);
var iSQL : String;
begin
 cds := nil;
 iSQL := ' SELECT '+
         '  EF_NFSITEM.*, '+
         '  EF_PRODUTO.NCMID,'+
         '  EF_PRODUTO.DESCRICAOPORTUGUES,'+
         '  EF_PRODUTO.UNIDADEID,'+
         '  EF_PRODUTO.INCENTIVOICMS'+
         '  FROM '+
         '  EF_NFS,'+
         '  EF_NFSITEM,'+
         '  EF_NATUREZAOP,'+
         '  EF_PRODUTO '+
         ' WHERE'+
         '  EF_NFSITEM.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_NFSITEM.NFSID = EF_NFS.NFSID '+
         '  AND EF_NFSITEM.DATAEMISSAOID = EF_NFS.DATAEMISSAOID'+
         '  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID'+
         '  AND EF_PRODUTO.PRODUTOID(+) = EF_NFSITEM.PRODUTOID'+
         '  AND EF_PRODUTO.EMPRESAID    = EF_NFSITEM.EMPRESAID'+
         '  AND EF_NFSITEM.DATAEMISSAOID >= '+ QuotedStr( MaskDtINIConvIcms.Text )+
         '  AND EF_NFSITEM.DATAEMISSAOID <= '+ QuotedStr( MaskDtFIMConvIcms.Text )+
         '  AND EF_NATUREZAOP.DOCINTERNO = 0';


 if ( CheckEmp12e13.Checked = False ) then
      iSQL := iSQL + '  AND ( EF_NFSITEM.EMPRESAID = 1 ' +
                     '        OR EF_NFSITEM.EMPRESAID = 2 '+
                     '        OR EF_NFSITEM.EMPRESAID = 3 '+
                     '        OR EF_NFSITEM.EMPRESAID = 4 '+
                     '        OR EF_NFSITEM.EMPRESAID = 5 '+
                     '       )';

 if ( CheckEmp12e13.Checked ) then
          iSQL := iSQL + ' AND ( ( EF_NFSITEM.EMPRESAID = 12 ) OR ( EF_NFSITEM.EMPRESAID = 13 ) )';


 ExecDynamicProvider(-1, iSQL, cds );

 cds.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary],'','',0 );
 cds.IndexName := 'idx1';
end;

function TfrmIntegracao.AdicCaracter(Str: String; Caracter: Char;
  Tamanho: Integer;Lado : String = 'D'): String;
var Str2     : String;
    i,resto : Integer;
begin
 {*** Lado = E (Esquerda) ou D (Direita) ***}
 Str := Trim( Str );
 Result := Str;
 Str2 := Caracter;
 Resto := Tamanho - Length( Str );
 if resto <> 0 then
    begin
     for i := 1 to resto-1 do
        Str2 := Str2 + Caracter;
     Result := Str + Str2;
     if Lado = 'E' then
        Result := Str2 + Str;
    end;
end;

procedure TfrmIntegracao.actFecharExecute(Sender: TObject);
begin
 Close;
end;

procedure TfrmIntegracao.ExportarEntidade;
var ContrIcms , iSQL : String;
    F          : TextFile;
    cds : TClientDataSet;
    Categ : Integer;

 function LimparString( Value : String ) : String;
 begin
  Value := SubstituiString( Value,',','.');
  Value := SubstituiString( Value,'"',' ');

  Result := Value;
 end;

begin
 PathExport := ExtractFilePath( Application.ExeName )+ 'EXPORT\CLIENTES.TXT';
 AssignFile( F, PathExport );
 Rewrite(F);
 cds := nil;
 iSQL := 'SELECT EF_ENTIDADE.ENTIDADEID,' +
         '      EF_ENTIDADE.CPFCNPJ,' +
         '      EF_ENTIDADE.FISICAJURIDICA,' +
         '      EF_ENTIDADE.INSCRESTADUAL,' +
         '      EF_CATEGJURIDICA.CATEGJURIDICAID, ' +
         '      EF_ENTIDADE.NOME,' +
         '      EF_ENTIDADE.NUMERO,' +
         '      EF_ENTIDADE.ENDERECO,' +
         '      EF_ENTIDADE.NUMERO,' +
         '      EF_ENTIDADE.COMPLEMENTO,' +
         '      EF_ENTIDADE.BAIRRO,' +
         '      EF_ENTIDADE.CIDADE,' +
         '      EF_ENTIDADE.CEPID,' +
         '      EF_ENTIDADE.SIGLAUFID,' +
         '      EF_ENTIDADE.NUMEROCOB,' +
         '      EF_ENTIDADE.ENDERECOCOB,' +
         '      EF_ENTIDADE.NUMEROCOB,' +
         '      EF_ENTIDADE.COMPLEMENTOCOB,' +
         '      EF_ENTIDADE.BAIRROCOB,' +
         '      EF_ENTIDADE.CIDADECOB,' +
         '      EF_ENTIDADE.CEPCOBID,' +
         '      EF_ENTIDADE.SIGLAUFCOBID,' +
         '      EF_ENTIDADE.PAIS,' +
         '      EF_ENTIDADE.CONTRIBUINTEICMS,' +
         '      MEGA.MUN_IN_CODIGO,' +
         '      MEGA.UF_ST_SIGLA,' +
         '      MEGA.MUN_ST_NOME' +
         ' FROM EF_ENTIDADE, MGGLO.GLO_MUNICIPIO@MEGA_MUNICIPIO MEGA ,' +
         '  EF_NATUREZAJURIDICA EF_NATUREZAJURIDICA, ' +
         ' EF_CATEGJURIDICA EF_CATEGJURIDICA ' +
         'WHERE MEGA.UF_ST_SIGLA = EF_ENTIDADE.SIGLAUFID' +
         '  AND MEGA.MUN_ST_NOME = EF_ENTIDADE.CIDADE ' +
         '  AND EF_NATUREZAJURIDICA.NATUREZAJURIDICAID(+) = EF_ENTIDADE.NATUREZAJURIDICAID ' +
         ' AND EF_CATEGJURIDICA.CATEGJURIDICAID(+) = EF_NATUREZAJURIDICA.CATEGJURIDICAID ' +
         '  AND EF_ENTIDADE.ENTIDADEID BETWEEN  ' + mktExpEntIni.Text + ' AND ' +
         mktExpEntFim.Text;

 try
  ExecDynamicProvider( -1,iSQL,cds );

  cds.First;
  while not cds.Eof do
  begin
   Write( F , '"');
   Write( F, FormatFloat( '00000000', cds.FieldByName('ENTIDADEID').Value ) );
   Write( F , '","' + LimparString( cds.FieldByName('NOME').AsString ) + '",');
   Write( F , '"' + LimparString( cds.FieldByName('ENDERECO').AsString ) + '","');
   Write( F, cds.FieldByName('NUMERO').AsString + '","');
   Write( F, cds.FieldByName('COMPLEMENTO').AsString + '","');
   Write( F, cds.FieldByName('CIDADE').AsString + '","');
   Write( F, cds.FieldByName('SIGLAUFID').AsString + '","');
   Write( F, TransfNum( cds.FieldByName('CEPID').AsString ) + '","');

   if cds.FieldByName('FISICAJURIDICA').AsString = 'F' then
      Write( F, '","')
   else
      Write( F, FormatCNPF_CNPJ_CCM( cds.FieldByName('CPFCNPJ').AsString ) );

   if cds.FieldByName('FISICAJURIDICA').AsString = 'J' then
      Write( F, '","')
   else
      Write( F, FormatCNPF_CNPJ_CCM( cds.FieldByName('CPFCNPJ').AsString ) );

   Write( F , '","' + LimparString( cds.FieldByName('ENDERECOCOB').AsString ) + '","' );
   Write( F, cds.FieldByName('NUMEROCOB').AsString + '","');
   Write( F, cds.FieldByName('COMPLEMENTOCOB').AsString + '","');
   Write( F, cds.FieldByName('CIDADECOB').AsString + '","');
   Write( F, cds.FieldByName('SIGLAUFCOBID').AsString + '","');
   Write( F ,TransfNum( cds.FieldByName('CEPCOBID').AsString ) + '","');
   Write( F, 'RUA' );
   Write( F, '","');
   Write( F, Copy( cds.FieldByName('PAIS').AsString, 0, 3 ) );
   Write( F, '","');
   Write( F, cds.FieldByName('NOME').AsString + ' ' +
             Copy( cds.FieldByName('CPFCNPJ').AsString,
             Length( cds.FieldByName('CPFCNPJ').AsString ) - 4 , 5 ) );
   Write( F, '","');
   Write( F, '99-00-7');
   Write( F, '","');
   Write( F, cds.FieldByName('FISICAJURIDICA').AsString );
   Write( F, '","2992","');
   Write( F, cds.FieldByName('INSCRESTADUAL').AsString + '","');

   if cds.FieldByName('CONTRIBUINTEICMS').AsInteger = 1 then
      ContrIcms := 'S'
   else
      ContrIcms := 'N';

   Write( F, ContrIcms + '",' );
   Write( F, '"' + cds.FieldByName('MUN_IN_CODIGO').AsString + '",' );

   Categ := 0;

   case cds.FieldByName('CATEGJURIDICAID').AsInteger of
   1      : Categ := 2001; // Governo
   2,4, 5 : Categ := 2005; // Privado
   3      : Categ := 2010; // Misto
   end;

   WriteLn( F, '"' +  IntToStr( Categ ) + '"' );

   cds.Next;
   AtualizaDisplay('G', TotDisplay2);
  end;

  cds.Close;
  MessageDlg( 'Exportação Realizada!', mtInformation, [mbOK], 0 );
 finally
  CloseFile(F);
  FreeAndNil( cds );
 end;
end;


procedure TfrmIntegracao.btnProcessarREDFSPClick(Sender: TObject);
begin
 { Dados para validação no site:
   Usuário = TOSHIBAMEDICAL
   Senha   = TOSHI1974 }
 if chkbxNFS.Checked then
    begin
     GerarPesqREDF_NFS;
     ProcessarNotaREDF( 1 );
     cdsNF.EmptyDataSet;
     cdsNFItem.EmptyDataSet;
     cdsNFServ.EmptyDataSet;
    end;

 if chkbxNFE.Checked then
    begin
     GerarPesqREDF_NFE;
     ProcessarNotaREDF( 0 );
     cdsNF.EmptyDataSet;
     cdsNFItem.EmptyDataSet;
    end;
end;

procedure TfrmIntegracao.btnProcExportEntidadeClick(Sender: TObject);
begin
 ExportarEntidade;
end;

procedure TfrmIntegracao.sbImportarTecwinClick(Sender: TObject);
var Linha, Campo, Lido,Campo1,Campo2,Campo3,Campo4,Campo5 : String;
    nCont, x : Integer;
    NomeArq : TextFile;
    Evento : TDataSetNotifyEvent;

 procedure AtualTecWinBD;
 begin
  if dmEF.cdsTecWin.ChangeCount > 0 then
     dmEF.cdsTecWin.ApplyUpdates(-1);
 end;

 procedure AtualProdutoNCM;
 var cdsProd : TClientDataSet;
     iSQL, iUpd : String;
 begin
  cdsProd := Nil;

  iSQL := 'SELECT EF_PRODUTO.ORIGEM, '+
          '       EF_PRODUTO.EMPRESAID, '+
          '       EF_PRODUTO.PRODUTOID, '+
          '       EF_PRODUTO.NCMID ' +
          '  FROM EF_PRODUTO ' +
          ' WHERE '+
          '  EF_PRODUTO.ORIGEM = ''I'' AND '+
          '   EF_PRODUTO.EMPRESAID in (1,12,15,17) ';

  try
   ExecDynamicProvider( -1, iSQL, cdsProd );

   if cdsProd.RecordCount < 1 then
      exit;

   cdsProd.First;
   while not cdsProd.Eof do
   begin
    if dmEF.cdsTecWin.FindKey([cdsProd.FieldByName('NCMID').AsString]) then
       begin
        iUpd := 'UPDATE EF_PRODUTO SET ' +
                '  DESCRICAONCM = ' + QuotedStr( dmEF.cdsTecWinDESCRICAO.Value  ) + ',' +
                '  ALIQUOTAII   = ' + SubstituiString( dmEF.cdsTecWinALIQUOTAII.AsString, ',', '.' ) + ','  +
                '  ALIQUOTAIPI  = ' + SubstituiString( dmEF.cdsTecWinALIQUOTAIPI.AsString, ',', '.' ) +
                ' WHERE ' +
                '  EMPRESAID     = ' + cdsProd.FieldByName('EMPRESAID').AsString +
                '  AND PRODUTOID = ' + cdsProd.FieldByName('PRODUTOID').AsString;

        ExecDML( iUpd );
       end;

    cdsProd.Next;
   end;

   cdsProd.Close;

  finally
   FreeAndNil(  cdsProd );
  end;
 end;


begin
 Screen.Cursor := crHourGlass;
 x := 0;
 AssignFile( NomeArq , mktArqTecWin.Text );
 Reset( NomeArq );

 dmEF.cdsTecwin.Open;
 dmEF.cdsTecWin.AddIndex('idx1','NCMID',[ixPrimary],'','',0);
 dmEF.cdsTecWin.IndexName := 'idx1';
 Evento := dmEF.cdsTecWin.AfterPost;
 dmEF.cdsTecWin.AfterPost := Nil;

 try
  if Length( mktArqTecWin.Text ) = 0 then
     raise Exception.Create('Arquivo não selecionado !');

  // Apagar o Arquivo TECWIN
  ExecDML( 'DELETE FROM EF_TECWIN');

//  dmEF.cdsTecWin.Resync( rmCenter );

  dmEF.cdsTecWin.Refresh;

  ReadLn( NomeArq , Linha );
  while not Eof( NomeArq ) do
  begin
   Inc( x );
   ReadLn( NomeArq , Linha ) ;

   if Linha = '!90181990!,!001!,!Partes!,!14!,!2!' then
      beep;
   

   if Length(Linha) = 0 then
      Break;

   // Codigo NCM
   Campo := '';
   nCont := 2;

   while nCont > 0 do
   begin
    Lido := '';
    Lido := Copy( Linha, nCont, 1 );

    if Lido = '!' then
       Break;

    Campo := Campo + Lido;
    Inc( nCont );
   end;

   Campo1 := Campo;

   // Sequencial
   Campo := '';
   Inc( nCont, 3 );

   while nCont > 0 do
   begin
    Lido := '';
    Lido := Copy( Linha, nCont, 1 );

    if Lido = '!' then
       Break;

    Campo := Campo + Lido;
    Inc( nCont );
   end;

   Campo2 := Campo;

   if Campo2 <> '001' then
      Continue;

   // Descricao
   Campo := '';
   Inc( nCont, 3);

   while nCont > 0 do
   begin
    Lido := '';
    Lido := Copy( Linha, nCont, 1 );

    if Lido = '!' then
       Break;

    Campo := Campo + Lido;
    Inc( nCont );
   end;

   Campo3 := Campo;

   // I.I.
   Campo := '';
   Inc( nCont, 3  );

   while nCont > 0 do
   begin
    Lido := '';
    Lido := COPY(Linha,nCont,1);

    if Lido = '!' then
       Break;

    if Lido = '' then
       Break;

    Campo := Campo + Lido;
    Inc( nCont );
   end;

   // IPI
   Campo4 := Campo;
   Campo := '';
   Inc( nCont, 3 );

   while nCont > 0 do
   begin
    Lido := '';
    Lido := Copy( Linha, nCont, 1 );

    if Lido = '!' then
       Break;

    if Lido = '' then
       Break;

    Campo := Campo + Lido;
    Inc( nCont );
   end;

   // Imagem do TecWin
   Campo5 := Campo;
   if dmEF.cdsTecwin.FindKey([Campo1]) then
      dmEF.cdsTecwin.Edit
   else
      dmEF.cdsTecwin.Insert;

   dmEF.cdsTecWinNCMID.Value      := Campo1;
   dmEF.cdsTecWinDESCRICAO.Value  := Campo3;

   if ( Campo4 <> '' ) and ( Campo4 <> 'NT' ) then
      dmEF.cdsTecWinALIQUOTAII.AsCurrency := StrToInt(Campo4)
   else
      dmEF.cdsTecWinALIQUOTAII.AsFloat := 0;

   if      Campo5 = 'NT' then
           begin
            dmEF.cdsTecWinALIQUOTAIPI.AsFloat := 0;
            dmEF.cdsTecWinISENTOIPI.Value     := 0;
            dmEF.cdsTecWinTRIBUTADO.Value     := 0;
           end
   else if ( Campo5 = '0' ) or ( Campo5 = '' ) then
           begin
            dmEF.cdsTecWinALIQUOTAIPI.AsFloat := 0;
            dmEF.cdsTecWinISENTOIPI.Value     := 1;
            dmEF.cdsTecwinTRIBUTADO.Value     := 0;
           end

   else
            begin
             dmEF.cdsTecWinALIQUOTAIPI.AsFloat := StrToFloat(Campo5);
             dmEF.cdsTecWinISENTOIPI.Value   := 0;
             dmEF.cdsTecWinTRIBUTADO.Value   := 1;
            end;

   dmEF.cdsTecWinSUSPENSAOIPI.Value        := 0;
   dmEF.cdsTecwin.Post;

   if x > 400 then
      begin
       AtualTecWinBD;
       x := 0;
      end;
  end;

  AtualTecWinBD;
  AtualProdutoNCM;

  MessageDlg('Importação concluida com sucesso!', mtInformation, [mbOk], 0);

 finally
  dmEF.cdsTecWin.AfterPost := Evento;
  dmEF.cdsTecWin.DeleteIndex('idx1');
  dmEF.cdsTecwin.Close;
  Screen.Cursor :=  crDefault;
  CloseFile( NomeArq );
 end;
end;

procedure TfrmIntegracao.FileListBox1DblClick(Sender: TObject);
begin
 mktArqTecWin.Text := FileListBox1.FileName;
end;

procedure TfrmIntegracao.FileListBox2DblClick(Sender: TObject);
begin
 mktJapaoArq.Text := FileListBox2.FileName;
end;

procedure TfrmIntegracao.btnPesquisaTitRecClick(Sender: TObject);
begin
 PesquisaTitRec;
end;

procedure TfrmIntegracao.sbTodosClick(Sender: TObject);
var Contador : Integer;
begin
 Contador := 1 ;
 cdsAuxNfsPesquisa.First;
 while not cdsAuxNfsPesquisa.eof do
 begin
  with dmEF do
  begin
   if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
      Exit;
   while ListBox1.Items.Count >= Contador Do
    begin
     if ListBox1.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
       Exit;
     Contador := Contador + 1;
    end;

   ListBox1.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
   ListBox2.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
  end;
  cdsAuxNfsPesquisa.Next;
 end;

end;

procedure TfrmIntegracao.sbRetUmClick(Sender: TObject);
var
 item : Integer;
begin
 Item := ListBox1.ItemIndex;
 ListBox1.Items.Delete(item);
 ListBox2.Items.Delete(item);
end;

procedure TfrmIntegracao.sbRetTodosClick(Sender: TObject);
begin
 ListBox1.Clear;
 ListBox2.Clear;
end;

procedure TfrmIntegracao.sbUmClick(Sender: TObject);
var Contador : Integer;
begin
 with dmEF do begin
  if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
     Exit;
  Contador := 1 ;
  while ListBox1.Items.Count >= Contador Do
   begin
    if ListBox1.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
       Exit;
    Contador := Contador + 1;
   end;

  ListBox1.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
  ListBox2.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
 end;
end;

procedure TfrmIntegracao.BitBtn10Click(Sender: TObject);
var iSQL : String;
begin
 {*** Carregando dados da Nota Fiscal de Saída ***}
 if cdsAuxNfsPesquisa.IndexFieldCount >= 1 then
    begin
     cdsAuxNfsPesquisa.DeleteIndex('idx1');
     cdsAuxNfsItem.DeleteIndex('idx1');
    end;

 iSQL :=  ' SELECT EF_NFS.EMPRESAID,' +
          '       EF_NFS.NFSID,' +
          '       EF_NFS.DATAEMISSAOID,' +
          '       EF_NFS.CANCELADA,' +
          '       EF_NFS.EXPORTADO,' +
          '       EF_NFS.PDSID,' +
          '       EF_NFS.DATAPEDIDO,' +
          '       DECODE( EF_ENTIDADE.FISICAJURIDICA, ''F'', 1, ''J'', 2 ) IND_FISJUR,' +
          '       EF_ENTIDADE.CPFCNPJ CPFCNPJ_TOMADOR, ' +
          '       EF_ENTIDADE.EMAILNFE, ' +
          '       EF_NFS.VLRTOTALSERVICO,' +
          '       EF_NFS.VLRTOTALISS,' +
          '       EF_NFS.VLRTOTALCOFINS,' +
          '       EF_NFS.VLRTOTALPIS,' +
          '       EF_NFS.VLRTOTALNOTA,' +
          '      ( NVL( VLRTOTALRETCOFINS, 0 ) + NVL( VLRTOTALRETPIS, 0 ) + NVL( VLRTOTALRETCSLL, 0 ) + NVL( VLRTOTALRETIRPF, 0 ) ) VLRTOTALRETENCAO, ' +
          '       VLRTOTALRETPIS, ' +
          '       VLRTOTALRETCOFINS, ' +
          '       VLRTOTALRETCSLL, ' +
          '       VLRTOTALRETIRPJ, ' +
          '       VLRTOTALRETIRPF, ' +
          '       EF_CONDPAGTO.DESCRICAO DESCRICAOCONDPAGTO, ' +
          '       EF_NFS.ENTIDADEID,' +
          '       EF_NFS.NOME,' +
          '       EF_NFS.CEPID,' +
          '       EF_NFS.NUMERO,' +
          '       EF_NFS.COMPLEMENTO,' +
          '       EF_NFS.ENDERECO,' +
          '       EF_NFS.BAIRRO,' +
          '       EF_NFS.CIDADE,' +
          '       EF_NFS.PAIS,' +
          '       CP_PAISES.BARUERIPAISESID,' +
          '       TO_CHAR( EF_NFS.DESCRICAOOBSERVACAO ) DESCRRETENCAO, ' +
          '       EF_NFS.SIGLAUFID,' +
          '       DECODE(EF_NFS.SIGLAUFID, ''EX'', 1, 2) TOMADORESTR,' +
          '       EF_NFS.CONTRIBUINTEICMS,' +
          '       EF_NFS.NATUREZAOPID,' +
          '       EF_EMPRESA.CPF_CNPJ,' +
          '       EF_EMPRESA.INSCRESTADUAL,' +
          '       (CASE' +
          '         WHEN EF_EMPRESA.CIDADE = EF_NFS.CIDADE THEN' +
          '          1' +
          '         ELSE' +
          '          2' +
          '       END) LOCALPREST,' +
          '       EF_EMPRESA.INSCRMUNICIPAL' +
          '  FROM EF_NFS, EF_EMPRESA, EF_ENTIDADE, CP_PAISES, EF_CONDPAGTO' +
          ' WHERE ' +
          '   EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID' +
          '   AND EF_NFS.ENTIDADEID = EF_ENTIDADE.ENTIDADEID' +
          '   AND EF_NFS.PAIS = CP_PAISES.NOMEPAISPORTUGUES(+)' +
          '   AND EF_NFS.CONDPAGTOID = EF_CONDPAGTO.CONDPAGTOID(+) ' +
          '   AND NVL( EF_NFS.VLRTOTALSERVICO, 0 ) > 0 ' +
          '   AND EF_NFS.EMPRESAID = ' + IntToStr( EmpresaAtualId );

 if CheckBox2.Checked then
    iSQL := iSQL + ' AND EF_NFS.NFSID = ' + Edit2.Text +
                   ' AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( MaskEdit5.Text )

 else
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( MaskEdit6.Text )+
                   '  AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( MaskEdit7.Text );

 try
  ExecDynamicProvider(-1,iSQL,cdsAuxNfsPesquisa);

  cdsAuxNfsPesquisa.AddIndex('idx1','NFSID;DATAEMISSAOID',[ixPrimary]);
  cdsAuxNfsPesquisa.IndexName := 'idx1';

  if CheckBox2.Checked then
     SpeedButton7.Click;

  {*** Carregando os Ítens da Nota Fiscal de Saída ***}
  cdsAuxNfsItem := nil;
  iSQL := 'SELECT EF_NFSSERVICO.EMPRESAID,' +
          '       EF_NFSSERVICO.NFSID,' +
          '       EF_NFSSERVICO.DATAEMISSAOID,' +
          '       EF_NFSSERVICO.ITEMID,' +
          '       EF_NFSSERVICO.SERVICOID,' +
          '       TO_CHAR(EF_NFSSERVICO.DESCRICAOSERVICO) || '' '' ||to_char( EF_NFSSERVICO.VLRSERVICO ) DESCRICAO,' +
          '       EF_NFSSERVICO.VLRISS,' +
          '       EF_NFSSERVICO.VLRSERVICO,' +
          '       EF_RECEITA.IMPOSTOSERVQLDNATID,'+
          '       EF_RECEITA.SERVICOPRESTADOID' +
          '  FROM GSI.EF_NFSSERVICO,' +
          '       GSI.EF_SERVICO,' +
          '       GSI.EF_RECEITA' +
          ' WHERE EF_SERVICO.EMPRESAID = EF_NFSSERVICO.EMPRESAID' +
          '       AND EF_SERVICO.SERVICOID = EF_NFSSERVICO.SERVICOID' +
          '       AND EF_RECEITA.RECEITAID(+) = EF_SERVICO.RECEITAID ' +
          '       AND EF_NFSSERVICO.EMPRESAID = ' + IntToStr( EmpresaAtualId );

  if CheckBox2.Checked then
     iSQL := iSQL + ' AND EF_NFSSERVICO.NFSID = ' + Edit2.Text +
                    ' AND EF_NFSSERVICO.DATAEMISSAOID = '+ QuotedStr( MaskEdit5.Text )
  else
     iSQL := iSQL + '  AND EF_NFSSERVICO.DATAEMISSAOID >= '+ QuotedStr( MaskEdit6.Text )+
                    '  AND EF_NFSSERVICO.DATAEMISSAOID <= '+ QuotedStr( MaskEdit7.Text );

  if not cdsAuxNfsPesquisa.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsAuxNfsItem );
      cdsAuxNfsItem.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary]);
      cdsAuxNfsItem.IndexName := 'idx1';
     end;

  // Parcelas
  cdsAuxNfsParcela := nil;
  iSQL := 'SELECT EF_NFSPARCELA.EMPRESAID,'+
          '       EF_NFSPARCELA.NFSID,'+
          '       EF_NFSPARCELA.DATAEMISSAOID,'+
          '       EF_NFSPARCELA.PARCELAID,'+
          '       EF_NFSPARCELA.DATAPAGTO,'+
          '       EF_NFSPARCELA.DATAVENCIMENTO,'+
          '       EF_NFSPARCELA.VLRPARCELA,'+
          '       EF_NFSPARCELA.EXPORTADO'+
          '  FROM EF_NFSPARCELA'+
          ' WHERE EF_NFSPARCELA.EMPRESAID = ' + IntToStr( EmpresaAtualId );

  if CheckBox2.Checked then
     iSQL := iSQL + ' AND EF_NFSPARCELA.NFSID = ' + Edit2.Text +
                    ' AND EF_NFSPARCELA.DATAEMISSAOID = '+ QuotedStr( MaskEdit5.Text )
  else
     iSQL := iSQL + '  AND EF_NFSPARCELA.DATAEMISSAOID >= '+ QuotedStr( MaskEdit6.Text )+
                    '  AND EF_NFSPARCELA.DATAEMISSAOID <= '+ QuotedStr( MaskEdit7.Text );

  if not cdsAuxNfsPesquisa.IsEmpty then
     begin
      ExecDynamicProvider( -1, iSQL, cdsAuxNfsParcela );
      cdsAuxNfsParcela.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID;PARCELAID',[ixPrimary]);
      cdsAuxNfsParcela.IndexName := 'idx1';
     end; 

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmIntegracao.BitBtn1Click(Sender: TObject);
var
 Processados : Integer;
begin
 Processados := 1;
 DirGeracao  := ExtractFilePath( Application.ExeName );
 AtivaArquivo('SEFAZ.TXT');

 {*** Carregando dados da Nota Fiscal de Saída ***}
 while ListBox3.Items.Count >= Processados do
 begin
  cdsAuxNfsPesquisa.FindKey([ StrToInt(ListBox3.Items.Strings[Processados-1]),     {No. Nota}
                     StrToDate(ListBox4.Items.Strings[Processados-1]) ]); {Dt. Emiss}
  cdsAuxNfsItem.Filter := 'EMPRESAID = '+ cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsString +
                          ' AND NFSID = '+ cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +
                          ' AND DATAEMISSAOID = ' + QuotedStr( cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString );
  cdsAuxNfsItem.Filtered := True;
  ExportTipo1;
  cdsAuxNfsItem.First;
  while not cdsAuxNfsItem.Eof do
  begin
   ExportTipo2;
   cdsAuxNfsItem.Next;
  end;
  cdsAuxNfsItem.Filter := '';
  cdsAuxNfsItem.Filtered := False;
  cdsAuxNfsPesquisa.Next;
  Inc( Processados );
 end;

 if Processados > 1 then
    Messagedlg('Arquivo Gerado em '+ ExtractFilePath(Application.ExeName)+ 'SEFAZ.TXT',mtConfirmation,[mbok],0)
 else
    Messagedlg('Nenhuma Nota foi Gerada !',mtInformation,[mbOK],0);

 FinalizaArquivo;
end;

procedure TfrmIntegracao.ExportTipo1;
var CPFCNPJ,CPFCNPJ2,INSCRES,UF : String;
    Endereco, NomePopular, Cidade, Estado, CEP,Telefone,DDD : String;
    tam : Integer;
begin
 {*** Preenchendo o arquivo ***}
 Write( Arq, AddDel('1',1) );                                                     {*** - T1 identificador do tipo de arquivo *** }
 Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('NFSID').AsString,9 ) );       {*** 0 T9 Numero da Nota  ***}
 Write( Arq, AddDel( '',4 ) );// SERIE VERIFICAR JOEL

 if EmpresaAtualId = 12 then
    Write( Arq,'46563938|0002|00|' )
 else
   begin
    if ValidCnPJ_CnPF( cdsAuxNfsPesquisa.FieldByName('CPF_CNPJ').AsString ) then
       begin
        CPFCNPJ := TransfNum( cdsAuxNfsPesquisa.FieldByName('CPF_CNPJ').AsString );
        Write( Arq, AddDel( copy( CPFCNPJ,1,8 ),8 ) );                            {*** 1 T8 CNPJ *** }
        Write( Arq, AddDel( copy( CPFCNPJ,9,4 ),4 ) );                            {*** 2 T4 CNPJ  *** }
        Write( Arq, AddDel( copy( CPFCNPJ,13,2),2 ) );                            {*** 3 T2 Digito do CNPJ do Remetente  ***}
       end
     else
       begin
        Write( Arq, AddDel( '',8 ) );                                             {*** 1 T8 CNPJ *** }
        Write( Arq, AddDel( '',4 ) );                                             {*** 2 T4 CNPJ  *** }
        Write( Arq, AddDel( '',2 ) );                                             {*** 3 T2 Digito do CNPJ do Remetente  ***}
       end;
   end;

 Write( Arq, AddDel( FormatDateTime('DD/MM/YYYY', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ),10 ) );  { T10 *** Data de Emissao   *** }

 if cdsAuxNfsPesquisa.FieldByName('SIGLAUFIDFILIAL').AsString = 'BA' then
    begin
     if Trim( cdsAuxNfsPesquisa.FieldByName('INSCRESTADUALFILIAL').AsString ) = 'ISENTO' then
        INSCRES := ''
     else
        begin
         tam     := length( cdsAuxNfsPesquisa.FieldByName('INSCRESTADUALFILIAL').AsString );
         INSCRES := copy ( cdsAuxNfsPesquisa.FieldByName('INSCRESTADUALFILIAL').AsString,4,Tam );
        end;

     Write( Arq, AddDel( INSCRES,9 ) ); // Inscricao Estadual                     {*** 4 T9 Inscrição Estadual ***}
     Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('SIGLAUFIDFILIAL').AsString,2 ) );          {*** 5 T2 Sigla da Unidade de Federação Remetente ***}
    end
 else
   begin
    Write( Arq, AddDel( '',1 ) ); // Inscricao Estadual                           {*** 6 T9 Inscrição Estadual ***}
    Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('SIGLAUFIDFILIAL').AsString,2 ) );           {*** 5 T2 Sigla da Unidade de Federação Remetente ***}
   end;

 if cdsAuxNfsPesquisa.FieldByName('DATAEMISSAONFEID').AsDateTime <> 0 then
    Write( Arq, AddDel( FormatDateTime('DD/MM/YYYY', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAONFEID').AsDateTime ),10 ) )       {*** 8 T10 Data Entrada/Saida *** }
 else
    Write( Arq, AddDel( FormatDateTime('DD/MM/YYYY', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ) ,10 ) );

 Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('CFOP').AsString,4 ) );                                            {*** 9 T4 Natureza de Operacao *** *** }
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRTOTALBASEICMS').AsFloat,14,'00000000000000.00' ),17 ) );   {*** 10 T14.2 Valor Base ICMS   ***}
 Write( Arq, AddDel( '',1 ) );                                                                                                {*** 11 T14.2 Valor Base ICMS Substituto  ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRTOTALICMS').AsFloat,12,'000000000000.00' ),15 ) );         {*** 12 T12.2 Valor ICMS ***}
 Write( Arq, AddDel( '',1 ) );                                                                                                {*** 13 T12.2 Valor ICMS Substituto ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRTOTALPRODUTO').AsFloat,14,'00000000000000.00' ),17 ) );    {*** 14 T14.2 Valor Total do Produto ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRFRETE').AsFloat,12,'000000000000.00' ),15 ) );             {*** 15 T12.2 Valor Frete ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRSEGURO').AsFloat,12,'000000000000.00' ),15 ) );            {*** 16 T12.2 Valor Seguro ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRDESPESAACESSORIA').AsFloat,14,'00000000000000.00' ),17 ) );{*** 17 T14 Valor Despesa Acessorios ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRTOTALIPI').AsFloat,12,'000000000000.00' ),15 ) );          {*** 18 T12.2 Valor Total do IPI ***}
 Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRTOTALNOTA').AsFloat,12,'000000000000.00' ),15 ) );         {*** 19 T12.2 Valor SubTotal da Nota ***}

 CPFCNPJ := '';
 INSCRES := '';
 UF      := '';
 NomePopular := '';
 if ( not cdsAuxNfsPesquisa.FieldByName('TRANSPORTADORID').IsNull ) and
    ( cdsAuxNfsPesquisa.FieldByName('TRANSPORTADORID').Value <> 0 ) then
    begin
     if ( cdsAuxNfsPesquisa.FieldByName('SIGLAUFIDTRANSP').AsString = 'BA' ) then
        begin
         Tam := length( cdsAuxNfsPesquisa.FieldByName('INSCRESTADUALTRANSP').AsString );

         if Trim( cdsAuxNfsPesquisa.FieldByName('INSCRESTADUALTRANSP').AsString ) = 'ISENTO' then
            INSCRES := ''
         else
            INSCRES   := copy ( TransfNum( cdsAuxNfsPesquisa.FieldByName('INSCRESTADUALTRANSP').AsString ),4,Tam );
        end;

     CPFCNPJ2    := FormatCNPJ( cdsAuxNfsPesquisa.FieldByName('CPFCNPJTRANSP').AsString );
     UF          := cdsAuxNfsPesquisa.FieldByName('SIGLAUFIDTRANSP').AsString;
     Cidade      := cdsAuxNfsPesquisa.FieldByName('CIDADETRANSP').AsString;
     NomePopular := cdsAuxNfsPesquisa.FieldByName('NOMEFANTASIATRANSP').AsString;
    end;

  Write( Arq, AddDel( INSCRES,9 )  );                                            {***  20 T9 Inscricao Estadual Transportador ***}

  if ValidCnPJ_CnPF( CPFCNPJ2 ) then
     begin
      CPFCNPJ := TransfNum( CPFCNPJ2 );
      Write( Arq, AddDel( copy( CPFCNPJ,1,8 ),8 ) );                               {*** 21 T8 CNPJ do Trasnportador T10 ***}
      Write( Arq, AddDel( copy( CPFCNPJ,9,4 ),4 ) );                               {*** 22 T4 CNPJ Filial do Transportador ***}
      Write( Arq, AddDel( copy( CPFCNPJ,13,2),2 ) );                               {*** 23 T2 Digito do CNPJ do Transportador ***}
     end
  else
    begin
     Write( Arq, AddDel( '',8 ) );                                                 {*** 21 T8 CNPJ do Trasnportador T10 ***}
     Write( Arq, AddDel( '',4 ) );                                                 {*** 22 T4 CNPJ Filial do Transportador ***}
     Write( Arq, AddDel( '',2 ) );                                                 {*** 23 T2 Digito do CNPJ do Transportador ***}
    end;

  Write( Arq, AddDel( NomePopular,150 ) );                                           {*** 24 T150 Nome Razão Social do Transportador ***}
  Write( Arq, AddDel( UF,2 ) );                                                     {*** 25 T2 Unidade Federacao do Transportador ***}
  Write( Arq, AddDel( Cidade,50 ) );                                                {*** 26 T50 Municipio do Transportador ***}
  Write( Arq, AddDel( FormatValue(  cdsAuxNfsPesquisa.FieldByName('EMBQTDVOLUMES').Value,10,'0000000000.00' ),13 ) );  {*** 27 T10.2 Valor do Volume ***}
  Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('EMBESPECIE').AsString,20 ) );  {*** 28 T20 Descricao da Especie ***}
  Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('EMBPESOBRUTO').Value,8,'00000000.000' ),12 ) );        {*** 29 T8.3 Peso Bruto ***}
  Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('EMBPESOLIQUIDO').Value,8,'00000000.000' ),12 ) );      {*** 30 T8.3 Peso Liquido ***}
  Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('PLACAVEICULO').AsString,7 ) );{*** 31 T7 Placa do Veículo ***}
  Write( Arq, AddDel( '',1 ) );                                                    {*** 32 T2 Unidade Federacao do Veículo ***}
  Write( Arq, AddDel( '',1 ) );                                                    {*** 33 T50 Descricao do Municipio do Veículo  ***}
  Write( Arq, AddDel( '',1 ) );                                                    {*** 34 T225 Informacoes Complementares ***}

  if cdsAuxNfsPesquisa.FieldByName('MODALIDADEFRETE').Value = 'E' then
     Write( Arq, AddDel( '1',1 ) )                                                {*** 35 T1 Frete por Conta do Remetente ***}
  else
     Write( Arq,AddDel( '0',1 ) );                                                {*** 35 T1 Frete por Conta do Emitente ***}

  {*** Numero Empenho ***}
  Write( Arq, AddDel( '',9 ) );                                                   {*** 36 T9 Numero do Empenho  ***}

  if not cdsAuxNfsPesquisa.FieldByName('ENTIDADEID').IsNull then
     begin
      NomePopular := cdsAuxNfsPesquisa.FieldByName('NOMEFANTASIA').AsString;
      Endereco    := cdsAuxNfsPesquisa.FieldByName('ENDERECOENT').AsString;
      Cidade      := cdsAuxNfsPesquisa.FieldByName('CIDADEENT').AsString;
      Estado      := cdsAuxNfsPesquisa.FieldByName('SIGLAUFIDENT').AsString;
      CEP         := TransfNum( cdsAuxNfsPesquisa.FieldByName('CEPIDENT').AsString );
      Telefone    := cdsAuxNfsPesquisa.FieldByName('TELEFONEENT').AsString;
      CPFCNPJ2    := FormatCNPJ( cdsAuxNfsPesquisa.FieldByName('CPFCNPJENT').Value )
     end
    else
      begin
      NomePopular := '';
      Endereco := '';
      Cidade   := '';
      Estado   := '';
      CEP      := '';
      Telefone := '';
      CPFCNPJ2 := '';
      end;

 if ValidCnPJ_CnPF( CPFCNPJ2 ) then
     begin
      CPFCNPJ := TransfNum( CPFCNPJ2 );
      Write( Arq, AddDel( copy( CPFCNPJ,1,8  ),8 ) );                              {***  37 T8 CNPJ Base do Orgao Estadual Contratante  ***}
      Write( Arq, AddDel( copy( CPFCNPJ,9,4  ),4 ) );                              {***  38 T4 CNPJ Filial do Orgao Estadual Contratante  ***}
      Write( Arq, AddDel( copy( CPFCNPJ,13,2 ),2 ) );                              {***  39 T2 Digito do CNPJ do Orgao Estadual Contratante ***}
     end
  else
    begin
     Write( Arq, AddDel( '',8 ) );                                                 {***  38 T8 CNPJ Base do Orgao Estadual Contratante  ***}
     Write( Arq, AddDel( '',4 ) );                                                 {***  39 T4 CNPJ Filial do Orgao Estadual Contratante  ***}
     Write( Arq, AddDel( '',2 ) );                                                 {***  40 T2 Digito do CNPJ do Orgao Estadual Contratante ***}
    end;

  SeparaDDDTelefone( DDD,Telefone );

  Write( Arq, AddDel( NomePopular,150 )  );                                        {*** 40 T100 Razão Social do Destinatario ***}
  Write( Arq, AddDel( Endereco,100 )  );                                           {*** 41 T100 Endereco do Destinatario ***}
  Write( Arq, AddDel( '.',40 ) );                                                  {*** 42 T40 Bairro do Destinatario ***}
  Write( Arq, AddDel( CEP,8 ) );                                                   {*** 43 T8 Cep do Destinatario ***}
  Write( Arq, AddDel( copy( DDD,1,2),2 ) );                                        {*** 44 T2 DDD do Destinatario ***}
  Write( Arq, AddDel( copy( Telefone,1,8 ),8 ) );                                  {*** 45 T8 Telefone do Destinatario ***}
  Write( Arq, AddDel( Estado,2 ) );                                                {*** 46 T2 Estado do Destinatario T2  ***}
  Write( Arq, AddDel( Cidade,50 ) );                                               {*** 47 T50 Municipio do Destinatario T50 ***}
  Write( Arq, AddDel( '',1 ) );                                                    {*** 48 T5.2 Percentual do Desconto ***}
  Write( Arq, AddDel( FormatValue( cdsAuxNfsPesquisa.FieldByName('VLRTOTALNOTA').AsFloat,14,'00000000000000.00' ),17 ) );{*** 49 T14.2 Valor Geral da Nota ***}
  Write( Arq, AddDel( '',1 ) );                                                    {*** 50 T14.2 Valor do Desconto *** }
  Write( Arq, AddDel( '0',1) );                                                    {*** 51 T1 Status da Requisicao de recursos conveniados 0 para quem nao usa *** }

  Write( Arq, AddDel( '',1 ));  {TipoOrgao := cdsAuxEntidade.FieldByName('DESCRICAONATJURIDICA').AsString;
  if AnsiContainsStr ( TipoOrgao,'ESTADUAL' ) then
     Write( Arq,'E')                                                             {*** 52 T1 Codigo da Esfera E M ou U *** }
  {else
     Write( Arq,'M');}

  Write( Arq, AddDel( '',1 ) );{*** 53 Numero do Convenio *** }
  Write( Arq, AddDel( '',1 ) );{*** 54 Sigla da Unidade da Federação do Convenio ***}
  Write( Arq, AddDel( '',1 ) );{*** 55 Descrição do municipio do convenio ***}
  Writeln( Arq );
end;

function TfrmIntegracao.FormatValue(Value: Variant; Size: Integer;
  Mask: String): String;
begin
 if ( Value = null ) or ( Value = 0 ) then
    Result := ''
 else
    Result := SubstituiString( FormatFloat( Mask,Value ),',','.' );
end;

function TfrmIntegracao.FormatCNPJ(Text: String): String;
var CpoFormat, TextCnv : String;
begin
 Result := '';
 if Text <> '' then
    begin
     CpoFormat := '';
     TextCnv   := TransfNum( Text );
     if LengTh( Trim( TextCnv ) ) > 13 then
        CpoFormat := FormatMaskText( '##\.###\.###\/####\-##;0;', TextCnv )
     else
        CpoFormat := FormatMaskText( '###\.###\.###\-##;0;', TextCnv );

     Result := CpoFormat;
    end;
end;

procedure TfrmIntegracao.SeparaDDDTelefone(var DDD : String; var Telefone : String);
var Index,Index2,Tam : Integer;
    NewString : String;
begin
 NewString := Telefone;
 DDD := '';
 Index := Pos(')',Telefone );
 if Index > 0 then
    begin
     Index2 := Pos('/', Telefone );
     DDD := TransfNum( copy( Telefone,2,Index-1 ) );
     if Index2 > 0 then
        begin
         Tam := (Index2 - Index);
         NewString := copy( Telefone,Index+1,tam-1 );
        end
     else
        NewString := copy( Telefone,Index+1,9 );
    end
 else
   begin
    if Length( Telefone ) > 8 then
       begin
        Index := Pos('-',Telefone );
        if Index > 0 then
           begin
            Index2 := Pos('/', Telefone );
            DDD := TransfNum( copy( Telefone,1,Index-1 ) );
            if Index2 > 0 then
               begin
                Tam := (Index2 - Index);
                NewString := copy( Telefone,Index+1,tam-1 );
               end
            else
               NewString := copy( Telefone,Index+1,9 );
           end;
       end;
   end;

 if DDD = '' then
    begin
     if Length( Telefone ) > 8 then
        begin
         DDD := TransfNum( copy( Telefone,1,2) );
         NewString := copy(Telefone,3,9 );
        end
     else
        NewString := copy(Telefone,1,9 );
    end;
 Telefone := TransfNum( NewString );
end;

procedure TfrmIntegracao.ExportTipo2;
var CPFCNPJ : String;
    VlrSubTotal,VlrTotal  : Real;
begin
 if not cdsAuxNfsItem.IsEmpty then
    begin
     Write( Arq, AddDel( '2',1 ) );                                                {*** identificador do tipo de arquivo T1 ( P1 ) *** }
     Write( Arq,AddDel( cdsAuxNfsPesquisa.FieldByName('NFSID').AsString,9 ) );     {*** 0 T9 Numero da Nota ***}
     Write( Arq, AddDel( '',1 ) );// SERIE VERIFICAR JOEL                          {*** 1 T4 Numero da Nota Fiscal Original ***}

      if EmpresaAtualId = 12 then
         Write( Arq,'46563938|0002|00|')
      else
        begin
         if ValidCnPJ_CnPF( cdsAuxNfsPesquisa.FieldByName('CPF_CNPJ').AsString ) then
            begin
             CPFCNPJ := TransfNum( cdsAuxNfsPesquisa.FieldByName('CPF_CNPJ').AsString );
             Write( Arq, AddDel( copy( CPFCNPJ,1,8 ),8 ) );                      {*** 2 T8 CNPJ *** }
             Write( Arq, AddDel( copy( CPFCNPJ,9,4 ),4 ) );                      {*** 3 T4 CNPJ  *** }
             Write( Arq, AddDel( copy( CPFCNPJ,13,2),2 ) );                      {*** 4 T2 Digito do CNPJ do Remetente  ***}
            end
          else
            begin
             Write( Arq, AddDel( '',1 ) );                                       {*** 2 T8 CNPJ *** }
             Write( Arq, AddDel( '',1 ) );                                       {*** 3 T4 CNPJ  *** }
             Write( Arq, AddDel( '',1 ) );                                       {*** 4 T2 Digito do CNPJ do Remetente  ***}
            end;
        end;

     Write( Arq, AddDel( FormatDateTime('DD/MM/YYYY', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ),10 ) );    {*** 5 T10 Data Entrada/Saida *** }
     Write( Arq, AddDel( cdsAuxNfsItem.FieldByName('ITEMID').AsString,5 ) );                   { *** 6 T5 Numero Sequencial do Item da Nota *** }
     Write( Arq, AddDel( cdsAuxNfsItem.FieldByName('PRODUTOID').AsString,50 ) );               { *** 7 T50 Codigo da Mercadoria *** }
     Write( Arq, AddDel( cdsAuxNfsItem.FieldByName('DESCRICAOPRODUTO').AsString,255 ) );       { *** 8 T255 Descricao da Mercadoria *** }
     Write( Arq, AddDel( cdsAuxNfsItem.FieldByName('SITTRIBUTARIAESTADUAL').AsString,3 ) );    { *** 9 T3 Codigo da Situacao Tributaria *** }
     Write( Arq, AddDel( cdsAuxNfsPesquisa.FieldByName('EMBESPECIE').AsString,30 ) );           { *** 10 T30 Unidade de Medida *** }
     Write( Arq, AddDel( FormatValue( cdsAuxNfsItem.FieldByName('QUANTIDADE').Value,14,'00000000000000.000000' ),21 ) );       { *** 11 T14.6 Quantidade *** }
     Write( Arq, AddDel( FormatValue( cdsAuxNfsItem.FieldByName('VLRPRECOUNITARIO').Value,14,'00000000000000.000000' ),21 ) );  { *** 12 T14.6 Vlr. Preco Unitario *** }
     Write( Arq, AddDel( FormatValue( cdsAuxNfsItem.FieldByName('ALIQUOTAIPI').Value,5,'00000.00' ),8 ) );                  { *** 13 T5.2 Perc. Aliquota IPI *** }
     Write( Arq, AddDel( FormatValue( cdsAuxNfsItem.FieldByName('ALIQUOTAICMS').Value,5,'00000.00' ),8 ) );                 { *** 14 T5.2 Perc. Aliquota *** }
     Write( Arq, AddDel( FormatValue( cdsAuxNfsItem.FieldByName('VLRDESCONTO').Value,14,'00000000000000.000000' ),21 ) );       { *** 15 T14.6 Valor do Desconto *** }
     Write( Arq, AddDel( FormatValue( cdsAuxNfsItem.FieldByName('PORCDESCONTO').Value,5,'00000.00' ),8 ) );                 { *** 16 T5.2 Valor do Desconto *** }

     VlrSubTotal := cdsAuxNfsItem.FieldByName('VLRPRECOUNITARIO').AsFloat * cdsAuxNfsItem.FieldByName('QUANTIDADE').AsFloat;
     VlrTotal    := VlrSubTotal - cdsAuxNfsItem.FieldByName('VLRDESCONTO').asFloat;

     Write( Arq, AddDel( FormatValue( VlrSubTotal,14,'00000000000000.00' ),17 ) );  { *** 17 T14.2 Vlr. SubTotal ( Quantidade * VlrPrecoProduto ) *** }
     Write( Arq, AddDel( FormatValue( VlrTotal ,14,'00000000000000.00' ),17 ) );    { *** 18 T14.2 Vlr. Total ( VlrSubTotal - VlrDesconto ) *** }
     Writeln( Arq );
    end;
end;

procedure TfrmIntegracao.MaskEdit1Change(Sender: TObject);
begin
 if ( edit1.Text <> '' ) and ( MaskEdit1.Text <> '  /  /    '  ) then
    CheckBox1.Checked := True;
end;

procedure TfrmIntegracao.BitBtn2Click(Sender: TObject);
var iSQL : String;
begin
 {*** Carregando dados da Nota Fiscal de Saída ***}
 if cdsAuxNfsPesquisa.IndexFieldCount >= 1 then
    begin
     cdsAuxNfsPesquisa.DeleteIndex('idx1');
     cdsAuxNfsItem.DeleteIndex('idx1');
    end;

 iSQL := 'SELECT EF_NFS.EMPRESAID EMPRESAID,'+
         '  EF_NFS.NFSID NFSID,'+
         '  EF_NFS.DATAEMISSAOID DATAEMISSAOID,'+
         '  EF_NFS.DATAEMISSAONFEID DATAEMISSAONFEID,'+
         '  EF_NFS.NATUREZAOPID NATUREZAOPID,'+
         '  EF_NATUREZAOP.CFOP,'+
         '  EF_NFS.VLRTOTALBASEICMS VLRTOTALBASEICMS,'+
         '  EF_NFS.VLRTOTALPRODUTO VLRTOTALPRODUTO,'+
         '  EF_NFS.VLRSEGURO VLRSEGURO,'+
         '  EF_NFS.VLRFRETE VLRFRETE,'+
         '  EF_NFS.VLRDESPESAACESSORIA VLRDESPESAACESSORIA,'+
         '  EF_NFS.VLRTOTALIPI VLRTOTALIPI,'+
         '  EF_NFS.VLRTOTALNOTA VLRTOTALNOTA,'+
         '  EF_NFS.VLRTOTALICMS VLRTOTALICMS,'+
         '  EF_NFS.EMBQTDVOLUMES EMBQTDVOLUMES,'+
         '  EF_NFS.EMBESPECIE EMBESPECIE,'+
         '  EF_NFS.EMBPESOBRUTO EMBPESOBRUTO,'+
         '  EF_NFS.EMBPESOLIQUIDO EMBPESOLIQUIDO,'+
         '  EF_NFS.PLACAVEICULO PLACAVEICULO,'+
         '  EF_NFS.MODALIDADEFRETE MODALIDADEFRETE,'+
         '  EF_FILIAL.CPF_CNPJ CPF_CNPJ,'+
         '  EF_FILIAL.INSCRESTADUAL INSCRESTADUALFILIAL,'+
         '  EF_FILIAL.SIGLAUFID SIGLAUFIDFILIAL,'+
         '  EF_NFS.TRANSPORTADORID TRANSPORTADORID,'+
         '  EF_ENTIDADETRANSP.INSCRESTADUAL INSCRESTADUALTRANSP,'+
         '  EF_ENTIDADETRANSP.CPFCNPJ CPFCNPJTRANSP,'+
         '  EF_ENTIDADETRANSP.NOMEFANTASIA NOMEFANTASIATRANSP,'+
         '  EF_ENTIDADETRANSP.SIGLAUFID SIGLAUFIDTRANSP,'+
         '  EF_ENTIDADETRANSP.CIDADE CIDADETRANSP,'+
         '  EF_NFS.ENTIDADEID ENTIDADEID,'+
         '  EF_ENTIDADE.CPFCNPJ CPFCNPJENT,'+
         '  EF_ENTIDADE.NOME NOME,'+
         '  EF_ENTIDADE.NOMEFANTASIA NOMEFANTASIA,'+
         '  EF_ENTIDADE.ENDERECO ENDERECOENT,'+
         '  EF_ENTIDADE.COMPLEMENTO COMPLEMENTOENT,'+
         '  EF_ENTIDADE.NUMERO NUMEROENT,'+
         '  EF_ENTIDADE.CIDADE CIDADEENT,'+
         '  EF_ENTIDADE.BAIRRO BAIRROENT,'+
         '  EF_ENTIDADE.CEPID CEPIDENT,'+
         '  EF_ENTIDADE.SIGLAUFID SIGLAUFIDENT,'+
         '  EF_ENTIDADE.TELEFONE TELEFONEENT,'+
         '  EF_ENTIDADE.INSCRESTADUAL INSCRESTADUAL,'+
         '  EF_ENTIDADE.FISICAJURIDICA FISICAJURIDICA,'+
         '  EF_ENTIDADE.NATUREZAJURIDICAID NATUREZAJURIDICAID,'+
         '  EF_NATUREZAJURIDICA.DESCRICAO DESCRICAONATJURIDICA'+
         '  FROM '+
         '  EF_NFS              EF_NFS,'+
         '  EF_ENTIDADE         EF_ENTIDADE,'+
         '  EF_ENTIDADE         EF_ENTIDADETRANSP,'+
         '  EF_NATUREZAJURIDICA EF_NATUREZAJURIDICA,'+
         '  EF_FILIAL           EF_FILIAL,'+
         '  EF_EMPRESA          EF_EMPRESA,'+
         '  EF_NATUREZAOP       EF_NATUREZAOP'+
         ' WHERE '+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_NFS.EMPRESAID = '+ IntToStr( EmpresaAtualId )+
         '  AND EF_ENTIDADE.ENTIDADEID = EF_NFS.ENTIDADEID'+
         '  AND EF_ENTIDADETRANSP.ENTIDADEID(+) = EF_NFS.TRANSPORTADORID'+
         '  AND EF_NATUREZAJURIDICA.NATUREZAJURIDICAID = EF_ENTIDADE.NATUREZAJURIDICAID'+
         '  AND EF_EMPRESA.EMPRESAID = EF_NFS.EMPRESAID'+
         '  AND EF_FILIAL.CPF_CNPJ(+) = EF_EMPRESA.CPF_CNPJ';

 if CheckBox1.Checked then
    iSQL := iSQL + ' AND EF_NFS.NFSID = ' + Edit1.Text +
                   ' AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( MaskEdit1.Text )

 else
    iSQL := iSQL + '  AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( MaskEdit2.Text )+
                   '  AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( MaskEdit4.Text );

 try
  ExecDynamicProvider(-1,iSQL,cdsAuxNfsPesquisa);

  cdsAuxNfsPesquisa.AddIndex('idx1','NFSID;DATAEMISSAOID',[ixPrimary]);
  cdsAuxNfsPesquisa.IndexName := 'idx1';

  if CheckBox1.Checked then
     SpeedButton3.Click;

  {*** Carregando os Ítens da Nota Fiscal de Saída ***}
  cdsAuxNfsItem := nil;
  iSQL := 'SELECT * '+
          '  FROM '+
          '  EF_NFSITEM'+
          ' WHERE '+
          '  EF_NFSITEM.EMPRESAID = '+ cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsString;

  if CheckBox1.Checked then
     iSQL := iSQL + ' AND EF_NFSITEM.NFSID = ' + Edit1.Text +
                    ' AND EF_NFSITEM.DATAEMISSAOID = '+ QuotedStr( MaskEdit1.Text )
  else
     iSQL := iSQL + '  AND EF_NFSITEM.DATAEMISSAOID >= '+ QuotedStr( MaskEdit2.Text )+
                    '  AND EF_NFSITEM.DATAEMISSAOID <= '+ QuotedStr( MaskEdit4.Text );

 if not cdsAuxNfsPesquisa.IsEmpty then
    begin
     ExecDynamicProvider(-1,iSQL,cdsAuxNfsItem );
     cdsAuxNfsItem.AddIndex('idx1','EMPRESAID;NFSID;DATAEMISSAOID',[ixPrimary]);
     cdsAuxNfsItem.IndexName := 'idx1';
    end;

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmIntegracao.SpeedButton3Click(Sender: TObject);
var Contador : Integer;
begin
 if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
    Exit;
 Contador := 1 ;
 while ListBox3.Items.Count >= Contador Do
  begin
   if ListBox3.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
      Exit;
   Contador := Contador + 1;
  end;

 ListBox3.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
 ListBox4.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
end;

procedure TfrmIntegracao.SpeedButton2Click(Sender: TObject);
var Contador : Integer;
begin
 Contador := 1 ;
 cdsAuxNfsPesquisa.First;
 while not cdsAuxNfsPesquisa.eof do
 begin
   if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
      Exit;
   while ListBox3.Items.Count >= Contador Do
   begin
     if ListBox3.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
        begin
         cdsAuxNfsPesquisa.Next;
         Continue;
        end;
     Contador := Contador + 1;
   end;

   ListBox3.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
   ListBox4.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
   cdsAuxNfsPesquisa.Next;
 end;
end;

procedure TfrmIntegracao.SpeedButton4Click(Sender: TObject);
var
 item : Integer;
begin
 Item := ListBox3.ItemIndex;
 ListBox3.Items.Delete(item);
 ListBox4.Items.Delete(item);
end;

procedure TfrmIntegracao.SpeedButton5Click(Sender: TObject);
begin
 ListBox3.Clear;
 ListBox4.Clear;
end;

procedure TfrmIntegracao.SpeedButton6Click(Sender: TObject);
var Contador : Integer;
begin
 Contador := 1 ;
 cdsAuxNfsPesquisa.First;
 while not cdsAuxNfsPesquisa.eof do
 begin
   if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
      Exit;
   while ListBox6.Items.Count >= Contador Do
   begin
     if ListBox6.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
        begin
         cdsAuxNfsPesquisa.Next;
         Continue;
        end;
     Contador := Contador + 1;
   end;

   ListBox6.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
   ListBox5.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
   cdsAuxNfsPesquisa.Next;
 end;
end;

procedure TfrmIntegracao.SpeedButton7Click(Sender: TObject);
var Contador : Integer;
begin
 if cdsAuxNfsPesquisa.FieldByName('NFSID').Value < 1 Then
    Exit;
 Contador := 1 ;
 while ListBox6.Items.Count >= Contador Do
  begin
   if ListBox6.Items.Strings[Contador-1] = IntToStr( cdsAuxNfsPesquisa.FieldByName('NFSID').Value ) then
      Exit;
   Contador := Contador + 1;
  end;

 ListBox6.Items.Add(IntToStr(cdsAuxNfsPesquisa.FieldByName('NFSID').Value));
 ListBox5.Items.Add(DateToStr(cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').Value));
end;

procedure TfrmIntegracao.SpeedButton8Click(Sender: TObject);
var
 item : Integer;
begin
 Item := ListBox6.ItemIndex;
 ListBox6.Items.Delete(item);
 ListBox5.Items.Delete(item);
end;

procedure TfrmIntegracao.SpeedButton9Click(Sender: TObject);
begin
 ListBox6.Clear;
 ListBox5.Clear;
end;

procedure TfrmIntegracao.DBGrid1TitleClick(Column: TColumn);
begin
 OrdenaFieldDBGrid(Column,  dsAuxNfsPesquisa, DBGrid1 );
end;

procedure TfrmIntegracao.GeraTipo8880( var cds : TClientDataSet;GrupoCFOP : String; Qualificacao : String = '00' );
var iSQL : String;
begin
 cds := nil;

 if Qualificacao = '00' then
    begin
     iSQL := 'SELECT'+
             '  EF_NATUREZAOP.CFOP,'+
             '  SUM( EF_NFE.VLRTOTALNOTA ) VLRTOTALNOTA ,'+
             '  SUM( EF_NFE.VLRTOTALBASEICMS ) VLRTOTALBASEICMS,'+
             '  SUM( EF_NFE.VLRTOTALICMS )  VLRTOTALICMS,'+
             '  SUM( EF_NFE.VLRTOTALISENTASICMS )  VLRTOTALISENTASICMS,'+
             '  SUM( EF_NFE.VLRTOTALOUTRASICMS ) VLRTOTALOUTRASICMS,'+
             '  SUM( EF_NFE.VLRTOTALBASEIPI ) VLRTOTALBASEIPI,'+
             '  SUM( EF_NFE.VLRTOTALIPI ) VLRTOTALIPI,'+
             '  SUM( EF_NFE.VLRTOTALISENTASIPI ) VLRTOTALISENTASIPI,'+
             '  SUM( EF_NFE.VLRTOTALOUTRASIPI ) VLRTOTALOUTRASIPI'+
             '  FROM'+
             '  EF_NFE,'+
             '  EF_NATUREZAOP'+
             ' WHERE'+
             '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID'+
             '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
             '  AND EF_NFE.DATAENTRADA >= '+QuotedStr( MaskDtINIConvIcms.Text )+
             '  AND EF_NFE.DATAENTRADA <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
             '  AND EF_NFE.DATAENTRADA IS NOT NULL'+
             '  AND EF_NFE.CANCELADA = 0'+
             '  AND EF_NATUREZAOP.CFOP <> 1353 '+
             '  AND EF_NATUREZAOP.CFOP <> 1360 '+
             '  AND EF_NATUREZAOP.CFOP <> 2353 '+
             '  AND SUBSTR( EF_NATUREZAOP.CFOP,1,1) = '+ QuotedStr(GrupoCFOP)+
             '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0';

             if ( CheckEmp12e13.Checked ) then
                iSQL := iSQL + ' AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) )';

             iSQL := iSQL + ' GROUP BY EF_NATUREZAOP.CFOP'+
                            ' ORDER BY EF_NATUREZAOP.CFOP';
    end
   else
     begin
      iSQL := 'SELECT'+
              '  SUM( EF_NFE.VLRTOTALNOTA ) VLRTOTALNOTA ,'+
              '  SUM( EF_NFE.VLRTOTALBASEICMS ) VLRTOTALBASEICMS,'+
              '  SUM( EF_NFE.VLRTOTALICMS )  VLRTOTALICMS,'+
              '  SUM( EF_NFE.VLRTOTALISENTASICMS )  VLRTOTALISENTASICMS,'+
              '  SUM( EF_NFE.VLRTOTALOUTRASICMS ) VLRTOTALOUTRASICMS,'+
              '  SUM( EF_NFE.VLRTOTALBASEIPI ) VLRTOTALBASEIPI,'+
              '  SUM( EF_NFE.VLRTOTALIPI ) VLRTOTALIPI,'+
              '  SUM( EF_NFE.VLRTOTALISENTASIPI ) VLRTOTALISENTASIPI,'+
              '  SUM( EF_NFE.VLRTOTALOUTRASIPI ) VLRTOTALOUTRASIPI'+
              '  FROM'+
              '  EF_NFE,'+
              '  EF_NATUREZAOP'+
              ' WHERE'+
              '  EF_NATUREZAOP.NATUREZAOPID = EF_NFE.NATUREZAOPID'+
              '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
              '  AND EF_NFE.DATAENTRADA >= '+QuotedStr( MaskDtINIConvIcms.Text )+
              '  AND EF_NFE.DATAENTRADA <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
              '  AND EF_NFE.DATAENTRADA IS NOT NULL'+
              '  AND EF_NFE.CANCELADA = 0'+
              '  AND EF_NATUREZAOP.CFOP <> 1353 '+
              '  AND EF_NATUREZAOP.CFOP <> 1360 '+
              '  AND EF_NATUREZAOP.CFOP <> 2353 '+
              '  AND SUBSTR( EF_NATUREZAOP.CFOP,1,1) = '+ QuotedStr(GrupoCFOP)+
              '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0';

              if ( CheckEmp12e13.Checked ) then
                 iSQL := iSQL + ' AND ( ( EF_NFE.EMPRESAID = 12 ) OR ( EF_NFE.EMPRESAID = 13 ) )';
     end;

 try
  ExecDynamicProvider(-1,iSQL,cds );
  cds.First;
 except on
  E : Exception do
  raise Exception.create(E.Message);
 end;
end;

procedure TfrmIntegracao.GeraTipo8882(var cds: TClientDataSet; GrupoCFOP,
  Qualificacao: String);
var iSQL : String;
begin
 cds := nil;

 if Qualificacao = '00' then
    begin
     iSQL := 'SELECT'+
             '  EF_NATUREZAOP.CFOP,'+
             '  SUM( EF_NFS.VLRTOTALNOTA ) VLRTOTALNOTA ,'+
             '  SUM( EF_NFS.VLRTOTALBASEICMS ) VLRTOTALBASEICMS,'+
             '  SUM( EF_NFS.VLRTOTALICMS )  VLRTOTALICMS,'+
             '  SUM( EF_NFS.VLRTOTALISENTASICMS )  VLRTOTALISENTASICMS,'+
             '  SUM( EF_NFS.VLRTOTALOUTRASICMS ) VLRTOTALOUTRASICMS,'+
             '  SUM( EF_NFS.VLRTOTALBASEIPI ) VLRTOTALBASEIPI,'+
             '  SUM( EF_NFS.VLRTOTALIPI ) VLRTOTALIPI,'+
             '  SUM( EF_NFS.VLRTOTALISENTASIPI ) VLRTOTALISENTASIPI,'+
             '  SUM( EF_NFS.VLRTOTALOUTRASIPI ) VLRTOTALOUTRASIPI'+
             '  FROM'+
             '  EF_NFS,'+
             '  EF_NATUREZAOP'+
             ' WHERE'+
             '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
             '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
             '  AND EF_NFS.DATAEMISSAOID >= '+QuotedStr( MaskDtINIConvIcms.Text )+
             '  AND EF_NFS.DATAEMISSAOID <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
             '  AND EF_NFS.CANCELADA = 0'+
             '  AND EF_NATUREZAOP.CFOP <> 1353 '+
             '  AND EF_NATUREZAOP.CFOP <> 1360 '+
             '  AND EF_NATUREZAOP.CFOP <> 2353 '+
             '  AND SUBSTR( EF_NATUREZAOP.CFOP,1,1) = '+ QuotedStr(GrupoCFOP)+
             '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
             '  AND EF_NFS.VLRTOTALPRODUTO > 0';

             if ( CheckEmp12e13.Checked ) then
                iSQL := iSQL + ' AND ( ( EF_NFS.EMPRESAID = 12 ) OR ( EF_NFS.EMPRESAID = 13 ) )';

             iSQL := iSQL + ' GROUP BY EF_NATUREZAOP.CFOP'+
                            ' ORDER BY EF_NATUREZAOP.CFOP';
    end
   else
     begin
      iSQL := 'SELECT'+
              '  SUM( EF_NFS.VLRTOTALNOTA ) VLRTOTALNOTA ,'+
              '  SUM( EF_NFS.VLRTOTALBASEICMS ) VLRTOTALBASEICMS,'+
              '  SUM( EF_NFS.VLRTOTALICMS )  VLRTOTALICMS,'+
              '  SUM( EF_NFS.VLRTOTALISENTASICMS )  VLRTOTALISENTASICMS,'+
              '  SUM( EF_NFS.VLRTOTALOUTRASICMS ) VLRTOTALOUTRASICMS,'+
              '  SUM( EF_NFS.VLRTOTALBASEIPI ) VLRTOTALBASEIPI,'+
              '  SUM( EF_NFS.VLRTOTALIPI ) VLRTOTALIPI,'+
              '  SUM( EF_NFS.VLRTOTALISENTASIPI ) VLRTOTALISENTASIPI,'+
              '  SUM( EF_NFS.VLRTOTALOUTRASIPI ) VLRTOTALOUTRASIPI'+
              '  FROM'+
              '  EF_NFS,'+
              '  EF_NATUREZAOP'+
              ' WHERE'+
              '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
              '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
              '  AND EF_NFS.DATAEMISSAOID >= '+QuotedStr( MaskDtINIConvIcms.Text )+
              '  AND EF_NFS.DATAEMISSAOID <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
              '  AND EF_NFS.CANCELADA = 0'+
              '  AND EF_NATUREZAOP.CFOP <> 1353 '+
              '  AND EF_NATUREZAOP.CFOP <> 1360 '+
              '  AND EF_NATUREZAOP.CFOP <> 2353 '+
              '  AND SUBSTR( EF_NATUREZAOP.CFOP,1,1) = '+ QuotedStr(GrupoCFOP)+
              '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
              '  AND EF_NFS.VLRTOTALPRODUTO > 0';

              if ( CheckEmp12e13.Checked ) then
                 iSQL := iSQL + ' AND ( ( EF_NFS.EMPRESAID = 12 ) OR ( EF_NFS.EMPRESAID = 13 ) )';
     end;

 try
  ExecDynamicProvider(-1,iSQL,cds );
  cds.First;
 except on
  E : Exception do
  raise Exception.create(E.Message);
 end;
end;

procedure TfrmIntegracao.GeraTotalTipo8882(var cds: TClientDataSet);
var iSQL : String;
begin
 cds := nil;
 iSQL := 'SELECT'+
         '  SUM( EF_NFS.VLRTOTALNOTA ) VLRTOTALNOTA ,'+
         '  SUM( EF_NFS.VLRTOTALBASEICMS ) VLRTOTALBASEICMS,'+
         '  SUM( EF_NFS.VLRTOTALICMS )  VLRTOTALICMS,'+
         '  SUM( EF_NFS.VLRTOTALISENTASICMS )  VLRTOTALISENTASICMS,'+
         '  SUM( EF_NFS.VLRTOTALOUTRASICMS ) VLRTOTALOUTRASICMS,'+
         '  SUM( EF_NFS.VLRTOTALBASEIPI ) VLRTOTALBASEIPI,'+
         '  SUM( EF_NFS.VLRTOTALIPI ) VLRTOTALIPI,'+
         '  SUM( EF_NFS.VLRTOTALISENTASIPI ) VLRTOTALISENTASIPI,'+
         '  SUM( EF_NFS.VLRTOTALOUTRASIPI ) VLRTOTALOUTRASIPI'+
         '  FROM'+
         '  EF_NFS,'+
         '  EF_NATUREZAOP'+
         ' WHERE'+
         '  EF_NATUREZAOP.NATUREZAOPID = EF_NFS.NATUREZAOPID'+
         '  AND EF_NATUREZAOP.DOCINTERNO = 0'+
         '  AND EF_NFS.DATAEMISSAOID >= '+QuotedStr( MaskDtINIConvIcms.Text )+
         '  AND EF_NFS.DATAEMISSAOID <= '+QuotedStr( MaskDtFIMConvIcms.Text )+
         '  AND EF_NFS.CANCELADA = 0'+
         '  AND EF_NATUREZAOP.CFOP <> 1353 '+
         '  AND EF_NATUREZAOP.CFOP <> 1360 '+
         '  AND EF_NATUREZAOP.CFOP <> 2353 '+
         '  AND SUBSTR( EF_NATUREZAOP.CFOP,1,1) IN ( '+ QuotedStr('5')+','+ QuotedStr('6')+','+ QuotedStr('7')+ ') '+
         '  AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
         '  AND EF_NFS.VLRTOTALPRODUTO > 0';

         if ( CheckEmp12e13.Checked ) then
            iSQL := iSQL + ' AND ( ( EF_NFS.EMPRESAID = 12 ) OR ( EF_NFS.EMPRESAID = 13 ) )';
 try
  ExecDynamicProvider(-1,iSQL,cds );
  cds.First;
 except on
  E : Exception do
  raise Exception.create(E.Message);
 end;
end;

function TfrmIntegracao.CalcVATipo881500: Real;
var iSQL : String;
    cds  : TClientDataSet;
begin
 Result := 0;
 cds  := nil;
 iSQL := ' SELECT '+
         '  ( EF_NOTASAIDA.VLRTOTALNOTA - EF_NOTAENTRADA.VLRTOTALNOTA) VLRADICIONADO'+
         ' FROM'+
         ' (SELECT'+
         '   SUM(EF_NFS.VLRTOTALNOTA) VLRTOTALNOTA'+
         '   FROM'+
         '   EF_NFS,'+
         '   EF_NATUREZAOP'+
         '  WHERE'+
         '   EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID'+
         '   AND EF_NATUREZAOP.DOCINTERNO = 0'+
         '   AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr(MaskDtINIConvIcms.Text)+
         '   AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr(MaskDtFIMConvIcms.Text)+
         '   AND EF_NFS.CANCELADA = 0'+
         '   AND EF_NFS.VLRTOTALPRODUTO > 0'+
         '   AND EF_NATUREZAOP.CFOP <> 2353'+
         '   AND EF_NATUREZAOP.CFOP <> 1360 '+
         '   AND EF_NATUREZAOP.CFOP <> 1353'+
         '   AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
         '   AND EF_NATUREZAOP.CFOP NOT IN (5111,6111,5112,6112,5113,6113,5114,6114,5122,'+
         '                                  6122,5123,6123,5412,6412,5551,6551,7551,5552,'+
         '                                  6552,5553,6553,7553,5554,6554,5555,6555,5601,'+
         '                                  5602,5603,6603,5919,6919,5922,6922,5923,6923,'+
         '                                  5924,6924,5929,6929,5932,6932)'+
         '   AND ( (EF_NFS.EMPRESAID = 12) OR'+
         '         (EF_NFS.EMPRESAID = 13) ) )EF_NOTASAIDA,'+
         '  (SELECT'+
         '    SUM(EF_NFE.VLRTOTALNOTA) VLRTOTALNOTA'+
         '    FROM'+
         '    EF_NFE,'+
         '    EF_NATUREZAOP'+
         '   WHERE'+
         '    EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFE.NATUREZAOPID'+
         '    AND EF_NATUREZAOP.DOCINTERNO = 0'+
         '    AND EF_NFE.DATAENTRADA >= '+ QuotedStr(MaskDtINIConvIcms.Text )+
         '    AND EF_NFE.DATAENTRADA <= '+ QuotedStr(MaskDtFIMConvIcms.Text)+
         '    AND EF_NFE.DATAENTRADA IS NOT NULL'+
         '    AND EF_NFE.CANCELADA = 0'+
         '    AND EF_NATUREZAOP.CFOP <> 1353'+
         '    AND EF_NATUREZAOP.CFOP <> 1360'+         
         '    AND EF_NATUREZAOP.CFOP <> 2353'+
         '    AND EF_NATUREZAOP.TRANSFCONSUMO = 0'+
         '    AND EF_NATUREZAOP.CFOP NOT IN (1111,2111,1113,2113,1406,2406,1551,2551,3551,'+
         '                                   1552,2552,1553,2553,3553,1554,2554,1555,2555,'+
         '                                   1601,1602,1603,2603,1604,1919,2919,1923,2923,'+
         '                                   1924,2924)'+
         '    AND ( (EF_NFE.EMPRESAID = 12) OR'+
         '          (EF_NFE.EMPRESAID = 13) ) ) EF_NOTAENTRADA  ';

  try
   ExecDynamicProvider(-1,iSQL,cds);
   if not cds.IsEmpty then
      Result := cds.FieldByName('VLRADICIONADO').AsFloat;
  finally
   FreeAndNil(cds);
  end;
end;

procedure TfrmIntegracao.CheckUF_SPClick(Sender: TObject);
begin
 if CheckUF_SP.Checked then
    begin
     CheckEmp12e13.Checked := False;
     GroupBox7.Visible := False;
    end; 
   
end;

procedure TfrmIntegracao.CheckEmp12e13Click(Sender: TObject);
begin
 if CheckEmp12e13.Checked then
    begin
     CheckUF_SP.Checked := False;
     GroupBox7.Visible := True;
    end;
end;

procedure TfrmIntegracao.Tipo74;
var DataInventario,iSQL : String;
    cdsInventario : TClientDataSet;
    ProdutoId : Integer;
    F  : TextFile;
begin
 Total74 := 0;
 {*** Tipo 74 ***}
 DataInventario := '31/12/'+IntToStr( YearOf( StrToDate( MaskDtINIConvIcms.Text ) ) -1 );
 cdsInventario := nil;
 iSQL :=  'SELECT EF_PRODUTO.EMPRESAID,'+
          '       EF_PRODUTO.PRODUTOID,'+
          '       EF_PRODUTO.DESCRICAOPORTUGUES,'+
          '       EF_PRODUTO.SUBGRUPOID,'+
          '       EF_SUBGRUPO.DESCRICAO,'+
          '       EF_PRODUTO.UNIDADEID,'+
          '       EF_PRODUTO.GRUPOID,'+
          '       EF_PRODUTO.NCMID,'+
          '       EF_PRODUTO.ALIQUOTAIPI,'+
          '       EF_PRODUTO.ORIGEM,'+
          '       EF_KDX_POSICAO.NUMDOCUMENTO,'+
          '       EF_KDX_POSICAO.DATAOCORRENCIA,'+
          '       EF_KDX_POSICAO.QUANTIDADESALDO,'+
          '       EF_KDX_POSICAO.VLRCUSTOMEDIO,'+
          '       EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL'+
          '  FROM EF_PRODUTO, EF_SUBGRUPO,'+
          '       (SELECT EMPRESAID,'+
          '               PRODUTOID,'+
          '               NUMDOCUMENTO,'+
          '               DATAOCORRENCIA,'+
          '               QUANTIDADESALDO,'+
          '               VLRCUSTOMEDIO,'+
          '               VLRCUSTOMEDIOTOTAL'+
          '          FROM EF_KARDEX'+
          '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID ) IN'+
          '               (SELECT EMPRESAID, PRODUTOID, MAX(DATAOCORRENCIA), MAX(KARDEXID)'+
          '                  FROM EF_KARDEX'+
          '                 WHERE DATAOCORRENCIA <= TO_DATE( '+ QuotedStr( DataInventario ) +','+ QuotedStr('DD/MM/YYYY')+ ')'+
          '                 GROUP BY EMPRESAID, PRODUTOID)'+
          '                 ORDER BY 1, 2 ) EF_KDX_POSICAO'+
          ' WHERE EF_PRODUTO.EMPRESAID = EF_KDX_POSICAO.EMPRESAID AND'+
          '       EF_PRODUTO.PRODUTOID = EF_KDX_POSICAO.PRODUTOID AND'+
          '       EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID(+) AND'+
          '       NVL( EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL, 0 ) > 0';

  if ( CheckEmp12e13.Checked = False ) then
      iSQL := iSQL +  ' AND  ( EF_PRODUTO.EMPRESAID = 1 ' +
                      '        OR EF_PRODUTO.EMPRESAID = 2 '+
                      '        OR EF_PRODUTO.EMPRESAID = 3 '+
                      '        OR EF_PRODUTO.EMPRESAID = 4 '+
                      '        OR EF_PRODUTO.EMPRESAID = 5 '+
                      '       )'
  else
      iSQL := iSQL + ' AND ( ( EF_PRODUTO.EMPRESAID = 12 ) )';

  iSQL := iSQL +  ' AND ( EF_PRODUTO.ORIGEM = '+ QuotedStr('N')+ ' OR '+
                  '       EF_PRODUTO.ORIGEM = '+ QuotedStr('I')+ ' OR '+
                  '       EF_PRODUTO.ORIGEM = '+ QuotedStr('B')+
                  '      ) ORDER BY EF_PRODUTO.NCMID ';
 try
  AtivaArquivo2( PathExport + 'PETP74.TXT','R');
  AssignFile( F, PathExport+'PETP75.TXT' );
  Append( F );
  ExecDynamicProvider( -1,iSQL,cdsInventario );

  cdsInventario.First;
  while not cdsInventario.Eof do
  begin
  {*** Tipo 74 ***}
   Inc( Total74 );
   Linha := '74';
   Linha := Linha + FormatDateTime('YYYYMMDD', StrToDate( DataInventario ) );

   if      ( cdsInventario.FieldByName('EMPRESAID').Value  = 12 ) then
           ProdutoId := cdsInventario.FieldByName('PRODUTOID').Value + ( 30000 * cdsInventario.FieldByName('EMPRESAID').Value )
   else if ( cdsInventario.FieldByName('EMPRESAID').Value  = 13 ) then
           ProdutoId := cdsInventario.FieldByName('PRODUTOID').Value + ( 40000 * cdsInventario.FieldByName('EMPRESAID').Value )
   else ProdutoId := cdsInventario.FieldByName('PRODUTOID').Value;

   Linha := Linha + AdicCaracter( IntToStr( ProdutoId ),' ',14 );
   Linha := Linha + NrOnly( FormatFloat('0000000000.000',cdsInventario.FieldByName('QUANTIDADESALDO').AsFloat ),'');
   Linha := Linha + NrOnly( FormatFloat('00000000000.00',( cdsInventario.FieldByName('QUANTIDADESALDO').AsFloat * cdsInventario.FieldByName('VLRCUSTOMEDIO').AsFloat ) ),'' );
   Linha := Linha + '1'; { Codigo de Posse dos Itens Iventariados 1,2,3,4 ou 5 }
   Linha := Linha + '00000000000000';
   Linha := Linha + '              '; { Inscr. Estadual }
   Linha := Linha + '  '; { UF }
   Linha := Linha + AdicCaracter(' ',' ',45,'E' );
   Linha := Linha + '1';
   Linha := Linha + NrOnly( FormatFloat('000000000000.00',cdsInventario.FieldByName('VLRCUSTOMEDIO').AsFloat ),'');
   Linha := Linha + '00000';
   Writeln(Arq, Linha );

   //Linha := Linha + '46563938000200'; { CNPJ; Se o campo Codigo de Posse for 1,4 ou 5 deve ser preenchido com zeros }
   // Linha := Linha + '18158002971906'; { Inscr. Estadual; Se o campo Codigo de Posse for 1,4 ou 5 deve ser preenchido com espaço }
   //Linha := Linha + 'PE'; { Unid. Federacao; Se o campo Codigo de Posse for 1,4 ou 5 deve ser preenchido com espaço }

  {*** Tipo 75 ***}
  if not cdsTipo75.FindKey([ProdutoId]) then
     begin
      cdsTipo75.InsertRecord( [ ProdutoId ] );

      Linha := '75';
      Linha := Linha + FormatDateTime(Mask_YYYYMMDD, StrToDate( MaskDtINIConvIcms.Text ) );
      Linha := Linha + FormatDateTime(Mask_YYYYMMDD, StrToDate( MaskDtFIMConvIcms.Text ) );
      Linha := Linha + AdicCaracter( IntToStr( ProdutoId ),' ',14 );
      Linha := Linha + AdicCaracter( Trim( cdsInventario.FieldByName('NCMID').Value),'0',8,'E' );
      Linha := Linha + AdicCaracter( Copy( cdsInventario.FieldByName('DESCRICAOPORTUGUES').Value, 1, 53 ),' ',53 );
      Linha := Linha + AdicCaracter( Trim( ConsisteInteiro( cdsInventario.FieldByName('UNIDADEID').AsString ) ),' ',6 );
      Linha := Linha + '000';
      Linha := Linha + NrOnly( FormatFloat('00.00', cdsInventario.FieldByName('ALIQUOTAIPI').AsCurrency ),'' );
      Linha := Linha + '0000';
      Linha := Linha + '0000';
      Linha := Linha + '            ';
      Linha := Linha + '              190001';
      WriteLn(F, Linha);

      cdsICMS.IndexFieldNames := 'ESTADO';
      cdsICMS.FindKey([Copy('PE',1, 2)]);
      cdsICMS.Edit;
      cdsICMS.FieldByName('TIPO_75').Value    := ConsisteValor( cdsICMS.FieldByName('TIPO_75').Value ) + 1;
      cdsICMS.FieldByName('TIPO_TOTAL').Value := ConsisteValor( cdsICMS.FieldByName('TIPO_TOTAL').Value ) + 1;
      cdsICMS.Post;
     end;
   cdsInventario.Next;
  end;

 finally
  CloseFile(Arq);
  CloseFile(F);
  FreeAndNil(cdsInventario);
 end;
end;

procedure TfrmIntegracao.GeraInventario;
var iSQL : String;
    cdsTotalInvetario : TClientDataSet;
    DataInventario    : String;
begin
 DataInventario := '31/12/'+IntToStr( YearOf( pCnnMain.AppServer.iServerDate )-1 );
 cdsTotalInvetario := nil;
 iSQL :=  'SELECT SUM( EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL ) VLRCUSTOMEDIOTOTAL,'+
          '  EF_PRODUTO.NCMID'+
          '  FROM EF_PRODUTO, EF_SUBGRUPO,'+
          '       (SELECT EMPRESAID,'+
          '               PRODUTOID,'+
          '               NUMDOCUMENTO,'+
          '               DATAOCORRENCIA,'+
          '               QUANTIDADESALDO,'+
          '               VLRCUSTOMEDIO,'+
          '               VLRCUSTOMEDIOTOTAL'+
          '          FROM EF_KARDEX'+
          '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID ) IN'+
          '               (SELECT EMPRESAID, PRODUTOID, MAX(DATAOCORRENCIA), MAX(KARDEXID)'+
          '                  FROM EF_KARDEX'+
          '                 WHERE DATAOCORRENCIA <= TO_DATE( '+ QuotedStr( DataInventario ) +','+ QuotedStr('DD/MM/YYYY')+ ')'+
          '                 GROUP BY EMPRESAID, PRODUTOID)'+
          '                 ORDER BY 1, 2 ) EF_KDX_POSICAO'+
          ' WHERE EF_PRODUTO.EMPRESAID = EF_KDX_POSICAO.EMPRESAID AND'+
          '       EF_PRODUTO.PRODUTOID = EF_KDX_POSICAO.PRODUTOID AND'+
          '       EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID(+) AND'+
          '       NVL( EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL, 0 ) > 0';

 if ( CheckEmp12e13.Checked = False ) then
     iSQL := iSQL +  ' AND  ( EF_PRODUTO.EMPRESAID = 1 ' +
                     '        OR EF_PRODUTO.EMPRESAID = 2 '+
                     '        OR EF_PRODUTO.EMPRESAID = 3 '+
                     '        OR EF_PRODUTO.EMPRESAID = 4 '+
                     '        OR EF_PRODUTO.EMPRESAID = 5 '+
                     '       )'
 else
     iSQL := iSQL + ' AND ( ( EF_PRODUTO.EMPRESAID = 12 ) )';

 iSQL := iSQL +  ' AND ( EF_PRODUTO.ORIGEM = '+ QuotedStr('N')+ ' OR '+
                 '       EF_PRODUTO.ORIGEM = '+ QuotedStr('I')+ ' OR '+
                 '       EF_PRODUTO.ORIGEM = '+ QuotedStr('B')+
                 '     )';

 iSQL := iSQL +  'GROUP BY EF_PRODUTO.NCMID';
 try
  ExecDynamicProvider(-1,iSQL,cdsTotalInvetario );

  cdsTotalInvetario.First;
  while not cdsTotalInvetario.Eof do
  begin
   Inc( TotalItem );
   {Registro Tipo 88 - 74 Detalhe 00}
   Linha := '88';
   Linha := Linha + FormatFloat( '000000000', TotalItem ); {Sequencial}
   Linha := Linha + '74';
   Linha := Linha + '00';
   Linha := Linha + '0'; { Codigo de Posse =  codigo igual ao preenchido no registro 74 }
   Linha := Linha + AdicCaracter( cdsTotalInvetario.FieldByName('NCMID').AsString,'0',8,'E' ); { NBM }
   Linha := Linha + '1'; { Código de Identificação }
   Linha := Linha + '2'; { Qualificação = 2 Subtotal por NBM }
   Linha := Linha + NrOnly( FormatFloat('00000000000.00',cdsTotalInvetario.FieldByName('VLRCUSTOMEDIOTOTAL').AsFloat),'' ); { Valor por Situação }
   Writeln(Arq,Linha); 
   cdsTotalInvetario.Next;
  end;

 finally
  FreeAndNil( cdsTotalInvetario );
 end;
end;

procedure TfrmIntegracao.BitBtn3Click(Sender: TObject);
begin
 ExportEntidade( mktExpEntFim.Text );
end;

procedure TfrmIntegracao.BitBtn4Click(Sender: TObject);
var iSQL : String;
    cds  : TClientDataSet;
begin
 if chkNotas.Checked then
    begin
     iSQL := 'SELECT EF_NFS.EMPRESAID,'+
             '       EF_NFS.NFSID,'+
             '       EF_NFS.DATAEMISSAOID'+
             '  FROM EF_NFS'+
             ' WHERE EF_NFS.DATAEMISSAOID >= ''18/10/2005'''+
             '       AND EF_NFS.EMPRESAID = 1'+
             '       AND ( EF_NFS.EMPRESAID,'+
             '       EF_NFS.NFSID,'+
             '       EF_NFS.DATAEMISSAOID ) IN ( SELECT EF_NFSITEM.EMPRESAID,'+
             '                    EF_NFSITEM.NFSID,'+
             '                    EF_NFSITEM.DATAEMISSAOID'+
             '               FROM EF_NFSITEM'+
             '              WHERE EF_NFSITEM.DATAEMISSAOID >= ''18/10/2005'''+
             '                AND EF_NFSITEM.EMPRESAID = 1'+
             '           )     ';
     try
      ExecDynamicProvider(-1,iSQL,cds);

      cds.First;
      while not cds.eof do
      begin
       ExportSaidas( cds.Fields[0].AsString, cds.Fields[1].AsString , cds.Fields[2].AsString );
       cds.Next;
      end;
     finally
      FreeAndNil( cds );
     end;
    end
  else
    ExportSaidas( mktExpEntIni.Text , mktExpEntFim.Text , mktExpEntDtemissao.Text );
end;

procedure TfrmIntegracao.BitBtn5Click(Sender: TObject);
var SisComex : Integer;
begin
 SisComex := cmbSiscomex.ItemIndex+1;

 if SisComex > 1 then
    SisComex := SisComex + 1;

 GeraRiex( StrToInt( mktEmp.text ),StrToInt( mktNfs.text ), mktDataEmissao.Text, IntToStr( SisComex ), mktRegistro.Text, CmbTipo.Text, StrToInt( mktAdicao.Text )   );
end;

procedure TfrmIntegracao.BitBtn7Click(Sender: TObject);
begin
 ExportItem( StrToInt( mktExpEntIni.text ), StrToInt( mktExpEntFim.Text ),'P' );
end;

procedure TfrmIntegracao.BitBtn8Click(Sender: TObject);
begin
 ExportItem( StrToInt( mktExpEntIni.text ), StrToInt( mktExpEntFim.Text ),'S' );
end;

procedure TfrmIntegracao.BitBtn9Click(Sender: TObject);
begin
  if not cdsNF.IsEmpty then
    begin
     frmExportar := TfrmExportar.Create(nil);
     frmExportar.DataSource := dsNF;
     frmExportar.Show;
    end
 else
    MessageDlg('Não há dados à serem Exportados!',mtWarning, [mbok],0 );
end;

procedure TfrmIntegracao.NFSeServBarueri;
var  Processados, TotalReg : Integer;
     NomeArq : String;
begin
 // SITE NOTA ELETRÔNICA
 // http://www.barueri.sp.gov.br/e-iss/
 // http://testeeiss.barueri.sp.gov.br/nfe/
 // LOGIN -> 07719195817  SENHA->TMBLTDA

 dmEF.cdsNfEmail.Open;

 Processados := 1;

 //  Carregando dados da Nota de Serviços
 while ListBox6.Items.Count >= Processados do
 begin
  cdsAuxNfsPesquisa.FindKey([ StrToInt(ListBox6.Items.Strings[Processados-1]),     {No. Nota}
                     StrToDate(ListBox5.Items.Strings[Processados-1]) ]); {Dt. Emiss}
  cdsAuxNfsItem.Filter := 'EMPRESAID = '+ cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsString +
                          ' AND NFSID = '+ cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +
                          ' AND DATAEMISSAOID = ' + QuotedStr( cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString );
  cdsAuxNfsItem.Filtered := True;

  cdsAuxNfsParcela.Filter := 'EMPRESAID = '+ cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsString +
                          ' AND NFSID = '+ cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +
                          ' AND DATAEMISSAOID = ' + QuotedStr( cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString );
  cdsAuxNfsParcela.Filtered := True;

  if Pos( '@', cdsAuxNfsPesquisa.FieldByName('EMAILNFE').AsString ) = 0 then
     raise Exception.Create('NFS :' +  cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +  ', Cliente : ' + cdsAuxNfsPesquisa.FieldByName('ENTIDADEID').AsString + ', e-mail inválido ou não cadastrado' );

  DirGeracao  := ExtractFilePath( Application.ExeName ) + '\Nfe-Barueri\';

  NomeArq := 'RPS' + StrZero( cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsInteger, 2, 0 ) +
             StrZero( cdsAuxNfsPesquisa.FieldByName('NFSID').AsInteger, 8, 0 ) +
             '-' + FormatDateTime( 'YYYYMMDD', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ) + '.TXT' ;

  AtivaArquivo( NomeArq );

  ExportNFeBarueriTipo1;

  cdsAuxNfsItem.First;

  ExportNFeBarueriTipo2;

  TotalReg := 3;

  if cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETIRPF').AsCurrency > 0 then
     begin
      Inc( TotalReg );
      ExportNFeBarueriTipo3( '01', cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETIRPF').AsCurrency );
     end;

  if cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETPIS').AsCurrency > 0 then
     begin
      Inc( TotalReg );
      ExportNFeBarueriTipo3( '02', cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETPIS').AsCurrency );
     end;

  if cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCOFINS').AsCurrency > 0 then
     begin
      Inc( TotalReg );
      ExportNFeBarueriTipo3( '03', cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCOFINS').AsCurrency );
     end;

  if cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCSLL').AsCurrency > 0 then
     begin
      Inc( TotalReg );
      ExportNFeBarueriTipo3( '04', cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCSLL').AsCurrency );
     end;

  ExportNFeBarueriTipo9( TotalReg );

  cdsAuxNfsItem.Filter      := '';
  cdsAuxNfsItem.Filtered    := False;
  cdsAuxNfsParcela.Filter   := '';
  cdsAuxNfsParcela.Filtered := False;

  cdsAuxNfsPesquisa.Next;
  Inc( Processados );

  FinalizaArquivo;
 end;

 dmEF.cdsNfEmail.Close;

 if Processados > 1 then
    Messagedlg('Arquivo Gerado com sucesso ',mtConfirmation,[mbok],0)
 else
    Messagedlg('Nenhuma Nota foi Gerada !',mtInformation,[mbOK],0); 
end;

procedure TfrmIntegracao.NFSeServSalvador;
var Processados : Integer;
    VlrLiqNFSe : Currency;
    NomeArq, DescricaoServ, Dt : String;
    ARoot    : TNativeXml;
    ANfs, AListaRps, ARps, AInfRps, AIndRps, AServico, AValores,
    APrestador, ATomador, AIndTom, ACpfCnpj, AEndereco : TXmlNode;
begin
 dmEF.cdsNfEmail.Open;

 Processados := 1;

 //  Carregando dados da Nota de Serviços
 while ListBox6.Items.Count >= Processados do
 begin
  cdsAuxNfsPesquisa.FindKey([ StrToInt(ListBox6.Items.Strings[Processados-1]),     {No. Nota}
                     StrToDate(ListBox5.Items.Strings[Processados-1]) ]); {Dt. Emiss}
  cdsAuxNfsItem.Filter    := 'EMPRESAID = '+ cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsString +
                             ' AND NFSID = '+ cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +
                             ' AND DATAEMISSAOID = ' + QuotedStr( cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString );
  cdsAuxNfsItem.Filtered  := True;

  cdsAuxNfsParcela.Filter := 'EMPRESAID = '+ cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsString +
                             ' AND NFSID = '+ cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +
                             ' AND DATAEMISSAOID = ' + QuotedStr( cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString );
  cdsAuxNfsParcela.Filtered := True;

  if Pos( '@', cdsAuxNfsPesquisa.FieldByName('EMAILNFE').AsString ) = 0 then
     raise Exception.Create('NFS :' +  cdsAuxNfsPesquisa.FieldByName('NFSID').AsString +  ', Cliente : ' + cdsAuxNfsPesquisa.FieldByName('ENTIDADEID').AsString + ', e-mail inválido ou não cadastrado' );

  DirGeracao  := ExtractFilePath( Application.ExeName ) + '\Nfe-Salvador\';

  NomeArq     := 'RPS' + StrZero( cdsAuxNfsPesquisa.FieldByName('EMPRESAID').AsInteger, 2, 0 ) +
                  StrZero( cdsAuxNfsPesquisa.FieldByName('NFSID').AsInteger, 8, 0 ) +
                  '-' + FormatDateTime( 'YYYYMMDD', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ) + '.XML' ;

  ARoot := TNativeXml.CreateName('EnviarLoteRpsEnvio');
  ARoot.Utf8Encoded := True;
  ARoot.ExternalEncoding := seUTF8;
  ARoot.XmlFormat := xfReadable;
  ARoot.EncodingString := 'UTF-8';

  ARoot.Root.AttributeAdd('xmlns:xsi', 'http://www.w3.org/2001/XMLSchema-instance');
  ARoot.Root.AttributeAdd('xmlns:xsd', 'http://www.w3.org/2001/XMLSchema');
  ARoot.Root.AttributeAdd('xmlns', 'http:/www.abrasf.org.br/nfse.xsd');

  ANfs := ARoot.Root.NodeNew('LoteRps');
  ANfs.AttributeAdd('id', '002' );
  ANfs.WriteInteger('NumeroLote', 2 );
  ANfs.WriteString('Cnpj',cdsAuxNfsPesquisa.FieldByName('CPF_CNPJ').AsString );

  ANfs.WriteString('InscricaoMunicipal', TransfNum( cdsAuxNfsPesquisa.FieldByName('INSCRMUNICIPAL').AsString ) );
  ANfs.WriteInteger('QuantidadeRps', 1 );

  AListaRps := ANfs.NodeNew( 'ListaRps' );
  ARps      := AListaRps.NodeNew('Rps');
  AInfRps   := ARps.NodeNew('InfRps');
  AInfRps.AttributeAdd('id', '001' );

  // Verificar CGLSOFT
  AIndRps   := AInfRps.NodeNew('IdentificacaoRps');
  AIndRps.WriteInteger('Numero',cdsAuxNfsPesquisa.FieldByName('NFSID').AsInteger );
  AIndRps.WriteInteger('Serie',  1 ); // Verificar
  AIndRps.WriteInteger('Tipo', 1 );

  Dt := FormatDateTime( 'yyyy-mm-dd hh:nn:ss', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime );
  Dt := Copy( Dt, 1, 10) + 'T' + copy( Dt,12, 8 );

  AInfRps.WriteString('DataEmissao', Dt    );
  AInfRps.WriteInteger('NaturezaOperacao', 1 );
  AInfRps.WriteInteger('RegimeEspecialTributacao', 1 ); // Verificar com o James
  AInfRps.WriteInteger('OptanteSimplesNacional', 1 );
  AInfRps.WriteInteger('IncentivadorCultural', 2);
  AInfRps.WriteInteger('Status', 1);

  VlrLiqNFSe := ( cdsAuxNfsPesquisa.FieldByName('VLRTOTALSERVICO').AsCurrency -
                  cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETPIS').AsCurrency -
                  cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCOFINS').AsCurrency -
                  cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETIRPJ').AsCurrency -
                  cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETIRPF').AsCurrency -
                  cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCSLL').AsCurrency );

  AServico := AInfRps.NodeNew('Servico');
  AValores := AServico.NodeNew('Valores');
  AValores.WriteString( 'ValorServicos',  ReplaceStr( cdsAuxNfsPesquisa.FieldByName('VLRTOTALSERVICO').AsString, ',','.' ) );
  AValores.WriteFloat( 'ValorDeducoes', 0.00 );
  AValores.WriteString( 'ValorPis', ReplaceStr( cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETPIS').AsString, ',','.' ) );
  AValores.WriteString( 'ValorCofins', ReplaceStr( cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCOFINS').AsString, ',','.' ) );
  AValores.WriteString( 'ValorIr', ReplaceStr( FloatToStr( cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETIRPJ').AsCurrency + cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETIRPF').AsCurrency ), ',','.' ) );
  AValores.WriteString( 'ValorCsll', ReplaceStr( cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETCSLL').AsString, ',','.' ) );
  AValores.WriteFloat( 'IssRetido', 2 );
  AValores.WriteString( 'ValorIss', ReplaceStr( cdsAuxNfsPesquisa.FieldByName('VLRTOTALISS').AsString, ',','.' ) );
  AValores.WriteFloat( 'ValorIssRetido', 0 );
  AValores.WriteFloat( 'OutrasRetencoes', 0 );
  AValores.WriteFloat( 'BaseCalculo', 0 );
  AValores.WriteFloat( 'Aliquota', 0 );
  AValores.WriteString( 'ValorLiquidoNfse', ReplaceStr( FormatFloat( Mask_PtFlut, VlrLiqNFSe ), ',','.' ) );
  AValores.WriteFloat( 'DescontoIncondicionado', 0 );
  AValores.WriteFloat( 'DescontoCondicionado', 0 );

  // Gerar descrições e marcar e-mail para serviços
  cdsAuxNfsItem.First;
  DescricaoServ := ExportNFeSalvadorDescricao;

  AServico.WriteString( 'ItemListaServico', cdsAuxNfsItem.FieldByName('IMPOSTOSERVQLDNATID').AsString );
  AServico.WriteString( 'CodigoCnae', '8299799' );
  AServico.WriteFloat( 'CodigoTributacaoMunicipio', 0 );
  AServico.WriteString( 'Discriminacao', DescricaoServ );
  AServico.WriteString( 'CodigoMunicipio', ProcurarMunicipio(  cdsAuxNfsPesquisa.FieldByName('CIDADE').AsString, cdsAuxNfsPesquisa.FieldByName('SIGLAUFID').AsString  ) );

  APrestador := AInfRps.NodeNew('Prestador');
  APrestador.WriteString('Cnpj',cdsAuxNfsPesquisa.FieldByName('CPF_CNPJ').AsString );
  APrestador.WriteString('InscricaoMunicipal', TransfNum( cdsAuxNfsPesquisa.FieldByName('INSCRMUNICIPAL').AsString ) );

  ATomador := AInfRps.NodeNew('Tomador');
  AIndTom  := ATomador.NodeNew('IdentificacaoTomador');
  ACpfCnpj := AIndTom.NodeNew('CpfCnpj');
  ACpfCnpj.WriteString('Cnpj',cdsAuxNfsPesquisa.FieldByName('CPFCNPJ_TOMADOR').AsString );

  ATomador.WriteString('RazaoSocial', cdsAuxNfsPesquisa.FieldByName('NOME').AsString );

  AEndereco := ATomador.NodeNew('Endereco');
  AEndereco.WriteString( 'Endereco', cdsAuxNfsPesquisa.FieldByName('ENDERECO').AsString );
  AEndereco.WriteString( 'Numero', cdsAuxNfsPesquisa.FieldByName('NUMERO').AsString );

  if not cdsAuxNfsPesquisa.FieldByName('COMPLEMENTO').IsNull then
     AEndereco.WriteString( 'Complemento', cdsAuxNfsPesquisa.FieldByName('COMPLEMENTO').AsString  );

  AEndereco.WriteString( 'Bairro', cdsAuxNfsPesquisa.FieldByName('BAIRRO').AsString );
  AEndereco.WriteString( 'CodigoMunicipio',  ProcurarMunicipio( cdsAuxNfsPesquisa.FieldByName('CIDADE').AsString, cdsAuxNfsPesquisa.FieldByName('SIGLAUFID').AsString ) );
  AEndereco.WriteString( 'Uf', cdsAuxNfsPesquisa.FieldByName('SIGLAUFID').AsString );
  AEndereco.WriteString( 'Cep', FormatFloat( '00000000;1;',cdsAuxNfsPesquisa.FieldByName( 'CEPID' ).AsInteger ) );

  cdsAuxNfsItem.Filter      := '';
  cdsAuxNfsItem.Filtered    := False;
  cdsAuxNfsParcela.Filter   := '';
  cdsAuxNfsParcela.Filtered := False;

  cdsAuxNfsPesquisa.Next;
  Inc( Processados );

  ARoot.SaveToFile(  DirGeracao + NomeArq );
 end;

 dmEF.cdsNfEmail.Close;

 if Processados > 1 then
    Messagedlg('Arquivo Gerado com sucesso ',mtConfirmation,[mbok],0)
 else
    Messagedlg('Nenhuma Nota foi Gerada !',mtInformation,[mbOK],0);
end;

procedure TfrmIntegracao.btnNFeBarueriClick(Sender: TObject);
begin
 case rgrpNfSeServicos.ItemIndex of
 0 : NFSeServBarueri;
 1 : NFSeServSalvador;
 end;
end;

procedure TfrmIntegracao.ExportNFeBarueriTipo1;
begin
 Write( Arq, '1');
 Write( Arq, TransfNum( cdsAuxNfsPesquisa.FieldByName('INSCRMUNICIPAL').AsString ) );
 Write( Arq, 'PMB002');
 Writeln( Arq, StrZero( cdsAuxNfsPesquisa.FieldByName('NFSID').AsInteger, 11, 0 ) );
end;

procedure TfrmIntegracao.ExportNFeBarueriTipo2;
var eMail, Descr, DescrRet, Venc, Body : String;
    i, x : Integer;
begin
 Write( Arq, '2');
 Write( Arq, AdicCaracter( 'RPS', ' ', 5 ) );
 Write( Arq, AdicCaracter( '1', ' ', 4 ) ) ;
 Write( Arq, '     ' );
 Write( Arq, StrZero( cdsAuxNfsPesquisa.FieldByName('NFSID').AsInteger, 10, 0 ) );
 Write( Arq, FormatDateTime( 'YYYYYMMDD', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ) );
 Write( Arq, FormatDateTime( 'hhnnss', cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime ) );
 Write( Arq, 'E' );
 Write( Arq, AdicCaracter( '', ' ', 2 ) ) ;
 Write( Arq, AdicCaracter( '', ' ', 7 ) ) ;
 Write( Arq, AdicCaracter( '', '0', 5 ) ) ;
 Write( Arq, AdicCaracter( '', ' ', 8 ) ) ;
 Write( Arq, AdicCaracter( '', ' ', 180 ) ) ;
 Write( Arq, StrZero( cdsAuxNfsItem.FieldByName('SERVICOPRESTADOID').AsInteger, 9, 0 ) ); // Codigo tabela de serviços
 Write( Arq, cdsAuxNfsPesquisa.FieldByName('LOCALPREST').AsInteger );
 Write( Arq, '2' );
 Write( Arq, AdicCaracter( ' ', ' ', 75 ) );
 Write( Arq, AdicCaracter( ' ', ' ', 9 ) );
 Write( Arq, AdicCaracter( ' ', ' ', 30 ) );
 Write( Arq, AdicCaracter( ' ', ' ', 40 ) );
 Write( Arq, AdicCaracter( ' ', ' ', 40 ) );
 Write( Arq, AdicCaracter( ' ', ' ', 2 ) );
 Write( Arq, AdicCaracter( ' ', ' ', 8 ) );
 Write( Arq, StrZero( 1, 6, 0 ) );
 Write( Arq, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfsPesquisa.FieldByName('VLRTOTALSERVICO').Value ) ) ), '' ) , '0', 15,'E' ) );
 Write( Arq, '     ' );
 Write( Arq, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETENCAO').Value ) ) ), '' ) , '0', 15,'E' ) );
 Write( Arq, cdsAuxNfsPesquisa.FieldByName( 'TOMADORESTR' ).AsInteger );
 Write( Arq, cdsAuxNfsPesquisa.FieldByName( 'BARUERIPAISESID' ).AsString ); // Código do pais
 Write( Arq, cdsAuxNfsPesquisa.FieldByName( 'TOMADORESTR' ).AsInteger );
 Write( Arq, cdsAuxNfsPesquisa.FieldByName( 'IND_FISJUR' ).AsInteger );
 Write( Arq, StrZero(  cdsAuxNfsPesquisa.FieldByName( 'CPFCNPJ_TOMADOR' ).AsCurrency,  14, 0 ) );
 Write( Arq, AdicCaracter( Copy( cdsAuxNfsPesquisa.FieldByName( 'NOME' ).AsString, 1, 60 ), ' ', 60 ) );
 Write( Arq, AdicCaracter( cdsAuxNfsPesquisa.FieldByName('ENDERECO').AsString, ' ', 75 ) );
 Write( Arq, AdicCaracter( cdsAuxNfsPesquisa.FieldByName('NUMERO').AsString, ' ', 9 ) );
 Write( Arq, AdicCaracter( cdsAuxNfsPesquisa.FieldByName('COMPLEMENTO').AsString, ' ', 30 ) );
 Write( Arq, AdicCaracter( cdsAuxNfsPesquisa.FieldByName('BAIRRO').AsString, ' ', 40 ) );
 Write( Arq, AdicCaracter( cdsAuxNfsPesquisa.FieldByName('CIDADE').AsString, ' ', 40 ) );
 Write( Arq, AdicCaracter( cdsAuxNfsPesquisa.FieldByName('SIGLAUFID').AsString, ' ', 2 ) );
 Write( Arq, FormatFloat( '00000000;1;',cdsAuxNfsPesquisa.FieldByName( 'CEPID' ).AsInteger ) );

 eMail := Copy ( ReplaceStr( cdsAuxNfsPesquisa.FieldByName( 'EMAILNFE' ).AsString, ';','|' ), 1, 152 );

 Write( Arq, AdicCaracter( eMail, ' ', 152 ) );
 Write( Arq, StrZero( cdsAuxNfsPesquisa.FieldByName('NFSID').AsInteger, 6, 0 ) ); // Numero fatura
 Write( Arq, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfsPesquisa.FieldByName('VLRTOTALSERVICO').Value ) ) ), '' ) , '0', 15,'E' ) );
 Write( Arq, AdicCaracter( Copy( cdsAuxNfsPesquisa.FieldByName('DESCRICAOCONDPAGTO').AsString,1,15 ), ' ', 15 ) ); // Forma de pagameno ( Qdo Inf. Número da fat. que não é obrigatorio

 // Descrição dos Serviços da Nota
 Descr := '';
 cdsAuxNfsItem.First;
 while not cdsAuxNfsItem.Eof do
 begin
  Descr := Descr + cdsAuxNfsItem.FieldByName('DESCRICAO').AsString;
  cdsAuxNfsItem.Next;
 end;

 // Observação da Nota Fiscal
 Descr     := Descr + cdsAuxNfsPesquisa.FieldByName('DESCRRETENCAO').AsString;
 x         := 0;
 // Acertar as parcelas
 Descr     := Descr + ' #VENCIMENTO (s): ';
 Venc      := 'vencimento (s): ';
 cdsAuxNfsParcela.First;
 while not cdsAuxNfsParcela.Eof do
 begin
  Inc( x );

  if x > 1 then
     Descr := Descr + ' - ';

  Descr := Descr + cdsAuxNfsParcela.FieldByName('DATAVENCIMENTO').AsString + ' - ' +
           FormatCurr('###,###,##0.00', cdsAuxNfsParcela.FieldByName('VLRPARCELA').AsCurrency );

  Venc  := Venc + cdsAuxNfsParcela.FieldByName('DATAVENCIMENTO').AsString + ' - ' +
           FormatCurr('###,###,##0.00', cdsAuxNfsParcela.FieldByName('VLRPARCELA').AsCurrency );
  cdsAuxNfsParcela.Next;
 end;

 // e-Mail para envio de mensagens
 Body := ' Prezado Cliente , ' +  #13#10  +
         ' ' + #13#10  +
         '  Informamos que em ' + cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString + ' a NFe de número ' +  cdsAuxNfsPesquisa.FieldByName('NFSID').AsString + '  , com ' + Venc + ' , foi encaminhada em seu endereço eletrônico . ' + #13#10  +
         '  Caso permaneça alguma dúvida pertinente a este processo de pagamento , por gentileza , pedimos que entre em contato imediatamente com o departamento financeiro no (11) 4134-0035 . ' + #13#10 +
         ' ' + #13#10  +
         ' Atenciosamente , ' +
         ' ' + #13#10  +
         ' ' + #13#10  +        
         'João Batista Lopes ' + #13#10  +
         'Coordenador de Operações Financeiras ' + #13#10  + #13#10  +
         'Toshiba Medical do Brasil ';

 dmEF.cdsNfEmail.Insert;
 dmEF.cdsNfEmailEMPRESAID.Value     := cdsAuxNfsPesquisa.FieldByName('EMPRESAID').Value;
 dmEF.cdsNfEmailNOTA.Value          := cdsAuxNfsPesquisa.FieldByName('NFSID').Value;
 dmEF.cdsNfEmailDATAEMISSAOID.AsDateTime := cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime;
 dmEF.cdsNfEmailEMAIL.Value         := cdsAuxNfsPesquisa.FieldByName('EMAILNFE').Value;
 dmEF.cdsNfEmailCORPO.Value         := Body;
 dmEF.cdsNfEmailSTATUS.Value        := 'I';
 dmEF.cdsNfEmail.Post;

 // Tratar o campo para ficar no padrão da receita
 DescrRet := '';
 x        := 0;
 for i := 1 to Length( Descr ) do
 begin
  Inc( x );
  if Copy( Descr, i, 1 ) = '#' then
     begin
       DescrRet := DescrRet + '|';
       x := 0;
       Continue;
     end;

  DescrRet := DescrRet + Copy( Descr, i, 1 );

  if x > 99 then
     begin
      DescrRet := DescrRet +  '|';
      x := 0;
     end;
 end;

 WriteLN( Arq, AdicCaracter( DescrRet, ' ', 1000 ) );
end;

function TfrmIntegracao.ExportNFeSalvadorDescricao : WideString;
var eMail, Descr, DescrRet, Venc, Body : String;
    i, x : Integer;
begin
 eMail := Copy ( ReplaceStr( cdsAuxNfsPesquisa.FieldByName( 'EMAILNFE' ).AsString, ';','|' ), 1, 152 );

 // Descrição dos Serviços da Nota
 Descr := '';
 cdsAuxNfsItem.First;
 while not cdsAuxNfsItem.Eof do
 begin
  Descr := Descr + cdsAuxNfsItem.FieldByName('DESCRICAO').AsString;
  cdsAuxNfsItem.Next;
 end;

 // Observação da Nota Fiscal
 Descr     := Descr + cdsAuxNfsPesquisa.FieldByName('DESCRRETENCAO').AsString;
 x         := 0;

 // Acertar as parcelas
 Descr     := Descr + ' #VENCIMENTO (s): ';
 Venc      := 'vencimento (s): ';
 cdsAuxNfsParcela.First;
 while not cdsAuxNfsParcela.Eof do
 begin
  Inc( x );

  if x > 1 then
     Descr := Descr + ' - ';

  Descr := Descr + cdsAuxNfsParcela.FieldByName('DATAVENCIMENTO').AsString + ' - ' +
           FormatCurr('###,###,##0.00', cdsAuxNfsParcela.FieldByName('VLRPARCELA').AsCurrency );

  Venc  := Venc + cdsAuxNfsParcela.FieldByName('DATAVENCIMENTO').AsString + ' - ' +
           FormatCurr('###,###,##0.00', cdsAuxNfsParcela.FieldByName('VLRPARCELA').AsCurrency );
  cdsAuxNfsParcela.Next;
 end;

 // e-Mail para envio de mensagens
 Body := ' Prezado Cliente , ' +  #13#10  +
         ' ' + #13#10  +
         '  Informamos que em ' + cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsString + ' a NFe de número ' +  cdsAuxNfsPesquisa.FieldByName('NFSID').AsString + '  , com ' + Venc + ' , foi encaminhada em seu endereço eletrônico . ' + #13#10  +
         '  Caso permaneça alguma dúvida pertinente a este processo de pagamento , por gentileza , pedimos que entre em contato imediatamente com o departamento financeiro no (11) 4134-0035 . ' + #13#10 +
         ' ' + #13#10  +
         ' Atenciosamente , ' +
         ' ' + #13#10  +
         ' ' + #13#10  +
         'Hugo Garbe ' + #13#10  +
         'Coordenador de Cobrança e Contas a Pagar ' + #13#10  +
         'Toshiba Medical do Brasil ';

 dmEF.cdsNfEmail.Insert;
 dmEF.cdsNfEmailEMPRESAID.Value     := cdsAuxNfsPesquisa.FieldByName('EMPRESAID').Value;
 dmEF.cdsNfEmailNOTA.Value          := cdsAuxNfsPesquisa.FieldByName('NFSID').Value;
 dmEF.cdsNfEmailDATAEMISSAOID.AsDateTime := cdsAuxNfsPesquisa.FieldByName('DATAEMISSAOID').AsDateTime;
 dmEF.cdsNfEmailEMAIL.Value         := cdsAuxNfsPesquisa.FieldByName('EMAILNFE').Value;
 dmEF.cdsNfEmailCORPO.Value         := Body;
 dmEF.cdsNfEmailSTATUS.Value        := 'X';
 dmEF.cdsNfEmail.Post;

 // Tratar o campo para ficar no padrão da receita
 DescrRet := '';
 x        := 0;
 for i := 1 to Length( Descr ) do
 begin
  Inc( x );
  if Copy( Descr, i, 1 ) = '#' then
     begin
       DescrRet := DescrRet + '|';
       x := 0;
       Continue;
     end;

  DescrRet := DescrRet + Copy( Descr, i, 1 );

  if x > 99 then
     begin
      DescrRet := DescrRet +  '|';
      x := 0;
     end;
 end;

 Result := DescrRet
end;

procedure TfrmIntegracao.ExportNFeBarueriTipo3( Imposto : String; Valor : Currency );
begin
 Write( Arq, '3');
 Write( Arq, Imposto );
 Writeln( Arq, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor( Valor ) ) ), '' ) , '0', 15,'E' ) );
end;

procedure TfrmIntegracao.ExportNFeBarueriTipo9( TotalReg : Integer );
begin
 Write( Arq, '9');
 Write( Arq, StrZero( TotalReg, 7, 0 ) );
 Write( Arq, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfsPesquisa.FieldByName('VLRTOTALSERVICO').Value ) ) ), '' ) , '0', 15,'E' ) );
 Writeln( Arq, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cdsAuxNfsPesquisa.FieldByName('VLRTOTALRETENCAO').Value ) ) ), '' ) , '0', 15,'E' ) );
end;

function TfrmIntegracao.EFD_NFS_PadraoSQL( PadraoAnd : Boolean = True ) : string;
var iSQLPadrao, iAnd : String;
begin
 iAnd := ' ';
 if PadraoAnd  then
    iAnd := ' AND ';

 if chkbxEFDGerarUm.Checked then
    iSqlPadrao :=  iAnd + ' EF_NFS.NFSID = ' + edtEFDNotaID.Text +
                          ' AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( wwdbdtpcktEFD.Text )
 else
    iSqlPadrao :=  iAnd + ' EF_NFS.DATAEMISSAOID >= '+ QuotedStr( wwdbdtpcktEFDIni.Text )+
                          ' AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( wwdbdtpcktEFDFim.Text );

 if chkbxEFDEmpresa.Checked then
    iSqlPadrao := iSqlPadrao + ' AND EF_NFS.EMPRESAID = ' + IntToStr( EmpresaAtualId )
 else
    iSqlPadrao := iSqlPadrao + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';

 Result := iSQLPadrao;
end;

function TfrmIntegracao.EFD_NFE_PadraoSQL( PadraoAnd : Boolean = True ) : string;
var iSQLPadrao, iAnd : String;
begin
 iAnd := ' ';
 if PadraoAnd  then
    iAnd := ' AND ';

 if chkbxEFDGerarUm.Checked then
    iSqlPadrao :=  iAnd + ' EF_NFE.NFEID = ' + edtEFDNotaID.Text +
                          ' AND EF_NFE.DATAEMISSAOID = '+ QuotedStr( wwdbdtpcktEFD.Text )
 else
    iSqlPadrao :=  iAnd + ' EF_NFE.DATAEMISSAOID >= '+ QuotedStr( wwdbdtpcktEFDIni.Text )+
                          ' AND EF_NFE.DATAEMISSAOID <= '+ QuotedStr( wwdbdtpcktEFDFim.Text );

 if chkbxEFDEmpresa.Checked then
    iSqlPadrao := iSqlPadrao + ' AND EF_NFE.EMPRESAID = ' + IntToStr( EmpresaAtualId )
 else
    iSqlPadrao := iSqlPadrao + ' AND ( EF_NFE.EMPRESAID IN (1,2,3,4,5) ) ';

 Result := iSQLPadrao;
end;

procedure TfrmIntegracao.ProcessaCargaEFDPesquisa( iSqlParams : String; var cds : TClientDataSet; idx :  string );
begin
 ExecDynamicProvider(-1, iSqlParams ,cds );

 cds.AddIndex( 'idx1',  idx, [ixPrimary]);
 cds.IndexName := 'idx1';
end;

// Abertura do arquivo digital e identificação da entidade
procedure TfrmIntegracao.Registro0000;
var DtIni, DtFim : String;
    iSQL : String;
begin
 iSQL := 'SELECT EMPRESAID, CPF_CNPJ,INSCRMUNICIPAL,INSCRESTADUAL,NOME,CEPID,NUMERO,COMPLEMENTO,ENDERECO,BAIRRO,CIDADE,SIGLAUFID ' +
         '  FROM EF_EMPRESA WHERE EMPRESAID = ' + IntToStr( EmpresaAtualId );

 cdsNF := nil;
 try
  ProcessaCargaEFDPesquisa( iSQL, cdsNF, 'EMPRESAID' );

  Write( F, AddDel('|0000'));
  Write( F, AddDel('003'));
  Write( F, AddDel('0'));

  if chkbx1Nota.Checked then
     begin
      DtIni := FormatDateTime('ddmmyyyy', wwdbdtpcktEFD.Date );
      DtFim := FormatDateTime('ddmmyyyy', wwdbdtpcktEFD.Date );
     end
  else
     begin
      DtIni := FormatDateTime('ddmmyyyy', wwdbdtpcktEFDIni.Date );
      DtFim := FormatDateTime('ddmmyyyy', wwdbdtpcktEFDFim.Date );
     end;

  Write( F, AddDel( DtIni ) );
  Write( F, AddDel( DtFim ) );
  Write( F, AddDel( cdsNF.FieldByName( 'NOME' ).AsString));
  Write( F, AddDel( cdsNF.FieldByName( 'CPF_CNPJ' ).AsString));
  Write( F, AddDel(''));
  Write( F, AddDel( cdsNF.FieldByName( 'SIGLAUFID' ).AsString));
  Write( F, AddDel( TransfNum( cdsNF.FieldByName( 'INSCRESTADUAL' ).AsString ) ) );
  Write( F, AddDel( '4202404' ));   // CGLSOFT Verificar tabela
  Write( F, AddDel( TransfNum( cdsNF.FieldByName( 'INSCRMUNICIPAL' ).AsString ) ) );
  Write( F, AddDel(''));
  Write( F, AddDel('A'));
  Writeln( F, AddDel('0'));

  except on
  E : Exception do
  begin
   StringToSQLFile( iSQL );
   raise Exception.Create(E.Message);
  end;
 end;
end;

// REGISTRO 0001: Abertura do Bloco 0
procedure TfrmIntegracao.Registro0001( Reg, Ind_Mov : string );
begin
 Write( F, AddDel( '' ));
 Write( F, AddDel( Reg ));
 Writeln( F, AddDel( Ind_Mov ) );
end;

// REGISTRO 0005: Dados complementares da entidade
procedure TfrmIntegracao.Registro0005;
begin
 Write( F, AddDel('|0005'));
 Write( F, AddDel( cdsNF.FieldByName( 'NOME' ).AsString));
 Write( F, AddDel( FormatFloat( '00000000;1;',cdsNF.FieldByName( 'CEPID' ).AsInteger ) ) );
 Write( F, AddDel( Copy(cdsNF.FieldByName('ENDERECO').AsString, 1, 60 ) ) );
 Write( F, AddDel( cdsNF.FieldByName('NUMERO').AsString ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('COMPLEMENTO').AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('BAIRRO').AsString, 1, 60 ) ) );
 Write( F, AddDel( '1141340025' ) );
 Write( F, AddDel( '1141340001' ) );
 Writeln( F, AddDel( 'contabil@toshibamedical.com.br' ) );
end;

// REGISTRO 0100: Dados do contabilista
procedure TfrmIntegracao.Registro0100;
begin
 Write( F, AddDel('|0100'));
 Write( F, AddDel('JAMES CARR MELVILLE'));
 Write( F, AddDel('11159432864'));
 Write( F, AddDel('1SP222473/O-4')); // crm
 Write( F, AddDel('')); // cglsoft verificar
 Write( F, AddDel( '09070540') );
 Write( F, AddDel( 'RUA DO CONTORNO' ) );
 Write( F, AddDel( '58' ) );
 Write( F, AddDel( '' ) );
 Write( F, AddDel( 'CAMPESTRE' ) );
 Write( F, AddDel( '1141340025' ) );
 Write( F, AddDel( '1141340001' ) );
 Write( F, AddDel( 'contabil@toshibamedical.com.br' ) );
 Writeln( F, AddDel( '3513108' ) );
end;

// REGISTRO 0150: Tabela de cadastro do participante
procedure TfrmIntegracao.Registro0150;
var cds : TClientDataSet;
    iSql : string;
begin
 // Processar Entidade de NFS do período
iSQL :=  Select_NFE_Ent + EFD_NFE_PadraoSQL + ' UNION ' +
         Select_NFS_Ent + EFD_NFS_PadraoSQL + ' UNION ' +
         Select_NFS_Transp + EFD_NFS_PadraoSQL;
 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'ENTIDADEID' );

  TBloco0 := TBloco0 + cds.RecordCount;

  cds.First;
  while not cds.Eof do
  begin
   Write( F, AddDel('|0150'));
   Write( F, AddDel( cds.FieldByName('ENTIDADEID').AsString ) );
   Write( F, AddDel( cds.FieldByName('NOME').AsString ) );
   Write( F, AddDel(  ProcurarPaisBacen(  cds.FieldByName('PAIS').AsString ) ) );

   if cds.FieldByName('FISICAJURIDICA').AsString = 'J' then
      begin
       if cds.FieldByName('SIGLAUFID').AsString <> 'EX' then
          Write( F, AddDel( TransfNum( cds.FieldByName('CPFCNPJ_DESTINATARIO').AsString ) ) )
       else
          Write( F, AddDel('') );
      end
   else
      Write( F, AddDel('') );

   if cds.FieldByName('FISICAJURIDICA').AsString = 'F' then
      begin
       if cds.FieldByName('SIGLAUFID').AsString <> 'EX' then
          Write( F, AddDel( TransfNum( cds.FieldByName('CPFCNPJ_DESTINATARIO').AsString ) ) )
       else
          Write( F, AddDel('') );
      end
   else
      Write( F, AddDel('') );

   if cds.FieldByName('INSCRESTADUAL').AsString = 'ISENTO' then
      Write( F, AddDel( '' ) )
   else
      Write( F, AddDel( TransfNum( cds.FieldByName('INSCRESTADUAL').AsString ) ) );

   if cds.FieldByName('SIGLAUFID').AsString <> 'EX' then
      Write( F, AddDel( TransfNum( cds.FieldByName('MUNICIPIOIBGEID').AsString ) ) )
   else
      Write( F, AddDel('9999999'));  // Para exterior vazio ou 9999999

   Write( F, AddDel('') );

   Write( F, AddDel( Copy(cds.FieldByName('ENDERECO').AsString, 1, 60 ) ) );
   Write( F, AddDel( cds.FieldByName('NUMERO').AsString ) );
   Write( F, AddDel( Copy( cds.FieldByName('COMPLEMENTO').AsString, 1, 60 ) ) );
   Writeln( F, AddDel( Copy( cds.FieldByName('BAIRRO').AsString, 1, 60 ) ) );
   cds.Next;
  end;

 finally
  FreeAndNil( cds );
 end;
end;

// REGISTRO 0190: Tabela de unidade de medida )
procedure TfrmIntegracao.Registro0190;
var cds : TClientDataSet;
    iSql : string;
    tServ : Integer;
begin
 // Processar Unidade de medido do Grupo
 TServ:= 0;
 iSql := 'SELECT DISTINCT EF_UNIDADE.UNIDADEID, EF_UNIDADE.DESCRICAO ' +
         '  FROM EF_UNIDADE ' +
         ' WHERE EF_UNIDADE.UNIDADEID IN ( ' +
         Select_NFEUnidGrp + EFD_NFE_PadraoSQL +
         ' ) OR EF_UNIDADE.UNIDADEID IN ( ' +
         Select_NFSUnidGrp + EFD_NFS_PadraoSQL + ' ) ';
 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'UNIDADEID' );

  // Descrição de Serviço
  if EmpresaAtualId <> 15 then
     begin
      // Unidade padrão Serviços
      Write( F, AddDel('|0190'));
      Write( F, AddDel( 'SV' ) );
      Writeln( F, AddDel( 'SERVICO' ) );
      Inc(tServ);
     end;

  TBloco0 := TBloco0 + tServ + cds.RecordCount;

  EFD_Bloco9_Insert( '0190', cds.RecordCount + tServ );
  cds.First;
  while not cds.Eof do
  begin
   Write( F, AddDel('|0190'));
   Write( F, AddDel( cds.FieldByName('UNIDADEID').AsString ) );
   Writeln( F, AddDel( cds.FieldByName('DESCRICAO').AsString ) );
   cds.Next;
  end;

 finally
  FreeAndNil( cds );
 end;
end;

// REGISTRO 0200: Tabela de IDENTIFICAÇÃO DO ITEM (Produto e Serviços)
procedure TfrmIntegracao.Registro0200;
var cds : TClientDataSet;
    iSql : string;
begin
 // Processar Item Grupo acumulado

 iSQL :=  Select_NFEItemGrp + EFD_NFE_PadraoSQL +
          ' UNION ' +
          Select_NFSItemGrp + EFD_NFS_PadraoSQL +
          ' UNION ' +
          Select_KdxItemGrp +
          ' DATAOCORRENCIA <= TO_DATE( ' + QuotedStr( wwdbdtpcktEFDInvent.Text )+','+ QuotedStr('DD/MM/YYYY')+ ') ' +
          Select_KdxItemGrp2 +
          '   AND ( EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaAtualId )+') ';

 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'EMPRESAID;PRODUTOID' );
  TBloco0 := TBloco0 + cds.RecordCount;
  EFD_Bloco9_Insert( '0200', cds.RecordCount );
  // Processar Item Produtos e Serviços da NFS do período
  cds.First;
  while not cds.Eof do
  begin
   Write( F, AddDel('|0200'));
   Write( F, AddDel( cds.FieldByName('COD_ITEM').AsString ) );
   Write( F, AddDel( cds.FieldByName('DESCRICAOPRODUTO').AsString ) );
   Write( F, AddDel('') );
   Write( F, AddDel('') );
   Write( F, AddDel( cds.FieldByName('UNIDADEID').AsString ) );
   Write( F, AddDel( StrZero( cds.FieldByName('TIPOITEMID').AsInteger, 2, 0 ) ) );
   Write( F, AddDel( cds.FieldByName('NCMID').AsString ) );
   Write( F, AddDel('') );
   Write( F, AddDel( StrZero( cds.FieldByName('GENEROITEMID').AsInteger, 2, 0 ) ) );
   Write( F, AddDel('') );
   Writeln( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('ALIQUOTAICMS').AsCurrency ) ) );
   cds.Next;
  end;
 finally
  FreeAndNil( cds );
 end;
end;

// Registro 0400: Tabela de Natureza da Operação
procedure TfrmIntegracao.Registro0400;
var cds : TClientDataSet;
    iSql : string;
begin
 // Processar Grupo de Natureza de Operação
 iSQL :=  Select_NFENatGrp + EFD_NFE_PadraoSQL +
          ' UNION  ' +
          Select_NFSNatGrp + EFD_NFS_PadraoSQL;

 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'NATUREZAOPID' );
  TBloco0 := TBloco0 + cds.RecordCount;

  EFD_Bloco9_Insert( '0400', cds.RecordCount );

  cds.First;
  while not cds.Eof do
  begin
   Write( F, AddDel('|0400'));
   Write( F, AddDel( cds.FieldByName('NATUREZAOPID').AsString ) );
   Writeln( F, AddDel( cds.FieldByName('DESCRICAOOPERACAONOTA').AsString ) );
   cds.Next;
  end;
 finally
  FreeAndNil( cds );
 end;
end;

// Registro 0450: Tabela de Informação complementar do documento fiscal
procedure TfrmIntegracao.Registro0450;
var cds : TClientDataSet;
    iSql : string;
    Special, S1, S2, S3 : WideString;
begin
 // Processar de observação
 iSql := ' SELECT DISTINCT DECODE( NVL( EF_NFE.OBSERVACAOID, 0 ), 0, 110, EF_NFE.OBSERVACAOID ) OBSERVACAOID , TO_CHAR(EF_OBSERVACAO.DESCRICAO) OBS ' +
         '  FROM EF_NFE, EF_OBSERVACAO ' +
         ' WHERE DECODE( NVL( EF_NFE.OBSERVACAOID, 0 ), 0, 110, EF_NFE.OBSERVACAOID ) = EF_OBSERVACAO.OBSERVACAOID ' +
         EFD_NFE_PadraoSQL +
         '  UNION ' +
         ' SELECT DISTINCT DECODE( NVL( EF_NFS.OBSERVACAOID, 0 ), 0, 110, EF_NFS.OBSERVACAOID ) OBSERVACAOID, TO_CHAR(EF_OBSERVACAO.DESCRICAO) OBS ' +
         '   FROM EF_NFS, EF_OBSERVACAO ' +
         '  WHERE DECODE( NVL(  EF_NFS.OBSERVACAOID, 0 ), 0, 110, EF_NFS.OBSERVACAOID ) = EF_OBSERVACAO.OBSERVACAOID ' +
         EFD_NFS_PadraoSQL;

 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'OBSERVACAOID' );
  TBloco0 := TBloco0 + cds.RecordCount;
  EFD_Bloco9_Insert( '0450', cds.RecordCount );
  cds.First;
  while not cds.Eof do
  begin
   S1 := '{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Tahoma;}}';
   S3 := '{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil\fcharset0 Tahoma;}}';
   S2 := '\viewkind4\uc1\pard\lang1046\f0\fs16';

   special := Copy( cds.FieldByName('OBS').AsString , 1, 255 );
   special := ReplaceText( Special, S1,'' );
   special := ReplaceText( Special, S2,'' );
   special := ReplaceText( Special, S3,'' );

   Write( F, AddDel('|0450'));
   Write( F, AddDel( cds.FieldByName('OBSERVACAOID').AsString ) );
   Writeln( F, AddDel( Special ) );
   cds.Next;
  end;
 finally
  FreeAndNil( cds );
 end;
end;

// Registro 0460: Tabela de Observações do lançamento fiscal
procedure TfrmIntegracao.Registro0460;
var cds : TClientDataSet;
    iSql : string;
    Special, S1, S2, S3 : WideString;
begin
 // Processar de observação
 iSql := ' SELECT DISTINCT DECODE( NVL( EF_NFE.OBSERVACAOID, 0 ), 0, 110, EF_NFE.OBSERVACAOID ) OBSERVACAOID, TO_CHAR(EF_OBSERVACAO.DESCRICAO) OBS ' +
         '  FROM EF_NFE, EF_OBSERVACAO ' +
         ' WHERE DECODE( NVL( EF_NFE.OBSERVACAOID, 0 ), 0, 110, EF_NFE.OBSERVACAOID ) = EF_OBSERVACAO.OBSERVACAOID ' +
         EFD_NFE_PadraoSQL +
         '  UNION ' +
         ' SELECT DISTINCT DECODE( NVL( EF_NFS.OBSERVACAOID, 0 ), 0, 110, EF_NFS.OBSERVACAOID ) OBSERVACAOID, TO_CHAR(EF_OBSERVACAO.DESCRICAO) OBS ' +
         '   FROM EF_NFS, EF_OBSERVACAO ' +
         '  WHERE DECODE( NVL(  EF_NFS.OBSERVACAOID, 0 ), 0, 110, EF_NFS.OBSERVACAOID ) = EF_OBSERVACAO.OBSERVACAOID ' +
         EFD_NFS_PadraoSQL;

 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'OBSERVACAOID' );
  TBloco0 := TBloco0 + cds.RecordCount;
  EFD_Bloco9_Insert( '0460', cds.RecordCount );
  cds.First;
  while not cds.Eof do
  begin
   S1 := '{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset0 Tahoma;}}';
   S3 := '{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil\fcharset0 Tahoma;}}';
   S2 := '\viewkind4\uc1\pard\lang1046\f0\fs16';

   special := Copy( cds.FieldByName('OBS').AsString , 1, 255 );
   special := ReplaceText( Special, S1,'' );
   special := ReplaceText( Special, S2,'' );
   special := ReplaceText( Special, S3,'' );

   Write( F, AddDel('|0460'));
   Write( F, AddDel( cds.FieldByName('OBSERVACAOID').AsString ) );
   Writeln( F, AddDel( Special ) );
   cds.Next;
  end;
 finally
  FreeAndNil( cds );
 end;
end;

// Registro 0900: Encerramento do Bloco 0
procedure TfrmIntegracao.EFD_EncerrarBloco( Reg : string; Qtd_linC : Integer);
begin
 Write( F, AddDel('|' + Reg ));
 Writeln( F, AddDel( IntToStr( Qtd_linC ) ) );
end;

// Registro C0100: Nota Fiscal (Código 01),
procedure TfrmIntegracao.EFD_Saida;
var iSQL : string;
begin
 iSQL := EFD_NFS_PadraoSQL( False );
 GerarPesquisa( dmEF.cdsNfs, iSQL );

 RegistroC100( dmEF.cdsNfs, '1', '0', '01' );
end;

// Registro C0100: Nota Fiscal (Código 01),
procedure TfrmIntegracao.EFD_Entrada;
var iSQL : string;
begin
 iSQL := EFD_NFE_PadraoSQL( False );
 GerarPesquisa( dmEF.cdsNfe, iSQL );

 RegistroC100( dmEF.cdsNfe, '0', '0', '01' );
end;

procedure TfrmIntegracao.RegistroC100_Det( cds : TClientDataSet; Ind_Oper, Ind_Emit, Cod_Mod : String );
begin
 Inc( TBloco0 );
 Write( F, AddDel('|C100'));
 Write( F, AddDel( Ind_Oper ) );
 Write( F, AddDel( Ind_Emit ) );
 Write( F, AddDel( cds.FieldByName('ENTIDADEID').AsString ) );
 Write( F, AddDel( Cod_Mod ) );

 // Situação do documento fiscal
 if cds.FieldByName('CANCELADA').AsInteger = 0 then
    Write( F, AddDel( '00' ) )
 else
    Write( F, AddDel( '02' ) );

 if Ind_Oper = '0' then
    begin
     Write( F, AddDel( '002' ) );
     Write( F, AddDel( cds.FieldByName('NFEID').AsString ) )
    end
 else
    begin
     Write( F, AddDel( '002' ) );
     Write( F, AddDel( cds.FieldByName('NFSID').AsString ) );
    end;

 Write( F, AddDel( '' ) ); // CHAVE SOMENTE QDO TIVER O DANFE
 Write( F, AddDel( FormatDateTime('ddmmyyyy', cds.FieldByName('DATAEMISSAOID').AsDateTime ) ) );

 if Ind_Oper = '1' then
    Write( F, AddDel( '' ) )
 else
    Write( F, AddDel( FormatDateTime('ddmmyyyy', cds.FieldByName('DATAENTRADA').AsDateTime ) ) );

 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALNOTA').AsCurrency ) ) );

 case  StrToInt( Ind_Oper ) of
 0 :         Write( F, AddDel( '9' ) );
 1 : if      cds.FieldByName('CONDPAGTOID').AsInteger = 4 then // A Vista
             Write( F, AddDel( '0' ) )
     else if cds.FieldByName('CONDPAGTOID').AsInteger = 0 then // Entrada ou sem condição
             Write( F, AddDel( '9' ) )
     else
             Write( F, AddDel( '1' ) );
 end;

 Write( F, AddDel('0,00') ); // 14
 Write( F, AddDel('0,00') ); // 15

 case  StrToInt( Ind_Oper ) of
 0 : Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALPRODUTO').AsCurrency  ) ) );
 1 : Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALPRODUTO').AsCurrency + cds.FieldByName('VLRTOTALSERVICO').AsCurrency ) ) );
 end;

 if      cds.FieldByName('MODALIDADEFRETE').AsString = 'E' then
         Write( F, AddDel('1') )
 else if cds.FieldByName('MODALIDADEFRETE').AsString = 'D' then
         Write( F, AddDel('2') )
 else
         Write( F, AddDel('9') );

 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRFRETE').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRSEGURO').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRDESPESAACESSORIA').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALBASEICMS').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALICMS').AsCurrency ) ) );
 Write( F, AddDel('0,00') );
 Write( F, AddDel('0,00') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALIPI').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALPIS').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRTOTALCOFINS').AsCurrency ) ) );
 Write( F, AddDel('0,00') );
 Writeln( F, AddDel('0,00') );
end;

// Registro C0100: Nota Fiscal (Código 01),
procedure TfrmIntegracao.RegistroC100( cds : TClientDataSet; Ind_Oper, Ind_Emit, Cod_Mod : String );
var TCond, TItem, TServ, TParc, TImp, TGrpItem, TRegC113 : Integer;

 function cdsE_S( Ind : String ) : TClientDataSet;
 begin
  if Ind = '0' then
     result := dmEF.cdsNFE
  else
     result := dmEF.cdsNFS;
 end;

begin
 TBloco0  := TBloco0 + cds.RecordCount;
 TCond    := 0;
 TItem    := 0;
 TServ    := 0;
 TParc    := 0;
 TImp     := 0;
 TGrpItem := 0;
 TRegC113 := 0;

 cds.First;
 while not cds.Eof do
 begin
  RegistroC100_Det( cds, Ind_Oper, Ind_Emit, Cod_Mod );

  RegistroC110( cdsE_S( Ind_Oper ) );

  TRegC113 := RegistroC113( cdsE_S( Ind_Oper ), Ind_Oper, '0', '01' );

  case StrToInt( Ind_Oper ) of
  0 : if dmEF.cdsNfeTIPONOTA.Value = 'I' then
         begin
          Inc( TImp );
          RegistroC120;
         end;

  1 :  if EmpresaAtualId <> 15 then
          begin
           if dmEF.cdsNfsCONDPAGTOID.AsInteger > 0  then
              begin
               Inc( TCond );
               RegistroC140( dmEF.cdsNfsCONDPAGTOID.AsString );
               TParc := TParc +  dmEF.cdsNfsParcela.RecordCount;
               RegistroC141( dmEF.cdsNfsCONDPAGTOID.AsString );
              end;
          end;
  end;

  if      Ind_Oper = '0' then
          begin
           TItem := TItem + dmEF.cdsNfeItem.RecordCount;
           RegistroC170( dmEF.cdsNfeItem, '1', dmEF.cdsNfeL_CFOP.AsString );
           RegistroC190( Ind_Oper, dmEF.cdsNfe, TGrpItem );
          end
  else if Ind_Oper = '1' then
          begin
           TItem := TItem + dmEF.cdsNfsItem.RecordCount;
           TServ := TServ + dmEF.cdsNfsServico.RecordCount;

           RegistroC160( cdsE_S( Ind_Oper ) );
           RegistroC170( dmEF.cdsNfsItem, '1', dmEF.cdsNfsL_CFOP.AsString );
           RegistroC170Serv( dmEF.cdsNfsServico, '1', dmEF.cdsNfsL_CFOP.AsString );
           RegistroC172( dmEF.cdsNfsServico );
           RegistroC190( Ind_Oper, dmEF.cdsNfs, TGrpItem );
          end;

  cds.Next;
 end;

 EFD_Bloco9_Insert( 'C100', cdsE_S( Ind_Oper ).RecordCount );
 EFD_Bloco9_Insert( 'C110', cdsE_S( Ind_Oper ).RecordCount );
 EFD_Bloco9_Insert( 'C113', TRegC113);

 case StrToInt( Ind_Oper ) of
 0 : EFD_Bloco9_Insert( 'C120', TImp );
 1 : begin
      if EmpresaAtualId <>  15 then
         begin
          EFD_Bloco9_Insert( 'C140', TCond );
          EFD_Bloco9_Insert( 'C141', TParc );
         end;

      EFD_Bloco9_Insert( 'C160', cdsE_S( Ind_Oper ).RecordCount );
     end;
 end;

 EFD_Bloco9_Insert( 'C170', TItem );
 EFD_Bloco9_Insert( 'C172', TServ );
 EFD_Bloco9_Insert( 'C190', TGrpItem );
end;

// Registro C0110: Informação complementar da Nota Fiscal (Código 01),
procedure TfrmIntegracao.RegistroC110( cds : TClientDataSet );
var Obs : string;
begin
 Inc( TBloco0 );

 if  cds.FieldByName('OBSERVACAOID').AsInteger = 0 then
     Obs := '110'
 else
     Obs :=  cds.FieldByName('OBSERVACAOID').AsString;

 Write( F, AddDel('|C110'));
 Write( F, AddDel( Obs ) );
 Writeln( F, AddDel( Copy( cds.FieldByName('DESCRICAOOBSERVACAO').AsString,1,255 ) ) );
end;

// Registro C0113: Documento Fiscal Referenciado
function TfrmIntegracao.RegistroC113( cds : TClientDataSet; Ind_Oper, Ind_Emit, Cod_Mod : String ) : Integer;
begin
 Result := 0;

 case StrToInt( Ind_Oper ) of
 0 : begin
      if cds.FieldByName('NFSID').AsInteger = 0 then
         Result := 0;
     end;
 1 : if cds.FieldByName('NFSREFID').AsInteger > 0 then
        begin
         if cds.FieldByName('NFSREFID').AsInteger = 0 then
            Result := 0;
        end
     else
        begin
         if cds.FieldByName('NFEID').AsInteger = 0 then
            Result := 0;
        end;
 end;

 if Result = 0 then
    Exit;

 Inc( TBloco0 );
 Write( F, AddDel('|C113'));
 Write( F, AddDel( Ind_Oper ) );
 Write( F, AddDel( Ind_Emit ) );
 Write( F, AddDel( cds.FieldByName('ENTIDADEID').AsString ) );
 Write( F, AddDel( Cod_Mod ) );

 Write( F, AddDel( '000' ) );
 Write( F, AddDel( '' ) );


 case StrToInt( Ind_Oper ) of
 0 : begin
      Write( F, AddDel( cds.FieldByName('NFSID').AsString ) );
      Writeln( F, AddDel( FormatDateTime('ddmmyyyy', cds.FieldByName('DATAEMISSAONFSID').AsDateTime ) ) );
     end;

 1 : if cds.FieldByName('NFSREFID').AsInteger > 0 then
        begin
         Write( F, AddDel( cds.FieldByName('NFSREFID').AsString ) );
         Writeln( F, AddDel( FormatDateTime('ddmmyyyy', cds.FieldByName('DATANFSREFID').AsDateTime ) ) );
        end
     else
        begin
         Write( F, AddDel( cds.FieldByName('NFEID').AsString ) );
         Writeln( F, AddDel( FormatDateTime('ddmmyyyy', cds.FieldByName('DATAEMISSAONFEID').AsDateTime ) ) );
        end;
 end;
 Result := 1;
end;

// Registro C0120: Operação de Importação (Código 01)
procedure TfrmIntegracao.RegistroC120;
begin
 Inc( TBloco0 );

 Write( F, AddDel('|C120'));
 Write( F, AddDel('0'));
 Write( F, AddDel( FuncoesDSI.TransfNum( dmEF.cdsNfeDIID.AsString ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, dmEF.cdsNfeVLRTOTALCREDPIS.AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, dmEF.cdsNfeVLRTOTALCREDCOFINS.AsCurrency ) ) );
 Writeln( F, AddDel(''));
end;

// Registro C0140: Fatura (Código 01)
procedure TfrmIntegracao.RegistroC140( CondPagtoId : String );
var iSQL : string;
    cds : TClientDataSet;
begin
 iSQL := 'SELECT NUMPARCELA FROM EF_CONDPAGTO WHERE CONDPAGTOID = ' + CondPagtoID;

 Inc( TBloco0 );

 try
  ExecDynamicProvider( -1, iSQL, Cds );

  if cds.RecordCount = 0 then
     exit;

  Write( F, AddDel('|C140'));
  Write( F, AddDel('0'));
  Write( F, AddDel('00'));
  Write( F, AddDel( dmEF.cdsNfs.FieldByName('L_CONDICAOPAGTO').AsString ) );
  Write( F, AddDel( dmEF.cdsNfs.FieldByName('NFSID').AsString ) );
  Write( F, AddDel( StrZero( cds.FieldByName('NUMPARCELA').AsInteger, 2, 0 ) ) );
  Writeln( F, AddDel( FormatFloat(Mask_PtFlut, dmEF.cdsNfs.FieldByName('VLRTOTALNOTA').AsCurrency ) ) );

  cds.Close;
 finally
  FreeAndNil( cds );
 end;
end;

// Registro C0141: Vencimento da fatura (Código 01)
procedure TfrmIntegracao.RegistroC141( CondPagtoId : String );
begin
 TBloco0 := TBloco0 + dmEF.cdsNfsParcela.RecordCount;

 dmEF.cdsNfsParcela.First;
 while not dmEF.cdsNfsParcela.Eof do
 begin
  Write( F, AddDel('|C141'));
  Write( F, AddDel( StrZero( dmEF.cdsNfsParcelaPARCELAID.AsInteger, 2, 0 ) ) );
  Write( F, AddDel( FormatDateTime('ddmmyyyy', dmEF.cdsNfsParcela.FieldByName('DATAVENCIMENTO').AsDateTime ) ) );
  Writeln( F, AddDel( FormatFloat(Mask_PtFlut, dmEF.cdsNfsParcela.FieldByName('VLRPARCELA').AsCurrency ) ) );

  dmEF.cdsNfsParcela.Next;
 end;
end;

// Registro C0160: Volumes transportados ( Codigo 01 e 04 ) - Exceto combustíveis
procedure TfrmIntegracao.RegistroC160( cds : TClientDataSet );
begin
 Inc( TBloco0 );

 Write( F, AddDel('|C160'));
 Write( F, AddDel( cds.FieldByName('TRANSPORTADORID').AsString ) );
 Write( F, AddDel( cds.FieldByName('PLACAVEICULO').AsString ) );
 Write( F, AddDel( cds.FieldByName('EMBQTDVOLUMES').AsString ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('EMBPESOBRUTO').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('EMBPESOLIQUIDO').AsCurrency ) ) );
 Writeln( F, AddDel(''));
end;

// Registro C0170: Itens do documento (Código 01, 1B, 04 E 55 )
procedure TfrmIntegracao.RegistroC170( cds : TClientDataSet; Ind_Oper, CFOP : String );
begin
 // Processar de observação
 TBloco0 := TBloco0 + cds.RecordCount;

 cds.First;
 while not cds.Eof do
 begin
  Write( F, AddDel('|C170'));
  Write( F, AddDel( StrZero( cds.FieldByName('ITEMID').AsInteger, 3, 0 ) ) );
  Write( F, AddDel( cds.FieldByName('EMPRESAID').AsString + cds.FieldByName('PRODUTOID').AsString ) );
  Write( F, AddDel( cds.FieldByName('DESCRICAOPRODUTO').AsString  ) );
  Write( F, AddDel( ( FormatFloat( Mask_PtFlut5, cds.FieldByName('QUANTIDADE').AsCurrency ) ) ) );
  Write( F, AddDel( cds.FieldByName('L_UNIDADEID').AsString  ) );
  Write( F, AddDel( ( FormatFloat( Mask_PtFlut, cds.FieldByName('VLRPRECOUNITARIO').AsCurrency ) ) ) );

  Write( F, AddDel('0,00') ); // 08
  Write( F, AddDel('0') ); // 09
  Write( F, AddDel( cds.FieldByName('SITTRIBUTARIAESTADUAL').AsString  ) );
  Write( F, AddDel( CFOP  ) );
  Write( F, AddDel( cds.FieldByName('NATUREZAOPID').AsString  ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRBASEICMS').AsCurrency ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('ALIQUOTAICMS').AsCurrency ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRICMS').AsCurrency ) ) );
  Write( F, AddDel('0,00') ); // 16
  Write( F, AddDel('0,00') ); // 17
  Write( F, AddDel('0,00') ); // 18
  Write( F, AddDel('0') );    // 0 Mensal, 1 Decendial
  Write( F, AddDel('00') );   // 20
  Write( F, AddDel('') );  // 21     // CGLSOFT Ainda não disponível
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRBASEIPI').AsCurrency ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('ALIQUOTAIPI').AsCurrency ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRIPI').AsCurrency ) ) );
  Write( F, AddDel('01') );   // 25 //
  Write( F, AddDel('0,00') ); // 26
  Write( F, AddDel('0,00') ); // 27
  Write( F, AddDel('000') ); // 28
  Write( F, AddDel( FormatFloat(Mask_PtFlut4, cds.FieldByName('ALIQUOTAPIS').AsCurrency ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRPIS').AsCurrency ) ) );
  Write( F, AddDel('01') );   // 31 // 
  Write( F, AddDel('0,00') ); // 32
  Write( F, AddDel('0,00') ); // 33
  Write( F, AddDel('000') ); // 34
  Write( F, AddDel( FormatFloat(Mask_PtFlut4, cds.FieldByName('ALIQUOTACOFINS').AsCurrency ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRCOFINS').AsCurrency ) ) );
  Writeln( F, AddDel('') ); // 34

  cds.Next;
 end;
end;

// Registro C0170: Itens do documento (Código 01, 1B, 04 E 55 ) Serviços
procedure TfrmIntegracao.RegistroC170Serv( cds : TClientDataSet; Ind_Oper, CFOP : String );
begin
 // Processar de observação
 TBloco0 := TBloco0 + cds.RecordCount;

 cds.First;
 while not cds.Eof do
 begin
  Write( F, AddDel('|C170'));
  Write( F, AddDel( StrZero( cds.FieldByName('ITEMID').AsInteger, 3, 0 ) ) );
  Write( F, AddDel( cds.FieldByName('EMPRESAID').AsString + cds.FieldByName('SERVICOID').AsString ) );
  Write( F, AddDel( cds.FieldByName('DESCRICAOSERVICO').AsString  ) );
  Write( F, AddDel( ( FormatFloat( Mask_PtFlut5, 1 ) ) ) );
  Write( F, AddDel( 'SV'  ) );
  Write( F, AddDel( ( FormatFloat( Mask_PtFlut, cds.FieldByName('VLRSERVICO').AsCurrency ) ) ) );
  Write( F, AddDel('0,00') ); // 08
  Write( F, AddDel('1') ); // 09
  Write( F, AddDel( '090' ) );
  Write( F, AddDel( CFOP  ) );
  Write( F, AddDel( cds.FieldByName('NATUREZAOPID').AsString  ) );
  Write( F, AddDel('0,00') ); // 13
  Write( F, AddDel('0,00') ); // 14
  Write( F, AddDel('0,00') ); // 15
  Write( F, AddDel('0,00') ); // 16
  Write( F, AddDel('0,00') ); // 17
  Write( F, AddDel('0,00') ); // 18
  Write( F, AddDel('0') );    // 19
  Write( F, AddDel('99') );   // 20
  Write( F, AddDel('') );     // 21
  Write( F, AddDel('0,00') ); // 22
  Write( F, AddDel('0,00') ); // 23
  Write( F, AddDel('0,00') ); // 24
  Write( F, AddDel('') );     // 25
  Write( F, AddDel('0,00') ); // 26
  Write( F, AddDel('0,00') ); // 27
  Write( F, AddDel('0,000') ); // 28
  Write( F, AddDel('0,0000') ); // 29
  Write( F, AddDel('0,00') ); // 30
  Write( F, AddDel('99') ); // 31
  Write( F, AddDel('0,00') ); // 32
  Write( F, AddDel('0,00') ); // 33
  Write( F, AddDel('0,000') ); // 34
  Write( F, AddDel('0,000') ); // 35
  Write( F, AddDel('0,00') ); // 36
  Writeln( F, AddDel('') ); // 37

  cds.Next;
 end;
end;


// Registro C0172: Operações com ISSQN (Código 01) Iss sobre qualquer natureza
procedure TfrmIntegracao.RegistroC172( cds : TClientDataSet );
var AliqISS : Currency;
begin
 // Processar de observação
 TBloco0 := TBloco0 + cds.RecordCount;

 cds.First;
 while not cds.Eof do
 begin
  AliqISS := ( cds.FieldByName('VLRISS').AsCurrency / cds.FieldByName('VLRSERVICO').AsCurrency ) * 100;

  Write( F, AddDel('|C172'));
  Write( F, AddDel( ( FormatFloat( Mask_PtFlut, cds.FieldByName('VLRSERVICO').AsCurrency ) ) ) );
  Write( F, AddDel( FormatFloat(Mask_PtFlut, AliqISS ) ) );
  Writeln( F, AddDel( ( FormatFloat( Mask_PtFlut, cds.FieldByName('VLRISS').AsCurrency ) ) ) );

  cds.Next;
 end;
end;

// Registro C190: Registro analítico do documento (Código 01 1B,04 E 55 )
procedure TfrmIntegracao.RegistroC190( Ind_Oper : String; cdsP : TClientDataSet; var TGrpItem : Integer );
var cds : TClientDataSet;
    iSql : string;
begin
 // Processar de observação
 case StrToInt( Ind_Oper ) of
 0 : begin
      iSQL :=  Select_EFD_E_C190 +
               ' AND EF_NFE.EMPRESAID = ' + cdsP.FieldByName('EMPRESAID').AsString +
               ' AND EF_NFE.NFEID = ' + cdsP.FieldByName('NFEID').AsString +
               ' AND EF_NFE.DATAEMISSAOID = '+ QuotedStr( cdsP.FieldByName('DATAEMISSAOID').AsString ) +
               Select_EFD_E_C190B;
     end;
 1 : begin
      iSQL :=  Select_EFD_S_C190 +
               ' AND EF_NFS.EMPRESAID = ' + cdsP.FieldByName('EMPRESAID').AsString +
               ' AND EF_NFS.NFSID = ' + cdsP.FieldByName('NFSID').AsString +
               ' AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( cdsP.FieldByName('DATAEMISSAOID').AsString ) +
               Select_EFD_S_C190B;
     end;
 end;

 try
  ProcessaCargaEFDPesquisa( iSQL, cds, 'SITTRIBUTARIAESTADUAL' );
  TGrpItem := TGrpItem + cds.RecordCount;
  TBloco0  := TBloco0 + cds.RecordCount;

  cds.First;
  while not cds.Eof do
  begin
   Write( F, AddDel('|C190'));
   Write( F, AddDel( cds.FieldByName('SITTRIBUTARIAESTADUAL').AsString ) );
   Write( F, AddDel( cds.FieldByName('CFOP').AsString ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('ALIQUOTAICMS').AsCurrency ) ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLR_OPR').AsCurrency ) ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRBASEICMS').AsCurrency ) ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRICMS').AsCurrency ) ) );
   Write( F, AddDel('0,00') ); // 08
   Write( F, AddDel('0,00') ); // 09
   Write( F, AddDel('0,00') ); // 10
   Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRIPI').AsCurrency ) ) );
   Writeln( F,AddDel( cds.FieldByName('OBSERVACAOID').AsString ) );
   cds.Next;
  end;
 finally
  FreeAndNil( cds );
 end;
end;

// Registro H0005: Totais do inventário
procedure TfrmIntegracao.RegistroH005;
var cds : TClientDataSet;
   iSQL    : String;
   CustoTotal : Currency;
begin
  iSQL  := 'SELECT EF_PRODUTO.EMPRESAID,' +
                     '       EF_PRODUTO.PRODUTOID,' +
                     '       EF_PRODUTO.DESCRICAOPORTUGUES,' +
                     '       EF_PRODUTO.SUBGRUPOID,' +
                     '       EF_EMPRESA.CPF_CNPJ, ' +
                     '       EF_EMPRESA.INSCRESTADUAL, ' +
                     '       EF_SUBGRUPO.DESCRICAO,' +
                     '       EF_PRODUTO.UNIDADEID,' +
                     '       EF_PRODUTO.LOCALIZACAO,' +
                     '       EF_PRODUTO.PARTNUMBERID,' +
                     '       EF_PRODUTO.APLICACAO,' +
                     '       EF_GRUPO.SIGLAGRUPO,' +
                     '       EF_PRODUTO.NCMID,' +
                     '       EF_PRODUTO.ORIGEM,' +
                     '       EF_PRODUTO.CONTACTBATIVO, ' +
                     '       EF_KDX_POSICAO.NUMDOCUMENTO,' +
                     '       EF_KDX_POSICAO.DATAOCORRENCIA,' +
                     '       EF_KDX_POSICAO.QUANTIDADESALDO,' +
                     '       EF_KDX_POSICAO.VLRCUSTOMEDIO,' +
                     '       EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL' +
                     '  FROM EF_PRODUTO,' +
                     '       EF_SUBGRUPO,' +
                     '       EF_EMPRESA, ' +
                     '       EF_GRUPO,' +
                     '       (SELECT EMPRESAID,' +
                     '               PRODUTOID,' +
                     '               NUMDOCUMENTO,' +
                     '               DATAOCORRENCIA,' +
                     '               QUANTIDADESALDO,' +
                     '               NVL(VLRCUSTOMEDIO, 0) VLRCUSTOMEDIO,' +
                     '               NVL(VLRCUSTOMEDIOTOTAL, 0) VLRCUSTOMEDIOTOTAL' +
                     '          FROM EF_KARDEX' +
                     '         WHERE (EMPRESAID, PRODUTOID, DATAOCORRENCIA, KARDEXID) IN' +
                     '               (SELECT EMPRESAID,' +
                     '                       PRODUTOID,' +
                     '                       MAX(DATAOCORRENCIA),' +
                     '                       MAX(KARDEXID)' +
                     '                  FROM EF_KARDEX' +
                     '                 WHERE DATAOCORRENCIA <= TO_DATE( '+QuotedStr( wwdbdtpcktEFDInvent.Text )+','+ QuotedStr('DD/MM/YYYY')+ ')' +
                     '                 GROUP BY EMPRESAID, PRODUTOID)' +
                     '         ORDER BY 1, 2) EF_KDX_POSICAO ' +
                     ' WHERE EF_PRODUTO.EMPRESAID = EF_KDX_POSICAO.EMPRESAID' +
                     '   AND EF_PRODUTO.PRODUTOID = EF_KDX_POSICAO.PRODUTOID' +
                     '   AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRUPO.SUBGRUPOID(+)' +
                     '   AND EF_PRODUTO.EMPRESAID = EF_EMPRESA.EMPRESAID ' +
                     '   AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)' +
                     //                     '   AND NVL(EF_KDX_POSICAO.VLRCUSTOMEDIOTOTAL, 0) > 0' +
                     '   AND NVL(EF_KDX_POSICAO.QUANTIDADESALDO, 0) > 0' +
                     '   AND ( EF_PRODUTO.EMPRESAID = '+ IntToStr( EmpresaAtualId )+') ';
 iSQL := iSQL + 'ORDER BY EF_PRODUTO.NCMID';

 try
  ExecDynamicProvider( -1,iSQL,cds );

  cds.AddIndex('idx1','NCMID;PRODUTOID',[ixCaseInsensitive],'','',0);
  cds.IndexName := 'idx1';

  CustoTotal := 0;
  TBloco0    := TBloco0 + cds.RecordCount;

  cds.First;
  while not cds.Eof do
  begin
   CustoTotal := CustoTotal + cds.FieldByName('VLRCUSTOMEDIOTOTAL').AsFloat;
   cds.Next;
  end;

  EFD_Bloco9_Insert( 'H005', 1 );

  // Registro H005: Totais do inventário
  Write( F, AddDel('|H005'));
  Write( F, AddDel( FormatDateTime('ddmmyyyy', wwdbdtpcktEFDInvent.Date ) ) );
  Writeln( F, AddDel( FormatFloat(Mask_PtFlut, CustoTotal) ) );


  EFD_Bloco9_Insert( 'H010', cds.RecordCount );
  // Registro H010: Inventário
  cds.First;
  while not cds.Eof do
  begin
   Write( F, AddDel('|H010'));
   Write( F, AddDel( cds.FieldByName('EMPRESAID').AsString + cds.FieldByName('PRODUTOID').AsString ) );
   Write( F, AddDel( cds.FieldByName('UNIDADEID').AsString ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut3, cds.FieldByName('QUANTIDADESALDO').AsCurrency ) ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut6, cds.FieldByName('VLRCUSTOMEDIO').AsCurrency ) ) );
   Write( F, AddDel( FormatFloat(Mask_PtFlut, cds.FieldByName('VLRCUSTOMEDIOTOTAL').AsCurrency ) ) );
   Write( F, AddDel( '0' ) );
   Write( F, AddDel( '' ) );
   Write( F, AddDel( '' ) );
   Writeln( F, AddDel( cds.FieldByName('CONTACTBATIVO').AsString ) );
   cds.Next;
  end;

 finally
  FreeAndNil( cds );
 end;
end;

// Registro 9900: Registros do arquivo
function TfrmIntegracao.Registro9900 : Integer;
var TBloco9 : Integer;
begin
 TBloco9 := 0;
 TBloco0 := TBloco0 + cdsEFD_TBloco.RecordCount;

 cdsEFD_TBloco.First;
 while not cdsEFD_TBloco.Eof do
 begin
  Write( F, AddDel('|9900' ));
  Write( F, AddDel( cdsEFD_TBloco.FieldByName('REG_BLC').AsString ));
  Writeln( F, AddDel( cdsEFD_TBloco.FieldByName('QTD_REG_BLC').AsString ) );

  TBloco9 := TBloco9 + cdsEFD_TBloco.FieldByName('QTD_REG_BLC').AsInteger;

  cdsEFD_TBloco.Next;
 end;
 Result := TBloco9;
end;

procedure TfrmIntegracao.EFD_Bloco9_Insert( Reg : String; Qtd : Integer );
begin
 if cdsEFD_TBloco.FindKey([Reg]) then
    begin
     cdsEFD_TBloco.Edit;
     cdsEFD_TBloco.FieldByName('QTD_REG_BLC').AsInteger := cdsEFD_TBloco.FieldByName('QTD_REG_BLC').AsInteger + Qtd;
    end
 else
   cdsEFD_TBloco.InsertRecord([Reg, Qtd]);
end;

procedure TfrmIntegracao.ProcessarNotaEFD;
var  NomeArq : String;
     TBloco9 : Integer;
begin
 // Site Receita da Fazenda - EFD - Escrituração Fiscal Digital
 TBloco0 := 0;

 NomeArq       := ExtractFilePath( Application.ExeName ) + 'EFD\' +
                  'EFD' + FormatDateTime( 'yyyymmdd', Date ) + '.TXT';
 LogHist( 'Inicio de processamento...', True, 2 );
 LogHist( NomeArq, False, 2 );

 AtivarArquivoTxt( F, NomeArq );

 if cdsEFD_TBloco.FieldCount = 0 then
    begin
     cdsEFD_TBloco.FieldDefs.Add( 'REG_BLC', ftString,4,true );
     cdsEFD_TBloco.FieldDefs.Add( 'QTD_REG_BLC', ftInteger,0,true );
     cdsEFD_TBloco.CreateDataSet;

     cdsEFD_TBloco.AddIndex('idx1','REG_BLC',[ixPrimary] );
     cdsEFD_TBloco.IndexName := 'idx1';
    end;

 try
  try
   Registro0000;
   Registro0001( '0001', '0' );
   Registro0005;
   Registro0100; // 4 total linhas
   Registro0150;  // Cliente

   EFD_Bloco9_Insert( '0150', TBloco0 );

   Registro0190; // Identificação das unidades de medida;
   Registro0200; // Tabela de Identificação do item (Produto e Serviços)
   Registro0400; // Tabela de Natureza da Operação / Prestação
   Registro0450; // Tabela de Informação complementar do documento fiscal
   Registro0460; // Tabela de Observações do lançamento fiscal

   EFD_EncerrarBloco( '0990',  TBloco0 + 5 );

   EFD_Bloco9_Insert( '0000', 1 );
   EFD_Bloco9_Insert( '0001', 1 );
   EFD_Bloco9_Insert( '0005', 1 );
   EFD_Bloco9_Insert( '0100', 1 );
   EFD_Bloco9_Insert( '0990', 1 );

   // Bloco C : Documentos Fiscis I - Mercdorias (ICMS/IPI)
   TBloco0 := 1;
   Registro0001( 'C001', '0' );
   EFD_Bloco9_Insert( 'C001', 1 );

   // Processar entradas / saídas
   EFD_Entrada;
   EFD_Saida;

   EFD_EncerrarBloco( 'C990', TBloco0 - 1);
   EFD_Bloco9_Insert( 'C990', 1 );

   // Bloco D : Documentos fiscais II Serviços (ICMS)
   Registro0001( 'D001', '1' );
   EFD_Bloco9_Insert( 'D001', 1 );

   EFD_EncerrarBloco( 'D990', 2 );
   EFD_Bloco9_Insert( 'D990', 1 );

   // Bloco E : Apuração do ICMS e do IPI
   Registro0001( 'E001', '1' );
   EFD_Bloco9_Insert( 'E001', 1 );
   EFD_EncerrarBloco( 'E990', 2 );
   EFD_Bloco9_Insert( 'E990', 1 );

   // Bloco H : Inventário Físico
   TBloco0 := 3;
   if not chkbxEFDInvent.Checked then
      begin
       EFD_Bloco9_Insert( 'H001', 1 );
       EFD_Bloco9_Insert( 'H990', 1 );
       Registro0001( 'H001', '1' );
       Registro0001( 'H990', '2' );
      end
   else
      begin
       EFD_Bloco9_Insert( 'H001', 1 );
       EFD_Bloco9_Insert( 'H990', 1 );

       Registro0001( 'H001', '0' );
       RegistroH005;
       EFD_EncerrarBloco( 'H990', TBloco0 );
      end;

   // Bloco 1 : Outras informações
   EFD_Bloco9_Insert( '1001', 1 );
   Registro0001( '1001', '1' );

   EFD_Bloco9_Insert( '1990', 1 );
   EFD_EncerrarBloco( '1990', 2 );

   // Bloco 9 : Controle e encerramento do arquivo digital
   TBloco0 := 3;
   EFD_Bloco9_Insert( '9001', 1 );
   Registro0001( '9001', '0' );

   EFD_Bloco9_Insert( '9900', cdsEFD_TBloco.RecordCount + 3 );
   EFD_Bloco9_Insert( '9990', 1 );
   EFD_Bloco9_Insert( '9999', 1 );

   TBloco9 := Registro9900;
   EFD_EncerrarBloco( '9990', TBloco0 );

   EFD_EncerrarBloco( '9999', TBloco9 );

   if TBloco0 > 1 then
      begin
       LogHist('Arquivo Gerado com sucesso ' );
       Messagedlg('Arquivo Gerado com sucesso ',mtConfirmation,[mbok],0)
      end
   else
      begin
       LogHist('Nenhuma Nota foi Gerada !' );
       Messagedlg('Nenhuma Nota foi Gerada !',mtInformation,[mbOK],0);
      end;

  except on
   E : Exception do
   begin
    LogHist( E.Message );
    raise Exception.Create(E.Message);
   end;
  end;

 finally
  CloseFile( F );
 end;
end;

procedure TfrmIntegracao.btnEFDClick(Sender: TObject);
begin
 { Dados para validação no site:
   Usuário = TOSHIBAMEDICAL
   Senha   = TOSHI1974 }
 ProcessarNotaEFD;
end;

function TfrmIntegracao.ProcurarMunicipio( Municipio : String; SiglaUFID : String ) : string;
var cdsM  : TClientDataSet;
    sSQL1, sSQL2 : String;
begin
 cdsM   := nil;
 Result := '';
 sSQL1  := 'SELECT MUNICIPIOIBGEID FROM EF_MUNICIPIOIBGE ' +
           ' WHERE DESCRICAO = ' + QuotedStr( UpperCase(  Municipio ) ) +
           ' AND SIGLAUFID = ' + QuotedStr( UpperCase( SiglaUFID ) );

 sSQL2  := 'SELECT MUNICIPIOIBGEID FROM EF_MUNICIPIOIBGE ' +
           ' WHERE DESCRICAO2 = ' + QuotedStr( UpperCase( RemoverAcentos( Municipio ) ) ) +
           ' AND SIGLAUFID = ' + QuotedStr( UpperCase( SiglaUFID ) );

 try
  ExecDynamicProvider( -1, sSQL1, cdsM );

  if cdsM.RecordCount = 0 then
     begin
      ExecDynamicProvider( -1,sSQL2,cdsM );
      if cdsM.RecordCount > 0 then
         Result := cdsM.FieldByName('MUNICIPIOIBGEID').AsString
     end
  else
     Result := cdsM.FieldByName('MUNICIPIOIBGEID').AsString;

  cdsM.Close
 finally
  FreeAndNil( cdsM );
 end;
end;

function TfrmIntegracao.ProcurarPaisBacen( Pais : String ) : string;
var cdsM  : TClientDataSet;
    sSQL1, sSQL2 : String;
begin
 cdsM   := nil;
 Result := '';
 sSQL1  := 'SELECT '  +
           '  CODIGOPAISBACEN ' +
           '  FROM CP_PAISES' +
           ' WHERE NOMEPAISPORTUGUESSEMAC = ' + QuotedStr( RemoverAcentosII( Pais ) );
 try
  ExecDynamicProvider( -1, sSQL1, cdsM );

  if cdsM.RecordCount = 0 then
     begin
      ExecDynamicProvider( -1,sSQL2,cdsM );
      if cdsM.RecordCount > 0 then
         Result := cdsM.FieldByName('CODIGOPAISBACEN').AsString
     end
  else
     Result := cdsM.FieldByName('CODIGOPAISBACEN').AsString;

  cdsM.Close
 finally
  FreeAndNil( cdsM );
 end;
end;


procedure TfrmIntegracao.btneISSClick(Sender: TObject);
var sSQL : String;
    F    : TextFile;
    cds  : TClientDataSet;
  CodImp: string;

 function LimparString( Value : String ) : String;
 begin
  Value := SubstituiString( Value,',','.');
  Value := SubstituiString( Value,'"',' ');

  Result := Value;
 end;
begin
 PathExport := ExtractFilePath( Application.ExeName )+ 'EXPORT\EISS.TXT';
 AssignFile( F, PathExport );
 Rewrite(F);
 cds := nil;

 sSQL := select_eISS +
         ' AND EF_NFS.DATAEMISSAOID BETWEEN ' + QuotedStr( DateToStr( wwdtpckteISSINI.Date ) ) + ' AND ' +
                                                QuotedStr( DateToStr( wwdtpckteISSFIM.Date ) );
 try
  ExecDynamicProvider( -1,sSQL,cds );
  cds.First;
  while not cds.Eof do
  begin
   Write( F, AdicCaracter( cds.FieldByName('CPF_CNPJ').AsString, ' ', 14, 'D' ) );
   Write( F, FormatDateTime( 'DD/MM/YYYY', cds.FieldByName('DATAEMISSAOID').AsDateTime ) );
   Write( F, FormatDateTime( 'DD/MM/YYYY', cds.FieldByName('DATAVENCIMENTO').AsDateTime ) );
   Write( F, AdicCaracter( cds.FieldByName('NFSID').AsString,  ' ', 9, 'E' ) );
   Write( F, AdicCaracter( cds.FieldByName('TIPONOTA').AsString, ' ', 6, 'E' ) );
   Write( F, cds.FieldByName('SITUACAONOTA').AsString );
   Write( F, AdicCaracter( cds.FieldByName('SERIENOTA').AsString, '0', 5, 'D' ) );

   CodImp := AdicCaracter( cds.FieldByName('IMPOSTOSERVICOID').AsString, '0', 4, 'E' );

   Write( F, Copy( CodImp, 1,2 ) + '.' + Copy( CodImp, 3, 2 ) );
   Write( F, AdicCaracter( NrOnly ( ( FormatFloat( Mask_PtFlut, ConsisteValor(cds.FieldByName('VLRTOTALSERVICO').Value ) ) ), '' ), '0', 16,'E' ) );
   Write( F, AdicCaracter( cds.FieldByName('DEDUCAO').AsString, '0', 16 ) );
   Write( F, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cds.FieldByName('VLRSERVICO').Value ) ) ), '' ) , '0', 16,'E' ) );
   Write( F, AdicCaracter( NrOnly ( ( FormatFloat(Mask_PtFlut, ConsisteValor(cds.FieldByName('VLRISS').Value ) ) ), '' ) , '0', 16,'E' ) );

   if cds.FieldByName('UF_TOMADOR').Value <> 'EX' then
      begin
       Write( F, AdicCaracter( cds.FieldByName('CPFCNPJ_TOMADOR').AsString, ' ', 14, 'D' ) );
       Write( F, AdicCaracter( ProcurarMunicipio( cds.FieldByName('MUNICIPIO_TOMADOR').AsString, cdsAuxNfsPesquisa.FieldByName('UF_TOMADOR').AsString ), ' ', 7, 'D' )  );
       Write( F, AdicCaracter( cds.FieldByName('UF_TOMADOR').AsString, ' ', 2, 'D' ) );
      end
   else
      begin
       Write( F, AdicCaracter( 'nao consta', ' ', 14, 'D' ) );
       Write( F, '9999999' );
       Write( F, AdicCaracter( 'XX', ' ', 2, 'D' ) );
      end;

   Writeln( F, TransfNum( cds.FieldByName('ISSDEVIDO').AsString ) );

   cds.Next;
  end;

  cds.Close;
  MessageDlg( 'Exportação Realizada!', mtInformation, [mbOK], 0 );
 finally
  CloseFile(F);
  FreeAndNil( cds );
 end;
end;

procedure TfrmIntegracao.GeraMovimentacao(DataInicial,
  DataFinal: TDateTime);
var iSQL,Path : String;
    cdsIntMemo,
    cdsIntDespesa    : TClientDataSet;
    dsIntDespesa     : TDataSource;
    F : TextFile;
begin
 iSQL := 'SELECT RD_RDVITEM.RDVID,'+
         '       RD_RDVITEM.DATAMOVIMENTOID,'+
         '       RD_RDVITEM.ITEMID,'+
         '       RD_RDVITEM.DATAFECHAMENTO'+
         '  FROM RD_RDVITEM'+
         ' WHERE RD_RDVITEM.DATACONTABILIZACAO BETWEEN '+ QuotedStr( DateToStr( DataInicial ) )+' AND'+
         '                                          '+ QuotedStr( DateToStr( DataFinal ) )+
         '   AND ( RD_RDVITEM.OPERACAOID = 11 OR'+
         '         RD_RDVITEM.OPERACAOID = 16 ) ';

 if RgpTipoRdv.ItemIndex = 0 then
    iSQL := iSQL + '   AND RD_RDVITEM.TIPOMOEDA = ''R''   '
 else
    iSQL := iSQL + '   AND RD_RDVITEM.TIPOMOEDA = ''D''   ';

 iSQL := iSQL + ' ORDER BY RD_RDVITEM.RDVID ';

 try
   ExecDynamicProvider(-1, iSQL, cdsIntMemo );

   //Criando Client DataSet
   cdsIntDespesa := TClientDataSet.Create(nil);
   cdsIntDespesa.FieldDefs.Add( 'RDVID', ftInteger,0,true );
   cdsIntDespesa.FieldDefs.Add( 'ITEMID', ftInteger,0,true );
   cdsIntDespesa.FieldDefs.Add( 'DATAMOVIMENTOID', ftString,8,true );
   cdsIntDespesa.FieldDefs.Add( 'CAMPO1', ftString,3,true );
   cdsIntDespesa.FieldDefs.Add( 'CAMPO2', ftString,3,true );
   cdsIntDespesa.FieldDefs.Add( 'CDEBITO', ftString,30,false );
   cdsIntDespesa.FieldDefs.Add( 'CCREDITO', ftString,30,false );
   cdsIntDespesa.FieldDefs.Add( 'VLRDESPESA', ftFloat,0,true );
   cdsIntDespesa.FieldDefs.Add( 'CCUSTOID', ftString,30,true );
   cdsIntDespesa.FieldDefs.Add( 'DESCRICAO', ftString,100, true );
   cdsIntDespesa.CreateDataSet;

   cdsIntDespesa.AddIndex('idx1','RDVID',[ixPrimary] );
   cdsIntDespesa.IndexName := 'idx1';

   dsIntDespesa         := TDataSource.Create(nil);
   dsIntDespesa.DataSet := cdsIntDespesa;

   Path := ExtractFilePath( Application.ExeName )+'Integracao_ '+ FormatDateTime('mmyyyy', DataInicial ) + '.txt';
   AssignFile( F, Path );

   if not FileExists( Path ) then
      Rewrite( F )
   else if messagedlg('O Arquivo já existe deseja substituí-lo?', mtConfirmation, [mbyes,mbno],0 ) = mryes then
           Rewrite( F )
        else
           Append( F );

   try
    cdsIntMemo.First;
    while not cdsIntMemo.Eof do
    begin
     Integracao( F, cdsIntDespesa, cdsIntMemo.FieldByName('RDVID').AsInteger, cdsIntMemo.FieldByName('DATAFECHAMENTO').AsDateTime );
     cdsIntMemo.Next;
    end;
   except
    on E : Exception do
    raise Exception.Create( E.Message + ' Erro ocorrido com o Funcionario: '+ cdsIntMemo.FieldByName('RDVID').AsString  );
   end;

   cdsIntDespesa.IndexFieldNames := 'RDVID';
   cdsIntDespesa.First;
   while not cdsIntDespesa.Eof do
   begin
    //exportando Informações
    Write( F, '"'+ cdsIntDespesa.FieldByName('DATAMOVIMENTOID').AsString +'",' );
    Write( F, '"'+ cdsIntDespesa.FieldByName('CAMPO1').AsString +'",');
    Write( F, '"'+ cdsIntDespesa.FieldByName('CAMPO2').AsString +'",');

    if ( cdsIntDespesa.FieldByName('CDEBITO').AsString <> '' ) then
       begin
        Write( F, '"'+ cdsIntDespesa.FieldByName('CDEBITO').AsString+ '",' ); //Conta Devedora
        Write( F, '"",' );
       end
    else
       begin
        Write( F, '"",' );
        Write( F, '"'+ cdsIntDespesa.FieldByName('CCREDITO').AsString+ '",' ); //Conta Credora
       end;

    Write( F, '"'+ FormatFloat( '0000000000.00', cdsIntDespesa.FieldByName('VLRDESPESA').AsFloat ) + '",' );
    Write( F, '"'+ cdsIntDespesa.FieldByName('CCUSTOID').AsString + '",' );
    Writeln( F,'"'+ cdsIntDespesa.FieldByName('DESCRICAO').AsString +'"');

    cdsIntDespesa.Next;
   end;

   if not cdsIntDespesa.IsEmpty then
      begin
       frmExportar := TfrmExportar.Create(nil);
       frmExportar.DataSource := dsIntDespesa;
       frmExportar.ShowModal;
       MessageDlg('Exportação de lançamentos realizada com Sucesso!'+
              #13+ 'Arquivo Gera em: '+ Path , mtInformation, [mbOk], 0);
      end
   else
      MessageDlg('Nenhum registro Gerado!', mtWarning, [mbok],0 );

 finally

  CloseFile( F );
  cdsIntMemo.Close;
  cdsIntDespesa.Close;
  FreeAndNil( cdsIntDespesa );
  FreeAndNil( cdsIntMemo );
 end;
end;

procedure TfrmIntegracao.edtNomeChange(Sender: TObject);
begin
 cds.Locate('NOME',edtNome.Text,[ loPartialKey,loCaseInsensitive ] );
end;

procedure TfrmIntegracao.edtFuncionarioChange(Sender: TObject);
begin
 cds.Locate('ENTIDADEID',edtFuncionario.Text,[ loPartialKey,loCaseInsensitive ] );
end;

procedure TfrmIntegracao.chkbxEFDInventClick(Sender: TObject);
begin
 if chkbxEFDInvent.Checked then
    begin
     wwdbdtpcktEFDInvent.Enabled := True;
     wwdbdtpcktEFDInvent.Date    := LastDayOfYear( Now );
    end;
end;

procedure TfrmIntegracao.ckbIndividualClick(Sender: TObject);
var iSQL : String;
begin
 iSQL := 'SELECT ENTIDADEID,'+
         '       NOME'+
         '  FROM EF_ENTIDADE'+
         ' WHERE EF_ENTIDADE.ENTIDADEID >= 50000';

 try
  ExecDynamicProvider( -1,iSQL, cds );

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;

 if ckbIndividual.Checked then
    GroupBox10.Visible := True
 else
    GroupBox10.Visible := False;

end;

procedure TfrmIntegracao.DBGrid2DblClick(Sender: TObject);
begin
 try
  cdsFuncionario.Insert;
  cdsFuncionario.FieldByName('FUNCIONARIOID').AsInteger := cds.Fields[0].AsInteger;
  cdsFuncionario.FieldByName('NOME').AsString := cds.Fields[1].AsString;
  cdsFuncionario.Post;
 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;        
end;

procedure TfrmIntegracao.DBGrid3DblClick(Sender: TObject);
begin
 try
  cdsFuncionario.Delete;
  except on
   E : Exception do
   raise Exception.Create(E.Message);
  end;
end;


procedure TfrmIntegracao.LogHist( Text : String; Limpar : Boolean = False; Memo : Integer = 1 );
begin
 if Memo = 1 then
    begin
     if Limpar then
        wwDBRichEditMSWord1.Lines.Clear;
     wwDBRichEditMSWord1.Lines.Add( Text)
    end;

 if Memo = 2 then
    begin
     if Limpar then
        wwDBRichEditMSWord2.Lines.Clear;
     wwDBRichEditMSWord2.Lines.Add( Text)
    end;
end;

procedure TfrmIntegracao.ExportREDFTipo10;
var DtIni, DtFim : String;
begin
 Write( F, AddDel('10'));
 Write( F, AddDel('1,00'));
 Write( F, AddDel( cdsNF.FieldByName( 'CPFCNPJEMPRESA' ).AsString));

 if chkbx1Nota.Checked then
    begin
     DtIni := wwdtpcktDt.Text;
     DtFim := wwdtpcktDt.Text;
    end
 else
    begin
     DtIni := wwdtpcktDtIni.Text;
     DtFim := wwdtpcktDtFim.Text;
    end;

 Write( F, AddDel( DtIni ) );
 Writeln( F, DtFim );
end;

procedure TfrmIntegracao.ExportREDFTipo20( TipoNota : Integer );
begin
 Write( F, AddDel('20') );
 Write( F, AddDel('I') );
 Write( F, AddDel('') );
 Write( F, AddDel( cdsNF.FieldByName('DESCRICAOOPERACAONOTA').AsString ) );
 Write( F, AddDel('0') );
 Write( F, AddDel( StrZero( cdsNF.FieldByName('NOTAID').AsInteger, 9, 0 ) ) );
 Write( F, AddDel( FormatDateTime( 'DD/MM/YYYYY hh:nn:ss', cdsNF.FieldByName('DATAEMISSAOID').AsDateTime ) ) );

 if TipoNota = 0 then
    Write( F, AddDel( FormatDateTime( 'DD/MM/YYYYY hh:nn:ss', cdsNF.FieldByName('DATAENTRADA').AsDateTime ) ) )
 else
    Write( F, AddDel('') );

 Write( F, AddDel( IntToStr( TipoNota ) ) );
 Write( F, AddDel( cdsNF.FieldByName('CFOP').AsString ) );

 // James: Não é necessário 08/07/2009 14:04
 Write( F, AddDel('') );
 Write( F, AddDel( TransfNum( cdsNF.FieldByName('INSCRMUNICIPAL').AsString ) ) );

 if cdsNF.FieldByName('SIGLAUFID').AsString <> 'EX' then
    Write( F, AddDel( TransfNum( cdsNF.FieldByName('CPFCNPJ_DESTINATARIO').AsString ) ) )
 else
    Write( F, AddDel('') );

 Write( F, AddDel( Copy( cdsNF.FieldByName( 'NOME' ).AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy(cdsNF.FieldByName('ENDERECO').AsString, 1, 60 ) ) );

 if cdsNF.FieldByName('SIGLAUFID').AsString <> 'EX' then
    Write( F, AddDel( Copy( cdsNF.FieldByName('NUMERO').AsString, 1, 60 ) ) )
 else
   Write( F, AddDel('EXTERIOR') );

 Write( F, AddDel( Copy( cdsNF.FieldByName('COMPLEMENTO').AsString, 1, 60 ) ) );

 if cdsNF.FieldByName('SIGLAUFID').AsString <> 'EX' then
    Write( F, AddDel( Copy( cdsNF.FieldByName('BAIRRO').AsString, 1, 60 ) ) )
 else
    Write( F, AddDel('EXTERIOR') );

 Write( F, AddDel( Copy( cdsNF.FieldByName('CIDADE').AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('SIGLAUFID').AsString, 1, 2 ) ) );
 Write( F, AddDel( FormatFloat( '00000000;1;',cdsNF.FieldByName( 'CEPID' ).AsInteger ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('PAIS').AsString, 1, 60 ) ) );
 Write( F, AddDel('') );
 Writeln( F, TransfNum( cdsNF.FieldByName('INSCRESTADUAL').AsString ) );
end;

procedure TfrmIntegracao.ExportREDFTipo30( ProdServId : String; Descr : WideString; VlrUnit, VlrTotal : Currency;
  TipoReg : String = 'P' ) ;
begin
 Write( F, AddDel('30') );
 Write( F, AddDel( ProdServId ) );
 Write( F, AddDel( Descr ) );

 if TipoReg = 'P' then
    begin
     Write( F, AddDel( cdsNFItem.FieldByName('NCMID').AsString ) );
     Write( F, AddDel( cdsNFItem.FieldByName('UNIDADEID').AsString ) );
     Write( F, AddDel( ( FormatFloat(Mask_PtFlut4, cdsNFItem.FieldByName('QUANTIDADE').AsCurrency ) ) ) );
    end
 else
    begin
     Write( F, AddDel('') );
     Write( F, AddDel('') );
     Write( F, AddDel( ( FormatFloat(Mask_PtFlut4, 1 ) ) ) );
    end;

 Write( F, AddDel( ( FormatFloat(Mask_PtFlut4, VlrUnit ) ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, VlrTotal ) ) );

 if TipoReg = 'P' then
    begin
     Write( F, AddDel( cdsNFItem.FieldByName('SITTRIBUTARIAESTADUAL').AsString ) );
     Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNFItem.FieldByName('ALIQUOTAICMS').AsCurrency ) ) );
     Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNFItem.FieldByName('ALIQUOTAIPI').AsCurrency ) ) );
     WriteLN( F, FormatFloat(Mask_PtFlut, cdsNFItem.FieldByName('VLRIPI').AsCurrency ) );
    end
 else
    begin
     Write( F, AddDel('') );
     Write( F, AddDel('') );
     Write( F, AddDel('') );
     WriteLN( F, AddDel('') );
    end;
end;

procedure TfrmIntegracao.ExportREDFTipo40( AliquotaISS : Currency );
begin
 Write( F, AddDel('40') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALBASEICMS').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALICMS').AsCurrency ) ) );
 Write( F, AddDel('0,00') );
 Write( F, AddDel('0,00') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALPRODUTO').AsCurrency + cdsNF.FieldByName('VLRTOTALSERVICO').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRFRETE').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRSEGURO').AsCurrency ) ) );
 Write( F, AddDel('0,00') );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALIPI').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRDESPESAACESSORIA').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALNOTA').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALSERVICO').AsCurrency ) ) );
 Write( F, AddDel( FormatFloat(Mask_PtFlut, AliquotaISS ) ) );
 Writeln( F, FormatFloat(Mask_PtFlut, cdsNF.FieldByName('VLRTOTALISS').AsCurrency ) );
end;

procedure TfrmIntegracao.ExportREDFTipo50( TipoReg : String = 'P' );
begin
 Write( F, AddDel('50') );
 Write( F, AddDel( cdsNF.FieldByName('MODFRETE').Value ) );
 Write( F, AddDel( TransfNum( cdsNF.FieldByName('CPFCNPJTRANSP').AsString ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName( 'NOMETRANSP' ).AsString, 1, 60 ) ) );
 Write( F, AddDel( TransfNum( cdsNF.FieldByName('INSCRESTADUALTRANSP').AsString ) ) );
 Write( F, AddDel( Copy( trim( cdsNF.FieldByName('ENDERECOTRANSP').AsString ) + ' ' + trim( cdsNF.FieldByName('NUMEROTRANSP').AsString ), 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('CIDADETRANSP').AsString, 1, 60 ) ) );
 Write( F, AddDel( Copy( cdsNF.FieldByName('SIGLAUFIDTRANSP').AsString, 1, 2 ) ) );
 Write( F, AddDel( '' ) );
 Write( F, AddDel( '' ) );

 if TipoReg = 'P' then
    begin
     Write( F, AddDel( StrZero( cdsNF.FieldByName('EMBQTDVOLUMES').AsInteger, 15, 0 ) ) );
     Write( F, AddDel( Copy( cdsNF.FieldByName('EMBESPECIE').AsString, 1, 60 ) ) );
     Write( F, AddDel( Copy( cdsNF.FieldByName('EMBMARCA').AsString, 1, 60 ) ) );
     Write( F, AddDel( Copy( cdsNF.FieldByName('EMBNUMERO').AsString, 1, 60 ) ) );
     Write( F, AddDel( FormatFloat(Mask_PtFlut3, cdsNF.FieldByName('EMBPESOLIQUIDO').AsCurrency ) ) );
     Writeln( F, FormatFloat(Mask_PtFlut3, cdsNF.FieldByName('EMBPESOBRUTO').AsCurrency ) );
    end
 else
    begin
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Write( F, AddDel( '' ) );
     Writeln( F, AddDel( '' ) );
    end;
end;

procedure TfrmIntegracao.ExportREDFTipo60;
var i, x : Integer;
var DescrServ, DescrRet, Obs : WideString;
begin
 DescrServ := ' ';
 if cdsNF.FieldByName('VLRTOTALSERVICO').AsCurrency > 0 then
    DescrServ := 'DISPENSADO DA RETENÇÃO DO INSS CONF. CONF. IN/MPS/SRP 3/2005,POR NÃO SE TRATAR DE SERV POR "CESSÃO DE M.O".';

 Write( F, AddDel('60') );
 Write( F, AddDel( DescrServ  ) );

 // Tratar o campo para ficar no padrão da receita
 Obs := ReplaceText( cdsNF.FieldByName('OBS').AsString, #13, '' );
 Obs := ReplaceStr( Obs, #$A, '' );

 DescrRet := '';
 x        := 0;
 for i := 1 to Length( Obs ) do
 begin
  Inc( x );
  if Copy( Obs, i, 1 ) = '#' then
     begin
       DescrRet := DescrRet + '|';
       x := 0;
       Continue;
     end;

  DescrRet := DescrRet + Copy( Obs, i, 1 );

  if x > 99 then
     begin
      DescrRet := DescrRet +  '|';
      x := 0;
     end;
 end;

 Writeln( F, AddDel( Copy( DescrRet, 1, 5000 ) ) );
end;

procedure TfrmIntegracao.ExportREDFTipo90( Total20, Total30, Total40_60 : Integer );
begin
 Write( F, AddDel('90') );
 Write( F, AddDel( StrZero( Total20, 5, 0 ) ) );
 Write( F, AddDel( StrZero( Total30, 5, 0 ) ) );
 Write( F, AddDel( StrZero( Total40_60, 5, 0 ) ) );
 Write( F, AddDel( StrZero( Total40_60, 5, 0 ) ) );
 Writeln( F, StrZero( Total40_60, 5, 0 ) );
end;

procedure TfrmIntegracao.ProcessarNotaREDF( TipoNota : Integer ); // 0 - Entrada 1- Saída
var  Processados, Total20, Total30, Total40_60 : Integer;
     NomeArq, Flag : String;
     VlrTotalNotas : Currency;
begin
 // Site REDF Registro eletrônica de nota fiscal
 Processados   := 1;
 Total20       := 0;
 Total30       := 0;
 Total40_60    := 0;
 VlrTotalNotas := 0;

 if TipoNota = 0 then
    Flag := 'E'
 else
    Flag := 'S';

 NomeArq       := ExtractFilePath( Application.ExeName ) + 'REDF\' +
                  'REDF' + FormatDateTime( 'yyyymmdd', Date ) + Flag +  '.TXT';
 LogHist( 'Inicio de processamento...', True );
 LogHist( NomeArq );

 AtivarArquivoTxt( F, NomeArq );

 try
  try
   ExportREDFTipo10;

   // Carregando dados da Nota de Mercadorias
   cdsNF.First;
   while not cdsNF.Eof do
   begin
    LogHist( 'Nota processada: ' + cdsNF.FieldByName('NOTAID').AsString + '-' + cdsNF.FieldByName('DATAEMISSAOID').AsString );

    // Processar itens de nota
    if cdsNFItem.FindKey([cdsNF.FieldByName('EMPRESAID').AsInteger,cdsNF.FieldByName('NOTAID').AsInteger, cdsNF.FieldByName('DATAEMISSAOID').AsDateTime]) then
       begin
        Inc( Total20 );
        ExportREDFTipo20( 1 ); // 0 - Entrada - 1 Saída

        while not cdsNFItem.Eof do
        begin
         if ( cdsNF.FieldByName('EMPRESAID').AsInteger <> cdsNFItem.FieldByName('EMPRESAID').AsInteger ) or
            ( cdsNF.FieldByName('NOTAID').AsInteger <> cdsNFItem.FieldByName('NOTAID').AsInteger ) or
            ( cdsNF.FieldByName('DATAEMISSAOID').AsDateTime <> cdsNFItem.FieldByName('DATAEMISSAOID').AsDateTime ) then
            break;

         Inc( Total30 );
         ExportREDFTipo30( cdsNFItem.FieldByName('PRODUTOID').AsString, cdsNFItem.FieldByName('DESCRICAOPRODUTO').AsString,
                           cdsNFItem.FieldByName('VLRPRECOUNITARIO').AsCurrency, cdsNFItem.FieldByName('VLRPRECOTOTAL').AsCurrency );

         VlrTotalNotas := VlrTotalNotas +  cdsNFItem.FieldByName('VLRPRECOTOTAL').AsCurrency;
         cdsNFItem.Next;
        end;
       end;

    // Nota de Saída
    if TipoNota = 1 then
       begin
        // Processar Serviços
        if cdsNFServ.FindKey([cdsNF.FieldByName('EMPRESAID').AsInteger,cdsNF.FieldByName('NOTAID').AsInteger, cdsNF.FieldByName('DATAEMISSAOID').AsDateTime]) then
           begin
            Inc( Total20 );
            ExportREDFTipo20( 1 );

            while not cdsNFServ.Eof do
            begin
             if ( cdsNF.FieldByName('EMPRESAID').AsInteger <> cdsNFItem.FieldByName('EMPRESAID').AsInteger ) or
                ( cdsNF.FieldByName('NOTAID').AsInteger <> cdsNFItem.FieldByName('NOTAID').AsInteger ) or
                ( cdsNF.FieldByName('DATAEMISSAOID').AsDateTime <> cdsNFItem.FieldByName('DATAEMISSAOID').AsDateTime ) then
                break;

             Inc( Total30 );
             ExportREDFTipo30( cdsNFServ.FieldByName('SERVICOID').AsString, cdsNFServ.FieldByName('DESCRICAOSERV').AsString,
                               cdsNFItem.FieldByName('VLRSERVICO').AsCurrency, cdsNFItem.FieldByName('VLRSERVICO').AsCurrency );

             VlrTotalNotas := VlrTotalNotas +  cdsNFItem.FieldByName('VLRPRECOTOTAL').AsCurrency;
             cdsNFServ.Next;
            end;
           end;
       end;

    Inc( Total40_60 );

    ExportREDFTipo40( 0 );
    ExportREDFTipo50;
    ExportREDFTipo60;

    Inc( Processados );
    cdsNF.Next;
   end;

   ExportREDFTipo90( Total20, Total30, Total40_60 );

   if Processados > 1 then
      begin
       LogHist('Arquivo Gerado com sucesso ' );
       Messagedlg('Arquivo Gerado com sucesso ',mtConfirmation,[mbok],0)
      end
   else
      begin
       LogHist('Nenhuma Nota foi Gerada !' );
       Messagedlg('Nenhuma Nota foi Gerada !',mtInformation,[mbOK],0);
      end;

  except on
   E : Exception do
   begin
    LogHist( E.Message );
    raise Exception.Create(E.Message);
   end;
  end;

 finally
  CloseFile( F );
 end;
end;

procedure TfrmIntegracao.GerarPesqREDF_NFS;
var iSQL : String;
begin
 // Carregando dados da Nota Fiscal de Saída
 if cdsNF.IndexFieldCount >= 1 then
    cdsNF.DeleteIndex('idx1');

 iSQL := Select_NFS;


 iSQL := iSQL + '  AND NVL( EF_NFS.CANCELADA, 0 ) = 0 ';

 iSQL := iSQL + '  AND NVL( EF_NATUREZAOP.DOCINTERNO, 0 ) = 0 ' +
                '  AND NVL( EF_NFS.VLRTOTALSERVICO, 0 ) = 0';

 if chkbx1Nota.Checked then
    iSQL := iSQL + ' AND EF_NFS.NFSID = ' + Edit3.Text +
                   ' AND EF_NFS.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
 else
    iSQL := iSQL + ' AND EF_NFS.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                   ' AND EF_NFS.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

 if chkbxEmpresa.Checked then
    iSQL := iSQL + ' AND EF_NFS.EMPRESAID = ' + IntToStr( EmpresaAtualId )
 else
    iSQL := iSQL + ' AND ( EF_NFS.EMPRESAID IN (1,2,3,4,5) ) ';

 try
  ExecDynamicProvider(-1,iSQL,cdsNF);

  cdsNF.AddIndex('idx1','EMPRESAID;NOTAID;DATAEMISSAOID',[ixPrimary]);
  cdsNF.IndexName := 'idx1';

  // Carregando os Ítens da Nota Fiscal de Saída
  cdsNFItem := nil;
  iSQL :=  Select_NFSItem;

  if chkbx1Nota.Checked then
     iSQL := iSQL + ' AND EF_NFSITEM.NFSID = ' + Edit3.Text +
                    ' AND EF_NFSITEM.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
  else
     iSQL := iSQL + '  AND EF_NFSITEM.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                    '  AND EF_NFSITEM.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

  if chkbxEmpresa.Checked then
     iSQL := iSQL + ' AND EF_NFSITEM.EMPRESAID = ' + IntToStr( EmpresaAtualId )
  else
     iSQL := iSQL + ' AND ( EF_NFSITEM.EMPRESAID IN (1,2,3,4,5) ) ';

  if not cdsNF.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsNFItem );

      if cdsNFItem.IndexFieldCount > 0 then
         cdsNFItem.DeleteIndex('idx1');

      cdsNFItem.AddIndex('idx1','EMPRESAID;NOTAID;DATAEMISSAOID;ITEMID',[ixPrimary]);
      cdsNFItem.IndexName := 'idx1';
     end
  else
     raise Exception.Create('Filtro de pesquisa de nota não retornou nenhum registro');

  // Carregar nota fiscal de Serviços
  cdsNFServ := nil;
  iSQL :=  Select_NFSServ;

  if chkbx1Nota.Checked then
     iSQL := iSQL + ' EF_NFSSERVICO.NFSID = ' + Edit3.Text +
                    ' AND EF_NFSSERVICO.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
  else
     iSQL := iSQL + ' EF_NFSSERVICO.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                    ' AND EF_NFSSERVICO.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

  if chkbxEmpresa.Checked then
     iSQL := iSQL + ' AND EF_NFSSERVICO.EMPRESAID = ' + IntToStr( EmpresaAtualId )
  else
     iSQL := iSQL + ' AND ( EF_NFSSERVICO.EMPRESAID IN (1,2,3,4,5) ) ';

  if not cdsNF.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsNFServ );

      if cdsNFServ.IndexFieldCount > 0 then
         cdsNFServ.DeleteIndex('idx1');

      cdsNFServ.AddIndex('idx1','EMPRESAID;NOTAID;DATAEMISSAOID;ITEMID',[ixPrimary]);
      cdsNFServ.IndexName := 'idx1';
     end
  else
     raise Exception.Create('Filtro de pesquisa de nota não retornou nenhum registro');

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

procedure TfrmIntegracao.GerarPesqREDF_NFE;
var iSQL : String;
begin
 // Carregando dados da Nota Fiscal de Saída
 if cdsNF.IndexFieldCount >= 1 then
     cdsNF.DeleteIndex('idx1');

 iSQL := Select_NFE;

 iSQL := iSQL + '  AND NVL( EF_NFE.CANCELADA, 0 ) = 0 ';

 if chkbx1Nota.Checked then
    iSQL := iSQL + ' AND EF_NFE.NFEID = ' + Edit3.Text +
                   ' AND EF_NFE.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
 else
    iSQL := iSQL + ' AND EF_NFE.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                   ' AND EF_NFE.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

 if chkbxEmpresa.Checked then
    iSQL := iSQL + ' AND EF_NFE.EMPRESAID = ' + IntToStr( EmpresaAtualId )
 else
    iSQL := iSQL + ' AND ( EF_NFE.EMPRESAID IN (1,2,3,4,5) ) ';

 try
  ExecDynamicProvider(-1,iSQL,cdsNF);

  cdsNF.AddIndex('idx1','EMPRESAID;NOTAID;DATAEMISSAOID',[ixPrimary]);
  cdsNF.IndexName := 'idx1';

  // Carregando os Ítens da Nota Fiscal de Entrada
  cdsNFItem := nil;
  iSQL :=  Select_NFEItem;

  if chkbx1Nota.Checked then
     iSQL := iSQL + ' AND EF_NFEITEM.NFEID = ' + Edit3.Text +
                    ' AND EF_NFEITEM.DATAEMISSAOID = '+ QuotedStr( wwdtpcktDt.Text )
  else
     iSQL := iSQL + '  AND EF_NFEITEM.DATAEMISSAOID >= '+ QuotedStr( wwdtpcktDtIni.Text )+
                    '  AND EF_NFEITEM.DATAEMISSAOID <= '+ QuotedStr( wwdtpcktDtFim.Text );

  if chkbxEmpresa.Checked then
     iSQL := iSQL + ' AND EF_NFEITEM.EMPRESAID = ' + IntToStr( EmpresaAtualId )
  else
     iSQL := iSQL + ' AND ( EF_NFEITEM.EMPRESAID IN (1,2,3,4,5) ) ';

  if not cdsNF.IsEmpty then
     begin
      ExecDynamicProvider(-1,iSQL,cdsNFItem );

      if cdsNFItem.IndexFieldCount > 0 then
         cdsNFItem.DeleteIndex('idx1');

      cdsNFItem.AddIndex('idx1','EMPRESAID;NOTAID;DATAEMISSAOID;ITEMID',[ixPrimary]);
      cdsNFItem.IndexName := 'idx1';
     end
  else
     raise Exception.Create('Filtro de pesquisa de nota não retornou nenhum registro');

 except on
  E : Exception do
  raise Exception.Create(E.Message);
 end;
end;

end.



