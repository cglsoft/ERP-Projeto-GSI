object Form1: TForm1
  Left = 198
  Top = 60
  Width = 733
  Height = 598
  BorderStyle = bsSizeToolWin
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 405
    Top = 43
    Width = 58
    Height = 13
    Caption = 'Posi'#231#227'o em:'
  end
  object Label4: TLabel
    Left = 5
    Top = 43
    Width = 37
    Height = 13
    Caption = 'Nota ID'
  end
  object lblPesquisar: TLabel
    Left = 5
    Top = 67
    Width = 41
    Height = 13
    Caption = 'NOTA id'
  end
  object pgctrlNOTA: TPageControl
    Left = 8
    Top = 96
    Width = 705
    Height = 404
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Sa'#237'das'
      object Label62: TLabel
        Left = 565
        Top = 10
        Width = 59
        Height = 13
        Caption = 'Requisitante'
      end
      object Label3: TLabel
        Left = 457
        Top = 10
        Width = 58
        Height = 13
        Caption = 'Data Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 374
        Top = 10
        Width = 63
        Height = 13
        Caption = 'N'#186' do Pedido'
      end
      object Label61: TLabel
        Left = 269
        Top = 10
        Width = 99
        Height = 13
        Caption = 'Ordem de Servi'#231'o ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 156
        Top = 10
        Width = 68
        Height = 13
        Caption = 'Data Emiss'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 77
        Top = 10
        Width = 38
        Height = 13
        Caption = 'N'#186' Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label60: TLabel
        Left = 6
        Top = 10
        Width = 55
        Height = 13
        Caption = 'Empresa ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 7
        Top = 51
        Width = 72
        Height = 13
        Caption = 'Observa'#231#227'o ID'
      end
      object Memo1: TMemo
        Left = 80
        Top = 267
        Width = 537
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 80
        Top = 168
        Width = 537
        Height = 89
        DataField = 'DESCRICAOOBSERVACAO'
        DataSource = dsNfs
        TabOrder = 1
      end
      object DBRichEdit1: TDBRichEdit
        Left = 80
        Top = 72
        Width = 537
        Height = 89
        DataField = 'DESCRICAOOBSERVACAO'
        DataSource = dsNfs
        TabOrder = 2
      end
      object DBEdit53: TDBEdit
        Left = 564
        Top = 24
        Width = 92
        Height = 21
        Color = clScrollBar
        DataField = 'REQUISITANTE'
        DataSource = dsNfs
        TabOrder = 3
      end
      object wwDBDateTimePicker4: TwwDBDateTimePicker
        Left = 459
        Top = 24
        Width = 101
        Height = 21
        Hint = 'Data do Pedido'
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clScrollBar
        DataField = 'DATAPEDIDO'
        DataSource = dsNfs
        Date = 38154.000000000000000000
        Epoch = 1950
        ReadOnly = True
        ShowButton = True
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 373
        Top = 24
        Width = 78
        Height = 21
        Color = clScrollBar
        DataField = 'PDSID'
        DataSource = dsNfs
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit3: TDBEdit
        Left = 270
        Top = 24
        Width = 98
        Height = 21
        Hint = 'N'#186' da Ordem de Servi'#231'o'
        TabStop = False
        Color = clScrollBar
        DataField = 'OSID'
        DataSource = dsNfs
        ReadOnly = True
        TabOrder = 6
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 156
        Top = 24
        Width = 109
        Height = 21
        Hint = 'Data do Pedido'
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clScrollBar
        DataField = 'DATAEMISSAOID'
        DataSource = dsNfs
        Date = 38154.000000000000000000
        Epoch = 1950
        ReadOnly = True
        ShowButton = True
        TabOrder = 7
      end
      object DBEdit1: TDBEdit
        Left = 76
        Top = 24
        Width = 77
        Height = 21
        Color = clScrollBar
        DataField = 'NFSID'
        DataSource = dsNfs
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit2: TDBEdit
        Left = 7
        Top = 24
        Width = 66
        Height = 21
        Hint = 'N'#186' da Empresa'
        TabStop = False
        Color = clScrollBar
        DataField = 'EMPRESAID'
        DataSource = dsNfs
        ReadOnly = True
        TabOrder = 9
      end
      object wwDBComboDlg6: TwwDBComboDlg
        Left = 78
        Top = 47
        Width = 77
        Height = 20
        Hint = 'Nat. N'#186' da Opera'#231#227'o: Observa'#231#227'o'
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        DataField = 'OBSERVACAOID'
        DataSource = dsNfs
        TabOrder = 10
        WordWrap = False
        UnboundDataType = wwDefault
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Entradas'
      ImageIndex = 1
      object Label5: TLabel
        Left = 6
        Top = 2
        Width = 55
        Height = 13
        Caption = 'Empresa ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 83
        Top = 3
        Width = 46
        Height = 13
        Caption = 'Pedido ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 164
        Top = 3
        Width = 74
        Height = 13
        Caption = 'Data do Pedido'
      end
      object Label6: TLabel
        Left = 437
        Top = 10
        Width = 99
        Height = 13
        Caption = 'Ordem de Servi'#231'o ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 557
        Top = 11
        Width = 59
        Height = 13
        Caption = 'Requisitante'
        FocusControl = DBEdit47
      end
      object DBEdit6: TDBEdit
        Left = 7
        Top = 16
        Width = 74
        Height = 21
        Hint = 'N'#186' da Empresa'
        TabStop = False
        Color = clScrollBar
        DataField = 'EMPRESAID'
        DataSource = dsNfe
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 82
        Top = 16
        Width = 80
        Height = 22
        Hint = 'N'#186' do Pedido'
        Color = clScrollBar
        DataField = 'PDEID'
        DataSource = dsNfe
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 164
        Top = 16
        Width = 89
        Height = 21
        Hint = 'Data do Pedido'
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clScrollBar
        DataField = 'DATAPEDIDO'
        DataSource = dsNfe
        Date = 38154.000000000000000000
        Epoch = 1950
        ReadOnly = True
        ShowButton = True
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 438
        Top = 24
        Width = 98
        Height = 21
        Hint = 'N'#186' da Ordem de Servi'#231'o'
        TabStop = False
        Color = clScrollBar
        DataField = 'OSID'
        DataSource = dsNfe
        ReadOnly = True
        TabOrder = 3
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 258
        Top = 2
        Width = 175
        Height = 46
        Hint = 'Tipo da Nota'
        Caption = '&Tipo de Nota'
        Color = clBtnFace
        Columns = 2
        DataField = 'TIPONOTA'
        DataSource = dsNfe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Comum'
          'Importada'
          'Fornecedor'
          'Sem Produto')
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'C'
          'I'
          'F'
          'S')
      end
      object DBEdit47: TDBEdit
        Left = 553
        Top = 24
        Width = 104
        Height = 21
        Hint = 'Nat. Opera'#231#227'o: Requisitante'
        TabStop = False
        Color = clScrollBar
        DataField = 'USUARIO'
        DataSource = dsNfe
        ReadOnly = True
        TabOrder = 5
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 48
        Width = 305
        Height = 97
        Caption = 'Descri'#231#227'o no corpo da Nota Fiscal de Importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object DBRichEdit2: TDBRichEdit
          Left = 2
          Top = 15
          Width = 301
          Height = 80
          Align = alClient
          DataField = 'DESCRICAOIMPORTACAO'
          DataSource = dsNfe
          TabOrder = 0
        end
      end
      object DBRichEdit3: TDBRichEdit
        Left = 320
        Top = 56
        Width = 369
        Height = 89
        DataField = 'DESCRICAOOBSERVACAO'
        DataSource = dsNfe
        TabOrder = 7
      end
      object DBMemo2: TDBMemo
        Left = 8
        Top = 144
        Width = 305
        Height = 89
        DataField = 'DESCRICAOIMPORTACAO'
        DataSource = dsNfe
        TabOrder = 8
      end
      object DBMemo3: TDBMemo
        Left = 320
        Top = 144
        Width = 369
        Height = 89
        DataField = 'DESCRICAOOBSERVACAO'
        DataSource = dsNfe
        TabOrder = 9
      end
      object Memo2: TMemo
        Left = 8
        Top = 235
        Width = 305
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 10
      end
      object Memo3: TMemo
        Left = 320
        Top = 235
        Width = 305
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 11
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 2
      object Label8: TLabel
        Left = 344
        Top = 8
        Width = 84
        Height = 13
        Caption = 'OBSERVACAOID'
        FocusControl = DBEdit4
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 305
        Height = 97
        Caption = 'Descri'#231#227'o no corpo da Nota Fiscal de Importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBRichEdit4: TDBRichEdit
          Left = 2
          Top = 15
          Width = 301
          Height = 80
          Align = alClient
          DataField = 'DESCRICAO'
          DataSource = dsObservacao
          TabOrder = 0
        end
      end
      object DBMemo4: TDBMemo
        Left = 8
        Top = 104
        Width = 305
        Height = 89
        DataField = 'DESCRICAO'
        DataSource = dsObservacao
        TabOrder = 1
      end
      object Memo4: TMemo
        Left = 8
        Top = 195
        Width = 305
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 344
        Top = 24
        Width = 121
        Height = 21
        DataField = 'OBSERVACAOID'
        DataSource = dsObservacao
        TabOrder = 3
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 190
    Top = 38
    Width = 107
    Height = 25
    Caption = 'Pesquisar DB'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object mktPesquisa: TMaskEdit
    Left = 54
    Top = 38
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 6
    Top = 6
    Width = 234
    Height = 25
    DataSource = dsNfs
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 480
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Corrigir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object wwdtpcktPosicao1: TwwDBDateTimePicker
    Left = 469
    Top = 40
    Width = 142
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 5
    UnboundDataType = wwDTEdtDate
  end
  object BitBtn3: TBitBtn
    Left = 326
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object wwdtpcktPosicao2: TwwDBDateTimePicker
    Left = 469
    Top = 64
    Width = 142
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ShowButton = True
    TabOrder = 7
    UnboundDataType = wwDTEdtDate
  end
  object BitBtn4: TBitBtn
    Left = 560
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Corrigir TODOS'
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 190
    Top = 62
    Width = 107
    Height = 25
    Caption = 'Pesquisar MEM'#211'RIA'
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object chkbxAtualizaBD: TCheckBox
    Left = 304
    Top = 8
    Width = 161
    Height = 17
    Caption = 'Atualiza no Banco de Dados'
    TabOrder = 10
  end
  object mktNFS_CDS: TMaskEdit
    Left = 54
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object sqlcnnTOSHIBA: TSQLConnection
    ConnectionName = 'TOSHIBA'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbexpora.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Oracle'
      'BlobSize=-1'
      'DataBase=TOSHIBA'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=GSI'
      'Oracle TransIsolation=ReadCommited'
      'User_Name=GSI')
    VendorLib = 'OCI.DLL'
    Left = 32
    Top = 360
  end
  object sqldtsNfs: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  EF_NFS.EMPRESAID,'#13#10'  EF_NFS.NFSID,'#13#10'  EF_NFS.DATAEMISS' +
      'AOID,'#13#10'  EF_NFS.CANCELADA,'#13#10'  EF_NFS.EXPORTADO,'#13#10'  EF_NFS.OSID,'#13 +
      #10'  EF_NFS.PDSID,'#13#10'  EF_NFS.DATAPEDIDO,'#13#10'  EF_NFS.REQUISITANTE,'#13#10 +
      '  EF_NFS.LIBCHEFIA,'#13#10'  EF_NFS.LIBCHEFIANOME,'#13#10'  EF_NFS.LIBCHEFIA' +
      'DATA,'#13#10'  EF_NFS.LIBFINANCEIRO,'#13#10'  EF_NFS.LIBFINANCEIRONOME,'#13#10'  E' +
      'F_NFS.LIBFINANCEIRODATA,'#13#10'  EF_NFS.LIBCONTABIL,'#13#10'  EF_NFS.LIBCON' +
      'TABILNOME,'#13#10'  EF_NFS.LIBCONTABILDATA,'#13#10'  EF_NFS.NFEID,'#13#10'  EF_NFS' +
      '.DATAEMISSAONFEID,'#13#10'  EF_NFS.TIPONOTAENTRADA,'#13#10'  EF_NFS.TIPONOTA' +
      ','#13#10'  EF_NFS.CATEGORIAID,'#13#10'  EF_NFS.ENTIDADEID,'#13#10'  EF_NFS.NOME,'#13#10 +
      '  EF_NFS.CEPID,'#13#10'  EF_NFS.NUMERO,'#13#10'  EF_NFS.COMPLEMENTO,'#13#10'  EF_N' +
      'FS.ENDERECO,'#13#10'  EF_NFS.BAIRRO,'#13#10'  EF_NFS.CIDADE,'#13#10'  EF_NFS.SIGLA' +
      'UFID,'#13#10'  EF_NFS.PAIS,'#13#10'  EF_NFS.ENDERECOENTREGA,'#13#10'  EF_NFS.ENDER' +
      'ECOCOBRANCA,'#13#10'  EF_NFS.CONTRIBUINTEICMS,'#13#10'  EF_NFS.NATUREZAOPID,' +
      #13#10'  EF_NATUREZAOP.CFOP AS L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPER' +
      'ACAOUSUARIO AS L_DESCRICAOOPERACAOUSUARIO,'#13#10'  EF_NATUREZAOP.DESC' +
      'RICAOOPERACAONOTA AS L_DESCRICAOOPERACAONOTA,'#13#10'  EF_NFS.CONDPAGT' +
      'OID,'#13#10'  EF_CONDPAGTO.DESCRICAO L_CONDICAOPAGTO,'#13#10'  EF_NFS.DESCRI' +
      'CAOCONDPAGTO,'#13#10'  EF_NFS.OBSERVACAOID,'#13#10'  EF_NFS.DESCRICAOOBSERVA' +
      'CAO,'#13#10'  EF_NFS.TRANSPORTADORID,'#13#10'  EF_ENTIDADE.NOME AS L_NOMETRA' +
      'NSPORTADOR,'#13#10'  EF_NFS.PLACAVEICULO,'#13#10'  EF_NFS.MODALIDADEFRETE,'#13#10 +
      '  EF_NFS.VLRFRETE,'#13#10'  EF_NFS.VLRSEGURO,'#13#10'  EF_NFS.VLRDESPESAACES' +
      'SORIA,'#13#10'  EF_NFS.EMBQTDVOLUMES,'#13#10'  EF_NFS.EMBNUMERO,'#13#10'  EF_NFS.E' +
      'MBMARCA,'#13#10'  EF_NFS.EMBESPECIE,'#13#10'  EF_NFS.EMBPESOBRUTO,'#13#10'  EF_NFS' +
      '.EMBPESOLIQUIDO,'#13#10'  EF_NFS.VLRTOTALSERVICO,'#13#10'  EF_NFS.VLRTOTALIS' +
      'S,'#13#10'  EF_NFS.VLRTOTALCOFINS,'#13#10'  EF_NFS.VLRTOTALPIS,'#13#10'  EF_NFS.VL' +
      'RTOTALBASEICMS,'#13#10'  EF_NFS.VLRTOTALICMS,'#13#10'  EF_NFS.VLRTOTALISENTA' +
      'SICMS,'#13#10'  EF_NFS.VLRTOTALOUTRASICMS,'#13#10'  EF_NFS.VLRTOTALBASEIPI,'#13 +
      #10'  EF_NFS.VLRTOTALIPI,'#13#10'  EF_NFS.VLRTOTALISENTASIPI,'#13#10'  EF_NFS.V' +
      'LRTOTALOUTRASIPI,'#13#10'  EF_NFS.VLRTOTALPRODUTO,'#13#10'  EF_NFS.VLRTOTALN' +
      'OTA,'#13#10'  EF_NFS.DATAIMPRESSAO,'#13#10'  EF_NFS.USUARIO'#13#10'  FROM'#13#10'  EF_NF' +
      'S EF_NFS,'#13#10'  EF_NATUREZAOP EF_NATUREZAOP,'#13#10'  EF_ENTIDADE EF_ENTI' +
      'DADE,'#13#10'  EF_CONDPAGTO EF_CONDPAGTO'#13#10' WHERE'#13#10'  EF_NATUREZAOP.NATU' +
      'REZAOPID (+) = EF_NFS.NATUREZAOPID'#13#10'  AND EF_ENTIDADE.ENTIDADEID' +
      ' (+) = EF_NFS.TRANSPORTADORID'#13#10'  AND EF_CONDPAGTO.CONDPAGTOID (+' +
      ') = EF_NFS.CONDPAGTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 100
    Top = 357
    object sqldtsNfsEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsNfsPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsNfsREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
    end
    object sqldtsNfsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsNfsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsNfsLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object sqldtsNfsLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object sqldtsNfsLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object sqldtsNfsLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object sqldtsNfsNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsNfsTIPONOTAENTRADA: TStringField
      FieldName = 'TIPONOTAENTRADA'
      Size = 1
    end
    object sqldtsNfsTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object sqldtsNfsCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsNfsCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsNfsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsNfsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsNfsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsNfsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsNfsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsNfsPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsNfsENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 100
    end
    object sqldtsNfsENDERECOCOBRANCA: TStringField
      FieldName = 'ENDERECOCOBRANCA'
      Size = 100
    end
    object sqldtsNfsCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsL_CONDICAOPAGTO: TStringField
      FieldName = 'L_CONDICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfsOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfsTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object sqldtsNfsMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object sqldtsNfsVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object sqldtsNfsEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object sqldtsNfsEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsVLRTOTALSERVICO: TBCDField
      FieldName = 'VLRTOTALSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALISS: TBCDField
      FieldName = 'VLRTOTALISS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object sqldtsNfsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfsItem: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT EF_NFSITEM.EMPRESAID,'#13#10'       EF_NFSITEM.NFSID,'#13#10'       E' +
      'F_NFSITEM.DATAEMISSAOID,'#13#10'       EF_NFSITEM.ITEMID,'#13#10'       EF_N' +
      'FSITEM.NATUREZAOPID,'#13#10'       EF_NFSITEM.OBSERVACAOID,'#13#10'       EF' +
      '_NFSITEM.DESCRICAOOBSERVACAO,'#13#10'       EF_NFSITEM.PRODUTOID,'#13#10'   ' +
      '    EF_NFSITEM.DESCRICAOPRODUTO,'#13#10'       EF_NFSITEM.QUANTIDADE,'#13 +
      #10'       EF_NFSITEM.VLRPRECOUNITARIO,'#13#10'       EF_NFSITEM.VLRPRECO' +
      'TOTAL,'#13#10'       EF_NFSITEM.PORCDESCONTO,'#13#10'       EF_NFSITEM.VLRDE' +
      'SCONTO,'#13#10'       EF_NFSITEM.VLRPRECOUNITDESC,'#13#10'       EF_NFSITEM.' +
      'VLRPRECOTOTALDESC,'#13#10'       EF_NFSITEM.NFEID,'#13#10'       EF_NFSITEM.' +
      'DATAEMISSAONFEID,'#13#10'       EF_NFSITEM.EMPENHO,'#13#10'       EF_NFSITEM' +
      '.QUANTIDADEEMPENHO,'#13#10'       EF_NFSITEM.RETORNO,'#13#10'       EF_NFSIT' +
      'EM.QTDRETORNA,'#13#10'       EF_NFSITEM.VLRBASEICMS,'#13#10'       EF_NFSITE' +
      'M.ALIQUOTAICMS,'#13#10'       EF_NFSITEM.VLRICMS,'#13#10'       EF_NFSITEM.V' +
      'LRISENTASICMS,'#13#10'       EF_NFSITEM.VLROUTRASICMS,'#13#10'       EF_NFSI' +
      'TEM.PORCREDUCAOICMS,'#13#10'       EF_NFSITEM.SITTRIBUTARIAESTADUAL,'#13#10 +
      '       EF_NFSITEM.ALIQUOTACOFINS,'#13#10'       EF_NFSITEM.VLRCOFINS,'#13 +
      #10'       EF_NFSITEM.ALIQUOTAPIS,'#13#10'       EF_NFSITEM.VLRPIS,'#13#10'    ' +
      '   EF_NFSITEM.VLRBASEIPI,'#13#10'       EF_NFSITEM.ALIQUOTAIPI,'#13#10'     ' +
      '  EF_NFSITEM.VLRIPI,'#13#10'       EF_NFSITEM.VLRISENTASIPI,'#13#10'       E' +
      'F_NFSITEM.VLROUTRASIPI,'#13#10'       EF_NFSITEM.TIPOIPI,'#13#10'       EF_N' +
      'FSITEM.SITTRIBUTARIAFEDERAL,'#13#10'       EF_NFSITEM.ARTIGO,'#13#10'       ' +
      'EF_NFSITEM.DATAINICIALIPI,'#13#10'       EF_NFSITEM.DATAFINALIPI,'#13#10'   ' +
      '    EF_NFSITEM.PRODINCENTIVADO,'#13#10'       EF_NFSITEM.ESTOQUEUTILIZ' +
      'ADO,'#13#10'       EF_PRODUTO.NCMID L_NCMID,'#13#10'       EF_PRODUTO.UNIDAD' +
      'EID L_UNIDADEID,'#13#10'       EF_NFSITEM.USUARIO'#13#10'  FROM EF_NFSITEM E' +
      'F_NFSITEM,'#13#10'       GSI.EF_PRODUTO'#13#10' WHERE EF_NFSITEM.EMPRESAID =' +
      ' :EMPRESAID'#13#10'       AND EF_NFSITEM.NFSID = :NFSID'#13#10'       AND EF' +
      '_NFSITEM.DATAEMISSAOID = :DATAEMISSAOID'#13#10'       AND EF_PRODUTO.E' +
      'MPRESAID(+) = EF_NFSITEM.EMPRESAID'#13#10'       AND EF_PRODUTO.PRODUT' +
      'OID(+) = EF_NFSITEM.PRODUTOID'
    DataSource = dsNfsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 100
    Top = 399
    object sqldtsNfsItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfsItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsNfsItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 8
      Size = 6
    end
    object sqldtsNfsItemVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRPRECOUNITDESC: TBCDField
      FieldName = 'VLRPRECOUNITDESC'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRPRECOTOTALDESC: TBCDField
      FieldName = 'VLRPRECOTOTALDESC'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsNfsItemEMPENHO: TBCDField
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsItemQUANTIDADEEMPENHO: TBCDField
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsNfsItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object sqldtsNfsItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object sqldtsNfsItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object sqldtsNfsItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLROUTROIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object sqldtsNfsItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object sqldtsNfsItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsNfsItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsNfsItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsNfsItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfsItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object sqldtsNfsItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfsParcela: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  EF_NFSPARCELA.EMPRESAID,'#13#10'  EF_NFSPARCELA.NFSID,'#13#10'  EF' +
      '_NFSPARCELA.DATAEMISSAOID,'#13#10'  EF_NFSPARCELA.PARCELAID,'#13#10'  EF_NFS' +
      'PARCELA.DATAVENCIMENTO,'#13#10'  EF_NFSPARCELA.DATAPAGTO,  '#13#10'  EF_NFSP' +
      'ARCELA.VLRPARCELA,'#13#10'  EF_NFSPARCELA.DUPLICATAID,'#13#10'  EF_NFSPARCEL' +
      'A.EXPORTADO,'#13#10'  EF_NFSPARCELA.VLRBASECOMISSAO,'#13#10'  EF_NFSPARCELA.' +
      'PAGTOVENDEDOR,  '#13#10'  EF_NFSPARCELA.USUARIO'#13#10'  FROM'#13#10'  EF_NFSPARCE' +
      'LA EF_NFSPARCELA'#13#10' WHERE'#13#10'  EF_NFSPARCELA.EMPRESAID = :EMPRESAID' +
      #13#10'  AND EF_NFSPARCELA.NFSID = :NFSID'#13#10'  AND EF_NFSPARCELA.DATAEM' +
      'ISSAOID = :DATAEMISSAOID'
    DataSource = dsNfsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 100
    Top = 485
    object sqldtsNfsParcelaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsNfsParcelaDATAPAGTO: TSQLTimeStampField
      FieldName = 'DATAPAGTO'
    end
    object sqldtsNfsParcelaVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaDUPLICATAID: TBCDField
      FieldName = 'DUPLICATAID'
      Precision = 10
      Size = 0
    end
    object sqldtsNfsParcelaEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsParcelaVLRBASECOMISSAO: TBCDField
      FieldName = 'VLRBASECOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaPAGTOVENDEDOR: TBCDField
      FieldName = 'PAGTOVENDEDOR'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfsServico: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  EF_NFSSERVICO.EMPRESAID,'#13#10'  EF_NFSSERVICO.NFSID,'#13#10'  EF' +
      '_NFSSERVICO.DATAEMISSAOID,'#13#10'  EF_NFSSERVICO.ITEMID,'#13#10'  EF_NFSSER' +
      'VICO.SERVICOID,'#13#10'  EF_SERVICO.GRUPOID L_GRUPO,'#13#10'  EF_SERVICO.DES' +
      'CRICAORESUMIDA L_DESCRICAORESUMIDA,'#13#10'  EF_NFSSERVICO.DESCRICAOSE' +
      'RVICO,'#13#10'  EF_NFSSERVICO.VLRISS,'#13#10'  EF_NFSSERVICO.VLRSERVICO,'#13#10'  ' +
      'EF_NFSSERVICO.ALIQUOTACOFINS,'#13#10'  EF_NFSSERVICO.VLRCOFINS,'#13#10'  EF_' +
      'NFSSERVICO.ALIQUOTAPIS,'#13#10'  EF_NFSSERVICO.VLRPIS,'#13#10'  EF_NFSSERVIC' +
      'O.VLRRETCOFINS,'#13#10'  EF_NFSSERVICO.VLRRETPIS,'#13#10'  EF_NFSSERVICO.VLR' +
      'RETCSLL,'#13#10'  EF_NFSSERVICO.USUARIO'#13#10'  FROM'#13#10'  EF_NFSSERVICO EF_NF' +
      'SSERVICO,'#13#10'  EF_SERVICO EF_SERVICO'#13#10' WHERE'#13#10'  EF_SERVICO.EMPRESA' +
      'ID (+) = EF_NFSSERVICO.EMPRESAID'#13#10'  AND EF_SERVICO.SERVICOID (+)' +
      '  = EF_NFSSERVICO.SERVICOID'#13#10'  AND EF_NFSSERVICO.EMPRESAID = :EM' +
      'PRESAID'#13#10'  AND EF_NFSSERVICO.NFSID = :NFSID'#13#10'  AND EF_NFSSERVICO' +
      '.DATAEMISSAOID = :DATAEMISSAOID'
    DataSource = dsNfsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 100
    Top = 504
    object sqldtsNfsServicoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsServicoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoL_GRUPO: TStringField
      FieldName = 'L_GRUPO'
      ProviderFlags = []
      Size = 5
    end
    object sqldtsNfsServicoL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsServicoDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfsServicoVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsServicoVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsServicoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETCOFINS: TBCDField
      FieldName = 'VLRRETCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETPIS: TBCDField
      FieldName = 'VLRRETPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETCSLL: TBCDField
      FieldName = 'VLRRETCSLL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNfs: TDataSetProvider
    DataSet = sqldtsNfs
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 357
  end
  object dsNfsLink: TDataSource
    DataSet = sqldtsNfs
    Left = 164
    Top = 399
  end
  object sqldtsNfsItemBar: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  EF_NFSITEMBAR.EMPRESAID,'#13#10'  EF_NFSITEMBAR.NFSID,'#13#10'  EF' +
      '_NFSITEMBAR.DATAEMISSAOID,'#13#10'  EF_NFSITEMBAR.ITEMID,'#13#10'  EF_NFSITE' +
      'MBAR.ITEMBARID,'#13#10'  EF_NFSITEMBAR.PRODUTOID,'#13#10'  EF_NFSITEMBAR.PRO' +
      'DUTOITEMID,'#13#10'  EF_PRODUTOITEM.INCENTIVOICMS L_INCENTIVOICMS,'#13#10'  ' +
      'EF_PRODUTOITEM.NCMID L_NCMID,'#13#10'  EF_NFSITEMBAR.QUANTIDADE,'#13#10'  EF' +
      '_NFSITEMBAR.ESTOQUEUTILIZADO,'#13#10'  EF_NFSITEMBAR.USUARIO'#13#10'  FROM'#13#10 +
      '  EF_NFSITEMBAR,'#13#10'  EF_PRODUTOITEM'#13#10' WHERE'#13#10'  EF_NFSITEMBAR.EMPR' +
      'ESAID = :EMPRESAID'#13#10'  AND EF_NFSITEMBAR.NFSID = :NFSID'#13#10'  AND EF' +
      '_NFSITEMBAR.DATAEMISSAOID = :DATAEMISSAOID'#13#10'  AND EF_NFSITEMBAR.' +
      'ITEMID = :ITEMID'#13#10'  AND EF_NFSITEMBAR.PRODUTOID = EF_PRODUTOITEM' +
      '.PRODUTOID'#13#10'  AND EF_NFSITEMBAR.PRODUTOITEMID = EF_PRODUTOITEM.P' +
      'RODUTOITEMID'
    DataSource = dsNfsItem
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 99
    Top = 443
    object sqldtsNfsItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsNfsItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfsItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsNfsItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsNfsItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfsItem: TDataSource
    DataSet = sqldtsNfsItem
    Left = 163
    Top = 443
  end
  object cdsNfs: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNfs'
    AfterPost = cdsNfsAfterPost
    Left = 222
    Top = 355
    object cdsNfsEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsNfsPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsNfsREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
    end
    object cdsNfsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsNfsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsNfsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsNfsLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsNfsLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object cdsNfsLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object cdsNfsLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object cdsNfsLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object cdsNfsLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object cdsNfsNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsNfsTIPONOTAENTRADA: TStringField
      FieldName = 'TIPONOTAENTRADA'
      Size = 1
    end
    object cdsNfsTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object cdsNfsCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object cdsNfsENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsNfsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNfsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsNfsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsNfsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsNfsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsNfsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsNfsPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsNfsENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 100
    end
    object cdsNfsENDERECOCOBRANCA: TStringField
      FieldName = 'ENDERECOCOBRANCA'
      Size = 100
    end
    object cdsNfsCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsNfsNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsNfsCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object cdsNfsEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsNfsL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsNfsL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsL_CONDICAOPAGTO: TStringField
      FieldName = 'L_CONDICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object cdsNfsL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object cdsNfsMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object cdsNfsVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 14
      Size = 2
    end
    object cdsNfsEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object cdsNfsEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object cdsNfsEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object cdsNfsEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfsEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfsVLRTOTALSERVICO: TBCDField
      FieldName = 'VLRTOTALSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALISS: TBCDField
      FieldName = 'VLRTOTALISS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object cdsNfsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfssqldtsNfsServico: TDataSetField
      FieldName = 'sqldtsNfsServico'
    end
    object cdsNfssqldtsNfsParcela: TDataSetField
      FieldName = 'sqldtsNfsParcela'
    end
    object cdsNfssqldtsNfsItem: TDataSetField
      FieldName = 'sqldtsNfsItem'
    end
  end
  object cdsNfsItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfssqldtsNfsItem
    Params = <>
    Left = 222
    Top = 399
    object cdsNfsItemEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemNFSID: TBCDField
      Tag = 1
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDATAEMISSAOID: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemNATUREZAOPID: TBCDField
      Tag = 2
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemOBSERVACAOID: TBCDField
      Tag = 2
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDESCRICAOOBSERVACAO: TMemoField
      Tag = 2
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsNfsItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 6
    end
    object cdsNfsItemVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRPRECOUNITDESC: TBCDField
      FieldName = 'VLRPRECOUNITDESC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRPRECOTOTALDESC: TBCDField
      FieldName = 'VLRPRECOTOTALDESC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsNfsItemEMPENHO: TBCDField
      Tag = 1
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object cdsNfsItemQUANTIDADEEMPENHO: TBCDField
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 8
      Size = 2
    end
    object cdsNfsItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object cdsNfsItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object cdsNfsItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object cdsNfsItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object cdsNfsItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object cdsNfsItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsNfsItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsNfsItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object cdsNfsItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsNfsItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      EditMask = '>9999.99.99;0; '
      Size = 10
    end
    object cdsNfsItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object cdsNfsItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfsItemsqldtsNfsItemBar: TDataSetField
      FieldName = 'sqldtsNfsItemBar'
    end
  end
  object cdsNfsParcela: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfssqldtsNfsParcela
    Params = <>
    Left = 222
    Top = 488
    object cdsNfsParcelaEMPRESAID: TBCDField
      Tag = 3
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaNFSID: TBCDField
      Tag = 3
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaDATAEMISSAOID: TSQLTimeStampField
      Tag = 3
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsParcelaPARCELAID: TBCDField
      Tag = 3
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsNfsParcelaDATAPAGTO: TSQLTimeStampField
      FieldName = 'DATAPAGTO'
    end
    object cdsNfsParcelaVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaDUPLICATAID: TBCDField
      FieldName = 'DUPLICATAID'
      Precision = 10
      Size = 0
    end
    object cdsNfsParcelaEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsNfsParcelaVLRBASECOMISSAO: TBCDField
      FieldName = 'VLRBASECOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaPAGTOVENDEDOR: TBCDField
      FieldName = 'PAGTOVENDEDOR'
      Precision = 1
      Size = 0
    end
    object cdsNfsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsNfsServico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfssqldtsNfsServico
    Params = <>
    Left = 222
    Top = 501
    object cdsNfsServicoEMPRESAID: TBCDField
      Tag = 3
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoNFSID: TBCDField
      Tag = 3
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoDATAEMISSAOID: TSQLTimeStampField
      Tag = 3
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsServicoITEMID: TBCDField
      Tag = 3
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoL_GRUPO: TStringField
      FieldName = 'L_GRUPO'
      ProviderFlags = []
      Size = 5
    end
    object cdsNfsServicoL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsServicoDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsServicoVLRISS: TBCDField
      FieldName = 'VLRISS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object cdsNfsServicoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object cdsNfsServicoVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETPIS: TBCDField
      FieldName = 'VLRRETPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETCOFINS: TBCDField
      FieldName = 'VLRRETCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETCSLL: TBCDField
      FieldName = 'VLRRETCSLL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfs: TDataSource
    AutoEdit = False
    DataSet = cdsNfs
    Left = 277
    Top = 355
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = cdsNfsItem
    Left = 277
    Top = 399
  end
  object dsNfsParcela: TDataSource
    AutoEdit = False
    DataSet = cdsNfsParcela
    Left = 277
    Top = 488
  end
  object dsNfsServico: TDataSource
    AutoEdit = False
    DataSet = cdsNfsServico
    Left = 277
    Top = 501
  end
  object cdsNfsItemBar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfsItemsqldtsNfsItemBar
    Params = <>
    Left = 222
    Top = 442
    object cdsNfsItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsNfsItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object cdsNfsItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsNfsItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsNfsItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfsItemBar: TDataSource
    AutoEdit = False
    DataSet = cdsNfsItemBar
    Left = 277
    Top = 442
  end
  object sqldtsNfe: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  EF_NFE.EMPRESAID,'#13#10'  EF_NFE.NFEID,'#13#10'  EF_NFE.DATAEMISS' +
      'AOID,'#13#10'  EF_NFE.ENTIDADEID,'#13#10'  EF_NFE.CATEGORIAID,'#13#10'  EF_NFE.MOD' +
      'ELODOCFISCALID,'#13#10'  EF_MODELODOCFISCAL.MODELO L_MODELODOCFISCAL,'#13 +
      #10'  EF_NFE.SERIE,'#13#10'  EF_NFE.DATAENTRADA,'#13#10'  EF_NFE.CANCELADA,'#13#10'  ' +
      'EF_NFE.EXPORTADO,'#13#10'  EF_NFE.DIID,'#13#10'  EF_NFE.DESCRICAOIMPORTACAO,' +
      #13#10'  EF_NFE.OSID,'#13#10'  EF_NFE.CREDITARICMS,'#13#10'  EF_NFE.LIBCHEFIA,'#13#10' ' +
      ' EF_NFE.LIBCHEFIANOME,'#13#10'  EF_NFE.LIBCHEFIADATA,'#13#10'  EF_NFE.LIBFIN' +
      'ANCEIRO,'#13#10'  EF_NFE.LIBFINANCEIRONOME,'#13#10'  EF_NFE.LIBFINANCEIRODAT' +
      'A,'#13#10'  EF_NFE.LIBCONTABIL,'#13#10'  EF_NFE.LIBCONTABILNOME,'#13#10'  EF_NFE.L' +
      'IBCONTABILDATA,'#13#10'  EF_NFE.PDEID,'#13#10'  EF_NFE.DATAPEDIDO,'#13#10'  EF_NFE' +
      '.REQUISITANTE,'#13#10'  EF_NFE.NFSID,'#13#10'  EF_NFE.DATAEMISSAONFSID,'#13#10'  E' +
      'F_NFE.TIPONOTA,'#13#10'  EF_NFE.NOME,'#13#10'  EF_NFE.CEPID,'#13#10'  EF_NFE.NUMER' +
      'O,'#13#10'  EF_NFE.COMPLEMENTO,'#13#10'  EF_NFE.ENDERECO,'#13#10'  EF_NFE.BAIRRO,'#13 +
      #10'  EF_NFE.CIDADE,'#13#10'  EF_NFE.SIGLAUFID,'#13#10'  EF_NFE.PAIS,'#13#10'  EF_NFE' +
      '.CONTRIBUINTEICMS,'#13#10'  EF_NFE.NATUREZAOPID,'#13#10'  EF_NATUREZAOP.CFOP' +
      ' AS L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO AS L_DESCR' +
      'ICAOOPERACAOUSUARIO,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAONOTA AS L' +
      '_DESCRICAOOPERACAONOTA,'#13#10'  EF_NFE.OBSERVACAOID,'#13#10'  EF_NFE.DESCRI' +
      'CAOOBSERVACAO,'#13#10'  EF_NFE.TRANSPORTADORID,'#13#10'  EF_ENTIDADE.NOME AS' +
      ' L_NOMETRANSPORTADOR,'#13#10'  EF_NFE.PLACAVEICULO,'#13#10'  EF_NFE.MODALIDA' +
      'DEFRETE,'#13#10'  EF_NFE.VLRFRETE,'#13#10'  EF_NFE.VLRSEGURO,'#13#10'  EF_NFE.VLRD' +
      'ESPESAACESSORIA,'#13#10'  EF_NFE.EMBQTDVOLUMES,'#13#10'  EF_NFE.EMBNUMERO,'#13#10 +
      '  EF_NFE.EMBMARCA,'#13#10'  EF_NFE.EMBESPECIE,'#13#10'  EF_NFE.EMBPESOBRUTO,' +
      #13#10'  EF_NFE.EMBPESOLIQUIDO,'#13#10'  EF_NFE.VLRTOTALCOFINS,'#13#10'  EF_NFE.V' +
      'LRTOTALPIS,'#13#10'  EF_NFE.VLRTOTALCREDCOFINS,'#13#10'  EF_NFE.VLRTOTALCRED' +
      'PIS,'#13#10'  EF_NFE.VLRTOTALBASEICMS,'#13#10'  EF_NFE.VLRTOTALICMS,'#13#10'  EF_N' +
      'FE.VLRTOTALISENTASICMS,'#13#10'  EF_NFE.VLRTOTALOUTRASICMS,'#13#10'  EF_NFE.' +
      'VLRTOTALBASEIPI,'#13#10'  EF_NFE.VLRTOTALIPI,'#13#10'  EF_NFE.VLRTOTALISENTA' +
      'SIPI,'#13#10'  EF_NFE.VLRTOTALOUTRASIPI,'#13#10'  EF_NFE.VLRTOTALPRODUTO,'#13#10' ' +
      ' EF_NFE.VLRTOTALNOTA,'#13#10'  EF_NFE.DATAIMPRESSAO,'#13#10'  EF_NFE.USUARIO' +
      #13#10'  FROM'#13#10'  EF_NFE EF_NFE,'#13#10'  EF_ENTIDADE EF_ENTIDADE,'#13#10'  EF_NAT' +
      'UREZAOP EF_NATUREZAOP,'#13#10'  EF_MODELODOCFISCAL EF_MODELODOCFISCAL'#13 +
      #10' WHERE'#13#10'  EF_ENTIDADE.ENTIDADEID (+) = EF_NFE.TRANSPORTADORID'#13#10 +
      '  AND EF_NATUREZAOP.NATUREZAOPID (+) = EF_NFE.NATUREZAOPID'#13#10'  AN' +
      'D EF_MODELODOCFISCAL.MODELODOCFISCALID(+) = EF_NFE.MODELODOCFISC' +
      'ALID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 368
    Top = 348
    object sqldtsNfeEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeL_MODELODOCFISCAL: TStringField
      FieldName = 'L_MODELODOCFISCAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sqldtsNfeDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
    end
    object sqldtsNfeCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsNfeDESCRICAOIMPORTACAO: TMemoField
      FieldName = 'DESCRICAOIMPORTACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfeOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsNfeCREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsNfeLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsNfeLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object sqldtsNfeLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object sqldtsNfeLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object sqldtsNfeLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object sqldtsNfePDEID: TBCDField
      FieldName = 'PDEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsNfeREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
      Size = 30
    end
    object sqldtsNfeNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object sqldtsNfeTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object sqldtsNfeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsNfeCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsNfeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsNfeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsNfeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsNfeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsNfeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsNfePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsNfeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfeTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfePLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object sqldtsNfeMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object sqldtsNfeVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object sqldtsNfeEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object sqldtsNfeEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALCREDCOFINS: TBCDField
      FieldName = 'VLRTOTALCREDCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALCREDPIS: TBCDField
      FieldName = 'VLRTOTALCREDPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object sqldtsNfeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfeItem: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT EF_NFEITEM.EMPRESAID,'#13#10'       EF_NFEITEM.NFEID,'#13#10'       E' +
      'F_NFEITEM.DATAEMISSAOID,'#13#10'       EF_NFEITEM.ENTIDADEID,'#13#10'       ' +
      'EF_NFEITEM.ITEMID,'#13#10'       EF_NFEITEM.NATUREZAOPID,'#13#10'       EF_N' +
      'ATUREZAOP.CFOP AS L_CFOP,'#13#10'       EF_NATUREZAOP.DESCRICAOOPERACA' +
      'OUSUARIO AS L_DESCRICAOOPERACAOUSUARIO,'#13#10'       EF_NATUREZAOP.DE' +
      'SCRICAOOPERACAONOTA AS L_DESCRICAOOPERACAONOTA,'#13#10'       EF_NFEIT' +
      'EM.OBSERVACAOID,'#13#10'       EF_NFEITEM.DESCRICAOOBSERVACAO,'#13#10'      ' +
      ' EF_NFEITEM.PRODUTOID,'#13#10'       EF_NFEITEM.DESCRICAOPRODUTO,'#13#10'   ' +
      '    EF_NFEITEM.QUANTIDADE,'#13#10'       EF_NFEITEM.VLRPRECOUNITARIO,'#13 +
      #10'       EF_NFEITEM.VLRPRECOTOTAL,'#13#10'       EF_NFEITEM.NFSID,'#13#10'   ' +
      '    EF_NFEITEM.DATAEMISSAONFSID,'#13#10'       EF_NFEITEM.EMPENHO,'#13#10'  ' +
      '     EF_NFEITEM.QTDEMPENHO,'#13#10'       EF_NFEITEM.RETORNO,'#13#10'       ' +
      'EF_NFEITEM.QTDRETORNA,'#13#10'       EF_NFEITEM.VLRBASEICMS,'#13#10'       E' +
      'F_NFEITEM.ALIQUOTAICMS,'#13#10'       EF_NFEITEM.VLRICMS,'#13#10'       EF_N' +
      'FEITEM.VLRISENTASICMS,'#13#10'       EF_NFEITEM.VLROUTRASICMS,'#13#10'      ' +
      ' EF_NFEITEM.PORCREDUCAOICMS,'#13#10'       EF_NFEITEM.SITTRIBUTARIAEST' +
      'ADUAL,'#13#10'       EF_NFEITEM.ALIQUOTACOFINS,'#13#10'       EF_NFEITEM.VLR' +
      'COFINS,'#13#10'       EF_NFEITEM.VLRCREDCOFINS,'#13#10'       EF_NFEITEM.ALI' +
      'QUOTAPIS,'#13#10'       EF_NFEITEM.VLRPIS,'#13#10'       EF_NFEITEM.VLRCREDP' +
      'IS,'#13#10'       EF_NFEITEM.VLRBASEIPI,'#13#10'       EF_NFEITEM.ALIQUOTAIP' +
      'I,'#13#10'       EF_NFEITEM.VLRIPI,'#13#10'       EF_NFEITEM.VLRISENTASIPI,'#13 +
      #10'       EF_NFEITEM.VLROUTRASIPI,'#13#10'       EF_NFEITEM.TIPOIPI,'#13#10'  ' +
      '     EF_NFEITEM.SITTRIBUTARIAFEDERAL,'#13#10'       EF_NFEITEM.ARTIGO,' +
      #13#10'       EF_NFEITEM.DATAINICIALIPI,'#13#10'       EF_NFEITEM.DATAFINAL' +
      'IPI,'#13#10'       EF_NFEITEM.PRODINCENTIVADO,'#13#10'       EF_PRODUTO.NCMI' +
      'D L_NCMID,'#13#10'       EF_PRODUTO.UNIDADEID L_UNIDADEID,'#13#10'       EF_' +
      'NFEITEM.USUARIO'#13#10'  FROM EF_NFEITEM EF_NFEITEM,'#13#10'       EF_NATURE' +
      'ZAOP EF_NATUREZAOP,'#13#10'       GSI.EF_PRODUTO'#13#10' WHERE EF_NFEITEM.EM' +
      'PRESAID = :EMPRESAID'#13#10'       AND  EF_NFEITEM.NFEID = :NFEID'#13#10'   ' +
      '    AND EF_NFEITEM.DATAEMISSAOID = :DATAEMISSAOID'#13#10'       AND EF' +
      '_NFEITEM.ENTIDADEID = :ENTIDADEID'#13#10'       AND EF_NATUREZAOP.NATU' +
      'REZAOPID(+) = EF_NFEITEM.NATUREZAOPID'#13#10'       AND EF_PRODUTO.EMP' +
      'RESAID(+) = EF_NFEITEM.EMPRESAID'#13#10'       AND EF_PRODUTO.PRODUTOI' +
      'D(+) = EF_NFEITEM.PRODUTOID'
    DataSource = dsNfeLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFEID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftBCD
        Name = 'ENTIDADEID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 368
    Top = 389
    object sqldtsNfeItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfeItemENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsNfeItemL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeItemL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfeItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsNfeItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object sqldtsNfeItemEMPENHO: TBCDField
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeItemQTDEMPENHO: TBCDField
      FieldName = 'QTDEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object sqldtsNfeItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object sqldtsNfeItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRCREDCOFINS: TBCDField
      FieldName = 'VLRCREDCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRCREDPIS: TBCDField
      FieldName = 'VLRCREDPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemALIQUOTAIPI: TBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRISENTOIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLROUTROIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object sqldtsNfeItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object sqldtsNfeItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsNfeItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsNfeItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfeItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object sqldtsNfeItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNfe: TDataSetProvider
    DataSet = sqldtsNfe
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 454
    Top = 348
  end
  object dsNfeLink: TDataSource
    DataSet = sqldtsNfe
    Left = 454
    Top = 389
  end
  object sqldtsNfeItemBar: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  EF_NFEITEMBAR.EMPRESAID,'#13#10'  EF_NFEITEMBAR.NFEID,'#13#10'  EF' +
      '_NFEITEMBAR.DATAEMISSAOID,'#13#10'  EF_NFEITEMBAR.ENTIDADEID,'#13#10'  EF_NF' +
      'EITEMBAR.ITEMID,'#13#10'  EF_NFEITEMBAR.ITEMBARID,'#13#10'  EF_NFEITEMBAR.PR' +
      'ODUTOID,'#13#10'  EF_NFEITEMBAR.PRODUTOITEMID,'#13#10'  EF_PRODUTOITEM.INCEN' +
      'TIVOICMS L_INCENTIVOICMS,'#13#10'  EF_PRODUTOITEM.NCMID L_NCMID,'#13#10'  EF' +
      '_NFEITEMBAR.QUANTIDADE,  '#13#10'  EF_NFEITEMBAR.ESTOQUEUTILIZADO,'#13#10'  ' +
      'EF_NFEITEMBAR.USUARIO'#13#10'  FROM'#13#10'  EF_NFEITEMBAR,'#13#10'  EF_PRODUTOITE' +
      'M'#13#10' WHERE'#13#10'  EF_NFEITEMBAR.EMPRESAID = :EMPRESAID'#13#10'  AND EF_NFEI' +
      'TEMBAR.NFEID = :NFEID'#13#10'  AND EF_NFEITEMBAR.DATAEMISSAOID = :DATA' +
      'EMISSAOID'#13#10'  AND EF_NFEITEMBAR.ITEMID = :ITEMID'#13#10'  AND EF_NFEITE' +
      'MBAR.PRODUTOID = EF_PRODUTOITEM.PRODUTOID'#13#10'  AND EF_NFEITEMBAR.P' +
      'RODUTOITEMID = EF_PRODUTOITEM.PRODUTOITEMID'
    DataSource = dsNfeItemLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFEID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 368
    Top = 431
    object sqldtsNfeItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfeItemBarENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsNfeItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfeItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsNfeItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfeItemLink: TDataSource
    DataSet = sqldtsNfeItem
    Left = 454
    Top = 431
  end
  object cdsNfe: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNfe'
    AfterPost = cdsNfeAfterPost
    Left = 522
    Top = 348
    object cdsNfeEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object cdsNfeMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      Precision = 8
      Size = 0
    end
    object cdsNfeL_MODELODOCFISCAL: TStringField
      FieldName = 'L_MODELODOCFISCAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNfeDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
    end
    object cdsNfeCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object cdsNfeEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsNfeDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsNfeDESCRICAOIMPORTACAO: TMemoField
      FieldName = 'DESCRICAOIMPORTACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfeOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsNfeCREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsNfeLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsNfeLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object cdsNfeLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object cdsNfeLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object cdsNfeLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object cdsNfePDEID: TBCDField
      FieldName = 'PDEID'
      Precision = 8
      Size = 0
    end
    object cdsNfeDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsNfeREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
      Size = 30
    end
    object cdsNfeNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsNfeDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object cdsNfeTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object cdsNfeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsNfeCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsNfeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNfeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsNfeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsNfeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsNfeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsNfeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsNfePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsNfeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsNfeNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsNfeL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfeTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object cdsNfeL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfePLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object cdsNfeMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object cdsNfeVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object cdsNfeEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object cdsNfeEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object cdsNfeEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object cdsNfeEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfeEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfeVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALCREDCOFINS: TBCDField
      FieldName = 'VLRTOTALCREDCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALCREDPIS: TBCDField
      FieldName = 'VLRTOTALCREDPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object cdsNfeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfesqldtsNfeItem: TDataSetField
      FieldName = 'sqldtsNfeItem'
    end
  end
  object cdsNfeItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfesqldtsNfeItem
    Params = <>
    Left = 522
    Top = 393
    object cdsNfeItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfeItemENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.cc.c;0; '
      Size = 4
    end
    object cdsNfeItemL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeItemL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfeItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsNfeItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object cdsNfeItemEMPENHO: TBCDField
      Tag = 1
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object cdsNfeItemQTDEMPENHO: TBCDField
      FieldName = 'QTDEMPENHO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object cdsNfeItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 14
      Size = 6
    end
    object cdsNfeItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object cdsNfeItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfeItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRCREDCOFINS: TBCDField
      FieldName = 'VLRCREDCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfeItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRCREDPIS: TBCDField
      FieldName = 'VLRCREDPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemALIQUOTAIPI: TBCDField
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object cdsNfeItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object cdsNfeItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsNfeItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsNfeItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object cdsNfeItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      EditMask = '>9999.99.99;0; '
      Size = 10
    end
    object cdsNfeItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object cdsNfeItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfeItemsqldtsNfeItemBar: TDataSetField
      FieldName = 'sqldtsNfeItemBar'
    end
  end
  object dsNfe: TDataSource
    AutoEdit = False
    DataSet = cdsNfe
    Left = 595
    Top = 348
  end
  object dsNfeItem: TDataSource
    AutoEdit = False
    DataSet = cdsNfeItem
    Left = 595
    Top = 393
  end
  object cdsNfeItemBar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfeItemsqldtsNfeItemBar
    Params = <>
    Left = 522
    Top = 438
    object cdsNfeItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfeItemBarENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsNfeItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object cdsNfeItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsNfeItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfeItemBar: TDataSource
    AutoEdit = False
    DataSet = cdsNfeItemBar
    Left = 595
    Top = 438
  end
  object sqldtsObservacao: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT OBSERVACAOID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM ' +
      'EF_OBSERVACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 478
    Top = 168
    object sqldtsObservacaoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsObservacaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsObservacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvObservacao: TDataSetProvider
    DataSet = sqldtsObservacao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 478
    Top = 216
  end
  object cdsObservacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvObservacao'
    AfterPost = cdsObservacaoAfterPost
    Left = 570
    Top = 169
    object cdsObservacaoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsObservacaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsObservacaoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsObservacao: TDataSource
    AutoEdit = False
    DataSet = cdsObservacao
    Left = 567
    Top = 217
  end
end
