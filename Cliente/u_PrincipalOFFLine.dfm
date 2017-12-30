object frmPrincipalOFFLine: TfrmPrincipalOFFLine
  Left = 961
  Top = -12
  Caption = 'Gest'#227'o de Sistemas Integrados - OFF Line'
  ClientHeight = 657
  ClientWidth = 840
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object fcstbarStatus: TfcStatusBar
    Left = 0
    Top = 637
    Width = 840
    Height = 20
    Images = imglstMenu
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Empresa'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'ComputerName'
        Style = psComputerName
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '100'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        Name = 'UserName'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '100'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '250'
      end>
    SimplePanel = False
    SizeGrip = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 840
    Height = 131
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        MinHeight = 24
        Width = 840
      end
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 75
        Width = 840
      end
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 840
      end>
    Color = clBtnFace
    EdgeBorders = [ebBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 827
      Height = 24
      UseSystemFont = False
      ActionManager = actmngPrincipal
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Spacing = 0
    end
    object ToolBar1: TToolBar
      Left = 9
      Top = 26
      Width = 827
      Height = 75
      AutoSize = True
      ButtonHeight = 75
      ButtonWidth = 95
      Caption = 'ToolBar1'
      Images = imglstBarraFerramenta
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      object tbOS: TToolButton
        Left = 0
        Top = 0
        Action = actOS
        ImageIndex = 0
      end
      object tbRDV: TToolButton
        Left = 95
        Top = 0
        Action = actSolicRDV
        AutoSize = True
        Caption = 'Despesas Viagens'
        ImageIndex = 1
      end
      object tbBancoHoras: TToolButton
        Left = 192
        Top = 0
        Action = actSolicHora
        Caption = 'Banco de Horas'
        ImageIndex = 2
      end
      object tbHoraTecnica: TToolButton
        Left = 287
        Top = 0
        Action = actSolicOSHora
        Caption = 'Hora T'#233'cnica'
        ImageIndex = 3
      end
      object tbOSDefeito: TToolButton
        Left = 382
        Top = 0
        Action = actSolicOSDefeito
        Caption = 'Defeito O.S.'
        ImageIndex = 4
      end
      object ToolButton4: TToolButton
        Left = 477
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 23
        Style = tbsSeparator
      end
      object tbFechar: TToolButton
        Left = 485
        Top = 0
        Action = actSair
        ImageIndex = 5
      end
    end
    object ToolBar3: TToolBar
      Left = 9
      Top = 0
      Width = 827
      Height = 75
      AutoSize = True
      ButtonHeight = 75
      ButtonWidth = 87
      Caption = 'ToolBar3'
      Images = imglstBarraFerramenta
      ShowCaptions = True
      TabOrder = 3
      object tbPesquisasGerais: TToolButton
        Left = 0
        Top = 0
        Action = actPesquisa
        Caption = 'Pesquisas Gerais'
        ImageIndex = 9
      end
      object ToolButton7: TToolButton
        Left = 87
        Top = 0
        Caption = 'Elei'#231#227'o'
        ImageIndex = 10
      end
      object tbSair: TToolButton
        Left = 174
        Top = 0
        Action = actSair
        ImageIndex = 6
      end
    end
    object ToolBar2: TToolBar
      Left = 9
      Top = 0
      Width = 827
      Height = 75
      AutoSize = True
      ButtonHeight = 75
      ButtonWidth = 74
      Caption = 'ToolBar2'
      Images = imglstBarraFerramenta
      ShowCaptions = True
      TabOrder = 2
    end
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 103
      Width = 827
      Height = 26
      ActionManager = actmngPrincipal
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object pgctrlOFFLINE: TPageControl
    Left = 0
    Top = 131
    Width = 840
    Height = 506
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet5: TTabSheet
      Caption = 'Lista Ordem de Servi'#231'o'
      ImageIndex = 4
      object dbgrdOS: TDBGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 478
        Hint = 'Despesas pendentes de libera'#231#227'o'
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdDespesaDrawColumnCell
        OnDblClick = dbgrdOSDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'OSID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMECLIENTE'
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLAUFID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_GRUPOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_SIGLAGRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FILIALID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEFANTASIAFILIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOOSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOTIPOOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOATENDIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSCORRELACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALIZACAOOSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_LOCALIZACAOOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAABERTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVALIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACONCLUSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSIMPRESSA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFECHAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAENTRLABORATORIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATASAIDALABORATORIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOASSIST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_VERSAOSOFT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_FAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_PASTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_INSCRESTADUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_INSCRMUNICIPAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CPFCNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLICITANTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SETOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSSERVICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TECNICOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMETECNICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORCAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRORCADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOEDAORCADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONDPAGTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPAGTOANTEC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEPID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_TIPOATENDIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCORTES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORCAMENTOREFID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONDPAGTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCR_CONDPAGTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORCDESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMELIBDESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRMAODEOBRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESLOCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPECA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALMAODEOBRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALDESLOCAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALORCCOMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALFRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALPECA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALOUTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALPAGAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsOsPeca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsOsDefeito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsOsHora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsOSMaterial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsOSOcOperacional'
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Lista RDV'
      object dbgrdDespesa: TDBGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 478
        Hint = 'Despesas pendentes de libera'#231#227'o'
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsAdiantamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdDespesaDrawColumnCell
        OnDblClick = dbgrdDespesaDblClick
        OnTitleClick = dbgrdDespesaTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ADIANTAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADEPOSITO'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATASOLICITACAO'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUNCIONARIOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEFUNCIONARIO'
            Width = 174
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_OPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLROPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOMOEDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORASOLICITADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMCHEGADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_KMRODADOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBCHEFIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBERADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMELIBCHEFIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROBLEMATRANSF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Lista Banco de Horas'
      ImageIndex = 1
      object dbgrdHoras: TDBGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 478
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsBancoHora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdDespesaDrawColumnCell
        OnDblClick = dbgrdHorasDblClick
        OnTitleClick = dbgrdDespesaTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'BANCOHORAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATASOLICITACAO'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUNCIONARIOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEFUNCIONARIO'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_FILIALID'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_OPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORAINI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORAFIM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFERENCAHORATRAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFERENCAMINTRAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBCHEFIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMELIBCHEFIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIBERADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPRESSO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROBLEMATRANSF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Lista Hora T'#233'cnica'
      ImageIndex = 2
      object dbgrdHoraTecnica: TDBGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 478
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsOsHoraOFF
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdDespesaDrawColumnCell
        OnDblClick = dbgrdHoraTecnicaDblClick
        OnTitleClick = dbgrdDespesaTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTIDADEID'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEPOPULARTECNICO'
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATATRABALHOID'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORATRAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORATRANSP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORAESPERA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORAOUTRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROBLEMATRANSF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lista Defeito O.S.'
      ImageIndex = 3
      object dbgrdOSDefeito: TDBGrid
        Left = 0
        Top = 0
        Width = 832
        Height = 478
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsOsDefeitoOFF
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdDespesaDrawColumnCell
        OnDblClick = dbgrdOSDefeitoDblClick
        OnTitleClick = dbgrdDespesaTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'OSID'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMID'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEFEITOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAODEFEITO'
            Width = 259
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALDEFEITO'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERVICOEXECUTADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROBLEMATRANSF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGERRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
  end
  object imglstMenu: TImageList
    Left = 416
    Top = 232
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0080808000C0C0C0000000000080808000808080000000000000BF
      BF0000BFBF000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      0000BFBF0000BFBF000000000000000000000000000000000000000000000000
      0000000000008400840084008400FFFFFF00FFFFFF00C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0080808000C0C0C0000000000080808000808080000000000000BF
      BF0000BFBF000000000080808000000000000000000000000000808080008080
      80008080800080808000808080008080800000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0080808000C0C0C0000000000080808000808080000000000000BF
      BF0000BFBF000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000000000008080800000000000848484008400840084008400FFFF
      FF00FFFFFF000000000000000000840084008400840000000000C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0080808000808080000000000080808000808080000000000000BF
      BF0000BFBF00000000008080800000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C00080808000FFFF000000000000FFFF0000FFFF0000FFFF
      0000000000000000000080808000000000008484840084008400FFFFFF000000
      000000000000840084008400840084008400840084008400840000000000C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF000000000080808000000000000000000000000000000000000000
      0000C0C0C00080808000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      0000C0C0C000C0C0C00000000000000000008484840000000000000000008400
      840084008400840084000084840000FFFF008400840084008400840084000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF000000000080808000000000000000000000000000000000000000
      000000000000FFFF000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000008484840084008400840084008400
      8400840084008400840084008400008484008400840084008400840084008400
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000BF
      BF0000BFBF000000000080808000000000000000000000000000000000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000808080000000
      0000000000000000000000000000000000000000000084008400FFFFFF008400
      84008400840084008400840084008400840000FFFF0000FFFF00840084008400
      8400840084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000000000BF000000BF000000BF000000BF000000FFFFFF000000000000BF
      BF0000BFBF00000000008080800000000000000000000000000000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000C0C0C000000000008080
      800000000000000000000000000000000000000000000000000084008400FFFF
      FF0084008400840084008400840084008400840084000084840000FFFF0000FF
      FF00840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000000000FFFFFF00BF000000BF000000BF000000FFFFFF000000000000BF
      BF0000BFBF000000000080808000000000000000000000000000FFFF00000000
      0000FFFF0000FFFF0000FFFF000000000000C0C0C000C0C0C000C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000008400
      8400FFFFFF00840084008400840084008400008484008400840000FFFF0000FF
      FF00840084008400840084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000000000BF000000BF000000BF000000BF000000FFFFFF000000000000BF
      BF0000BFBF0000000000808080000000000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000000000000000000000000000C0C0C000C0C0C000C0C0
      C000000000008080800000000000000000000000000000000000000000000000
      000084008400FFFFFF00840084008400840000FFFF0000FFFF0000FFFF008400
      8400840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF00BF000000BF000000BF000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000808080000000000080808000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000084008400FFFFFF00840084008400840084008400840084008400
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF00
      0000BF000000BF00000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400FFFFFF008400840084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF000000BF00
      0000BF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF00BF000000FFFFFF008080
      80008080800080808000FFFFFF00BF0000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000FF0000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF0084000000C6C6C60084000000840000008400000084000000840000008400
      000084000000000000000000000000000000BF000000BF000000BF000000BF00
      0000BF000000BF000000BF000000000000000000BF00BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000FF0000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000BF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BF0000000000BF0000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000FF000000FF00
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000000000
      000000000000000000000000000000000000BF000000FFFFFF00808080008080
      800080808000FFFFFF00BF0000000000BF0000000000BF00000000000000BF00
      000000000000BF00000000000000BF0000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000008400000084000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000000000
      000000000000000000000000000000000000BF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BF0000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000FF000000FF00
      00000000000000000000000000000000000000000000FF000000FF0000000000
      00000000000000000000000000000000000084000000C6C6C600FF000000C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      000084000000840000008400000084000000BF000000BF000000BF000000BF00
      0000BF000000BF000000BF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      00000000000000000000000000000000000084000000FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      000084000000840000008400000000000000BF00000000000000BF0000000000
      0000BF00000000000000BF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      00000000000000000000000000000000000084000000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C6008400000000000000000000000000
      000084000000840000008400000084848400BF000000BF000000BF000000BF00
      0000BF000000BF000000BF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      00000000000000000000000000000000000084000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF008400000000000000000000000000
      0000840000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      00000000000000000000000000000000000084000000C6C6C600840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084848400840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B3900007B39
      00007B3900007B3900007B3900007B3900007B39000000000000000000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF390000FF7B
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B00009C9C0000BD00
      0000FF000000FF000000FF0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFF0000FFFFFF00FFFF
      0000FFFF0000FFFFFF0000000000000000000000000000000000848484000000
      0000000000008484840000000000000000007B000000FF000000FF000000FF39
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B0000BDBD00006363
      0000BD000000FF000000FF0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00840000008400
      000084000000FFFF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B3900007B390000FFBD0000FFBD0000FFBD00007B7B0000BDBD00008484
      0000636300007B0000007B000000000000000000000000000000000000000000
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000800000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000080000000
      800000008000FFFFFF0000000000000000000000000000000000000000000000
      000000008000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000080000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004242420042424200424242007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000080000000
      800000008000FFFFFF0000000000000000000000000000000000000000000000
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0021210000000000008484840084848400848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      80000000800000008000FFFFFF00000000000000000000000000000080000000
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005A5A0000636300006363630084848400848484007B7B00009C9C00002121
      21008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000080000000800000008000FFFFFF00000000000000800000008000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B0000DEDE00006363000063636300848484007B7B00009C9C00003939
      39008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000800000008000000080000000800000008000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A0000BDBD0000BDBD0000BDBD
      0000DEDE0000FFFF0000DEDE000063630000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000080000000800000008000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      FF00FFFFFF00FFFF0000FFFFFF00000000007B7B0000FFFF3900FFFF7B00FFFF
      7B00FFFF7B00FFFFBD00FFFF39007B7B0000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000800000008000000080000000800000008000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008400
      00008400000084000000FFFF0000000000000000000000000000000000000000
      00007B7B0000FFFF39007B7B000063636300848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000080000000800000008000FFFFFF000000000000008000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      FF00FFFFFF00FFFF0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B00007B7B00006363630084848400848484007B7B3900BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000080000000
      80000000800000008000FFFFFF00000000000000000000000000000080000000
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      FF00FFFFFF00FFFF0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00212100000000000084848400848484008484840063636300BDBD7B009C9C
      00008484000042424200FFFFFF00FFFFFF000000000000008000000080000000
      800000008000FFFFFF0000000000000000000000000000000000000000000000
      800000008000FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008400
      0000FFFF0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400848484008484840063636300BDBD
      7B009C9C000042424200FFFFFF00FFFFFF00000000000000800000008000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000800000008000FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840000000000000000000000000000000000FFFF0000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000042424200424242004242420042424200424242002121
      21007B7B390021212100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000E003FFFFFE3F0000
      C001FFC1F81F000080018001E00F000080018001800700008001800000030000
      8001C000000100008001E000000000008001F000000100008001E00F80010000
      8001C007C001000080018003E000000080010101F000000080010381F8030000
      800307C1FC0F0000C7FFFFFFFE3F0000FFFFFFFFFFFFFFFFF007FFFFC001FFC9
      F007FFFF8001FFC9F007FF808001FFC1F007FF808001C049C007FF0080018D49
      C007010080018D63C007008080018037C01F00AA8001801F001F01808001800F
      001001FF8001800F001155FF8001800F007001FF8001800F0076FFFF8001800F
      007CFFFF8001800F007DFFFFFFFFFFFF8021FFFFFFB001C30000FFFFFF900199
      0000FFF9FF0001FD8001E7FFFE9001F10000C3F3FDBF01F10000C3E7FDFF01F3
      0000E1C7FDFF03F70000F08FFEFF07FF0000F81FFF7FFF800000FC3FFFBFEF80
      0000F81FFFBFCF800000F09FFDBF8F800000C1C7097F8F80000083E300FFBF80
      00008FF109FF99810000FFFF0DFFC38300000000000000000000000000000000
      000000000000}
  end
  object XPManifest1: TXPManifest
    Left = 520
    Top = 184
  end
  object actmngPrincipal: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actSolicRDV
                ShortCut = 120
              end
              item
                Action = actSolicHora
                ShortCut = 121
              end
              item
                Caption = '-'
              end
              item
                Action = actPesquisa
                Caption = '&Gerenciamento de pesquisa'
                ImageIndex = 11
              end
              item
                Caption = '-'
              end
              item
                Action = actSair
                Caption = '&Sair'
                ImageIndex = 5
              end>
            Caption = '&Gest'#227'o de Sistemas Integrados'
          end
          item
            Items = <
              item
                Action = actSobre
                Caption = '&Sobre'
                ImageIndex = 10
              end>
            Caption = '&Ajuda'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = actOSSincronismo
            ImageIndex = 2
          end
          item
            Action = actExcluir
            Caption = '&Excluir'
            ImageIndex = 1
          end
          item
            Action = actTransferencia
            ImageIndex = 3
          end
          item
            Action = actTransfTotal
            ImageIndex = 3
          end
          item
            Action = actGravarXML
            Caption = '&Gravar XML'
            ImageIndex = 6
          end
          item
            Action = actGravarDisquete
            Caption = 'G&ravar Disquete'
            ImageIndex = 7
          end
          item
            Action = actRecuperarDisquete
            Caption = 'Re&cuperar Disquete'
            ImageIndex = 8
          end
          item
            Action = actExportar
            Caption = 'E&xportar'
            ImageIndex = 9
          end>
        ActionBar = ActionToolBar1
      end>
    Images = imglstMenu
    Left = 520
    Top = 232
    StyleName = 'XP Style'
    object actOS: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Ordem  de Servi'#231'o'
      Hint = 'Ordem de Servi'#231'o OFFLINE'
      OnExecute = actOSExecute
    end
    object actSolicRDV: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Solicita'#231#227'o / Requisi'#231#227'o RDV'
      Hint = 
        'Solicita'#231#227'o de Adiantamento / Requisi'#231#227'o de Despesa Extra (reemb' +
        'olso) '
      ShortCut = 120
      OnExecute = actSolicRDVExecute
    end
    object actSolicHora: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Solicita'#231#227'o / Requisi'#231#227'o Banco de Hora'
      ShortCut = 121
      OnExecute = actSolicHoraExecute
    end
    object actSolicOSHora: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Solicita'#231#227'o / Requi'#231#227'o OSHORA T'#233'cnica'
      ShortCut = 8314
      OnExecute = actSolicOSHoraExecute
    end
    object actSolicOSDefeito: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Solicita'#231#227'o / Requisi'#231#227'o OSDefeito'
      ShortCut = 123
      OnExecute = actSolicOSDefeitoExecute
    end
    object actPesquisa: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Gerenciamento de pesquisa'
      Hint = 'Gerenciamento de Pesquisas gen'#233'ricas'
      ImageIndex = 11
    end
    object actOSSincronismo: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'OS Eletr'#244'nica Sincronismo'
      ImageIndex = 2
      OnExecute = actOSSincronismoExecute
    end
    object actSair: TAction
      Category = 'Gest'#227'o de Sistemas Integrados'
      Caption = 'Sair'
      Hint = 'Sair do Sistema'
      ImageIndex = 0
      OnExecute = actSairExecute
    end
    object actSobre: TAction
      Category = 'Ajuda'
      Caption = 'Sobre'
      Hint = 'Informa'#231#245'es de ajuda referente ao sistema'
      ImageIndex = 10
      OnExecute = actSobreExecute
    end
    object actExcluir: TAction
      Category = 'Ferramentas'
      Caption = 'Excluir'
      Hint = 'Excluir solicita'#231#227'o de  Adiantamento / Despesa Extra'
      ImageIndex = 1
      OnExecute = actExcluirExecute
    end
    object actTransferencia: TAction
      Category = 'Ferramentas'
      Caption = 'Transfer'#234'ncia Individual'
      Hint = 'Transferir individual das informa'#231#245'es para Solicita'#231#227'o para GSI'
      ImageIndex = 3
      OnExecute = actTransferenciaExecute
    end
    object actTransfTotal: TAction
      Category = 'Ferramentas'
      Caption = 'Transfer'#234'ncia Total'
      Hint = 'Transferir total das informa'#231#245'es para o GSI'
      ImageIndex = 3
      OnExecute = actTransfTotalExecute
    end
    object actGravarXML: TAction
      Category = 'Ferramentas'
      Caption = 'Gravar XML'
      Hint = 'Gravar base de dados localmente para futuras altera'#231#245'es'
      ImageIndex = 6
      OnExecute = actGravarXMLExecute
    end
    object actGravarDisquete: TAction
      Category = 'Ferramentas'
      Caption = 'Gravar Disquete'
      Hint = 'Gravar informa'#231#245'es no disquete para transfer'#234'ncia'
      ImageIndex = 7
      OnExecute = actGravarDisqueteExecute
    end
    object actRecuperarDisquete: TAction
      Category = 'Ferramentas'
      Caption = 'Recuperar Disquete'
      Hint = 'Recuperar Informa'#231#245'es do Driver'
      ImageIndex = 8
      OnExecute = actRecuperarDisqueteExecute
    end
    object actExportar: TAction
      Category = 'Ferramentas'
      Caption = 'Exportar'
      Hint = 'Exportar arquivo para o Microsoft Excel'
      ImageIndex = 9
      OnExecute = actExportarExecute
    end
  end
  object imglstBarraFerramenta: TImageList
    Height = 55
    Width = 55
    Left = 416
    Top = 184
    Bitmap = {
      494C010106000900040037003700FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000DC000000A500000001002000000000003037
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00090A06001C0C810000000C00F1F1
      F1000606070029263900C4C4C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD0055545400B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4B4AF004128E70000002000000000002D2E28003219D40003031C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000057575700A888880026222200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00000000000000000000000000E1E1E1000000
      000000000000000000000000000000000000D4D4D2003C27CD0000002200CFCF
      CD00050505003C21EE0000001C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D3D3003833
      33004A414100795B5B00332D2D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F3000000
      15000300490004040600A4A59E001B098E000606140000000000000000000000
      0000CACAC800402BD200090337001819100028198700280FD7005E6055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00F9F7F400F9F7F400F8F6F300F8F6F200F9F7F400FDFCF900FEFC
      FA0000000000C4C6C60071666600EADEDE0084757500403A3A008E717100C6C7
      C700F9F7F200F8F5F200F8F5F200F8F6F200F9F6F200F4F1ED00F4F1ED00F4F1
      ED00F4F1ED00F3F2EF00F5F3F10003012E001F08BA000D0C140086887E004529
      F70000000B00000000000000000000000000D2D2CF00402BD100110946000E0A
      2E004A31ED001805A100E0E0DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3F003E4857003E475700414D
      6200435067003E4757004E576700525C6B0042444600776B6B00FFF3F300FFF6
      F6005E5250008F807D0094717100272422003D4D680047566B0047566B004453
      6900435269002C3B54002A3953002A3953002C3B54002D364500313B4500130C
      3D00200AB20016151C00191A13003F23F700010000005A5B5C005A5A5C006262
      640057575700422DD3000A033E003B28BC00462BF40006003800717173006B6A
      68006B6A68006A6762006D6C6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0F140069B9FF0068BBFF006ABAFF005AA4FF004993FD00418FFF001E4C
      9000E4D3D100FFF0F000B09E98001E3869002A72E700236BE0005B565F001C4A
      98002776FA00236FEE00226CE900226BE6001E64D8001854B90010449A001440
      8800134292001450B600206DEE00170A3E002710C5002724340026178A001D09
      97002162CC00347FFA0056A3FF005CA9FF003B71BD00462EDE004E35F500391F
      E6002009AF00174790002F7BFA0067B6FF0067B6FF0056A2FF0007162E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0F140068B8FF0067C2FF005DA9
      FF003482FF002876FA000C419800584A4A00FFF5F500E0D0D000041B44001B64
      DE001657C2001350B600001D55000D3A85000F2E63000C2246000D1E3B001724
      3B0024262A0033302E00474139000A0400002628210049524D002A3743001A10
      55003017D600060320004B31F700040025002573F4002877FA002976F7002C78
      F600265BAC004830E3004D34F400280ED2000A0037002876F8004189FA0068BB
      FF0067BAFF00549CFB000A1B3600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0F140068B9FF0068C3FF003C75CF000B367F000B377F003D3A4400F6DF
      DB00FFF3F300251F1D00293C5C0036373C004E4A47005E5750005B534D007366
      560089776500887768008E7C6E0098867700928175007B6F6600C1B5A6001A16
      1100525B5300CBDFC800CADDC500130758003D24E0001D1072003F23F2000406
      0100102343000A30730011449B001752B700164B9F004931E8003B22E2001103
      5C0009213B002671EF0059A1FF0066C3FF0066BDFF00549CFB000A1A35000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0E140066B5FF0057A3FF00234C
      8B00CCBEAD00837A6E00F2DBDC00FFF7F70006060500223B23001B431E000F4A
      22000A5A3300095F35000E6B3F0025782E000E531C001A69280022742E001754
      2100248846001A9B730084756F0026211C004A534C00D3E9D300F1FFF100140A
      5A004E35F400472DF00003003A00D7EED600D3E9D300D6ECD600C3D7C200BFD1
      BC00222418005036FF00462DEC00270DD2000F004F00256FE900448CFA0067C2
      FF0066BEFF00549CFB000A1A3500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010131800498FF3002163CF00174A9A00C3B5A4004C574E00FFEAEA00FCE5
      E6004750480012561D002A8534000CB0B0000FB8B40015B1A40003BDDA003B97
      3C004B383A00183E1E00145821007D5C60000D764D0009A7B400796B63002823
      1E004A534C00D3E9D300F6FFF60013085600442AEB002E14DA001E250F00E9FF
      E900D8F0D800D5ECD500BBCEBB00B7CAB70009090E004F35FB004D34F4003D22
      EC00280DD0000E2E56002A74EF0066BAFF0066BFFF00549CFB000A1B36000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014171C00132B540040343A000826
      5C00BFB2A3006E7E7100FFFBFB00EBD0D1006F7B6F0007472A0007A5BC00188E
      6B001B4720001B46120000BEFF00338B33008F676D00213E22000B531C00CC9C
      9E00186C29001E8D59006E625A0028231E004A534C00D2E9D200F4FFF400190B
      6B003B21E200280ED2001E212F00F5FFF500DCF4DC00D5ECD500BCD0BC00B9CC
      B900080324004A31F2004930F0003C29BF004328F600030013002675F8005CA7
      FF0066C0FF005198F80006142800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014171F001C233000353C5200164FAC00C3B6A70078897B00FFFAFA00EBCF
      D00075837600092D0D00217F4000109883005C403C00261E1400258544003692
      3D00483537001A301C0015622400594B4600156126001B916700534E4500312B
      250049524B00D3E9D300B4C9AE004930EE004D34F3004E34F500391EED000101
      1500F1FFF100D4ECD400C4D8C400B2C4B100200F8B0039402C000A052F000000
      0000030E160017085D000E2D5A003E86F80068C1FF005096F500030E1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00525200005252000052520000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014181F00081528001A5FCF002C65
      B800C6B8A90079887B00FDE9E900FBE4E5006875690007210A0000B8F7000BA5
      A60006746500087F710000B6F5002D8638001E5F1D00246E2E00308233001E6D
      21002C7E3100198E6600413F370039322C0048514A00D4EBD40058624E005237
      FF004D34F500422AE0003B27C2001F0AAF00A6B7A000D4EBD400C7DBC700B0C3
      AF001908860087928200717D6C00474D4000081E45001034670001030800327C
      F70067BCFF005096F500030E1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD0052520000FFFF0000EFEF
      000052520000ADADAD00ADADAD00ADADAD00ADADAD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000013181F000B2043002368DB001954B300C5B8A7007F8F8100E7D3D400FFFC
      FC00343D3500071708001E9876000E927F0012957900149375000F8D7A002682
      3F001D9874003D92380022926500189B80001C8F65001A8E6400302F28003933
      2D0048514A00D6EDD60021252200311AC8002C1B9D003722BD00101015002913
      B1000C0E0E00DFF7DF00CDE2CD00B4C7B30005023000ABB6AB0094A093003636
      320000010D002A7DFF00061022002978FA0066B8FF005096F500030E1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD0052520000FFFF0000EFEF00008484000052520000ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A07020016438C00081B3B002369
      DD005248380087968900413F3D00ECDDDD00B6A8A80000070300288D4E001D78
      3E0004381D00043417000F401F00318B3F00168257003C953F0034903B001150
      14002338190057594F001E1B19003B342E0048514A00DEF7DE0012084D004045
      3A00DFEDDC007D8C7700BCD0BC00F9FFF80086918400363632001F2421000C16
      0E0011390F00115D27000E8A6E000DA7A0001D8140000B101B003C3731001D5B
      C30065B4FF005096F500030E1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A50052520000FFFF0000EFEF
      0000848400008484000052520000A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004193D003180FF003B70B8001B3D700084796A0079877B00566257005D53
      530000000000252323002A8F4F001F6E2A0055383C0065464A0000000000268E
      500005ACCC001F6D26001441190081757500EAD3D600FFF2F4003B3635003D36
      300048514A00E1FAE10008014E00C8D4C200FDFFFD00EAFFEA00ACBCAB005255
      4F00161D180000240B001A5C220021722D00189976000BAEB20010A99E0008AF
      BD000DA49E0023201800DDCDB60008327A0066B8FF005096F500030E1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A50052520000FFFF0000EFEF00008484000084840000848400005252
      0000525200009494940094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF9F700195CCD00347FFA004795FF003C7F
      E200D2C3B1007381750093A39300414A4100F5EAEA006E6767002A8D49001D71
      3000B1858700E5B5B60000040200358D3C0010876700534E4900B9A7AB00FFFD
      FD00FFF0F000FFF3F300413A39003E38320047504900E3FBE30001020900E9EC
      E900615F5E002623220003090000002D0E00216B240004AEDB002F8937002681
      3C000D988C00227E41001147120010998A0001C1EE00091F0900847664001135
      6F0066B8FF005096F500030E1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5009494
      9400949494009494940094949400949494009494940052520000FFFF0000EFEF
      0000848400008484000084840000848400005252000052520000525200008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3737003A2E2E00555656003531
      3100504A4E006A5F61006A5F610063595C0053494700343531005A675C007D8D
      7E005E6B5F002620220032924400128F7200006756000065500026621E0000B5
      D100C3A2A400FFEDED00FFE7E700FFEBEC00776763000E585E00061504004D44
      3D005A655C001B1F1B000A2D0E00246C28000C9A990003B9E90007B5C600168B
      6D002B853B0013491C00141B12001042120000C2FF0008250300392C2E001F70
      2900158F6D001B6821002064DB001C5ECE004289FA005299F4000A1426000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A00949494009494940094949400949494009494
      94009494940052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000222121005E474700251F1F00DCCBCB00FFECEA00FFF7F500FFF6F500FFF4
      F300FBE6E700DBC7C8006C5F5F003E3937006F7D70002D2F2D00378D36001B9F
      82001BA286000AB2BA003B872500014D6100FFF7F800FFEBEB00FFF1F1004F46
      4000007B7F0000BCD7000B2508004C443C005F6B61000000000010A59D002293
      62001B9981000FA2B20030863800247E3A0014998700030B000053323600020E
      02001496840025651F00008DA400398933002C8135001B7E4300151B29001717
      1700327EFC005198F20007101F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A008484
      8400848484008484840084848400848484008484840052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000053545400795A5A007A6C6C00FFFD
      FD00FFF5F500FFF3F300FFF3F300FFF4F400FFEDED00FFEFEF00FFFBFB00EDDA
      DB002B2625005B615A001F8854001F956B00378023001599810039872900524E
      5800FFEEEE00F1DFE0006E5A5E0019611B000DA8A30015A394000C280E004C44
      3C0059655B001211100010A5A000218D5B003A872B0023895100228751000B98
      8F0000C0FF000F3609000A4134001B4A1300308635001B92680007B3C2003187
      38001F844C00129273001F1A160086796600256FE9004E91EE0003070E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A005A5A5A005A5A5A0084848400848484008484
      84008484840052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D1D100A17E7E00817575003A33330012192D0019223100161D2A00211F
      25005F535300D6C2C200FFF7F700FFF4F400FFF8F800675759001D7C44000A98
      A00018895E0005B0D30016682600FFEBEC00FFF8F800000F0000318836002394
      600015A3910002B9D9000D2B07004E473F00545F5600BACEBA001C5E200002B2
      CE002A915300329045000D8F820005B3C7001A895E002D8131000D96890007A8
      B30010876900108F77000F958200108F7600237F3F00268B4E00022C0900FCF5
      EC00022051004588EB00060A0F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00000000005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A0052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F7F7008D70700065595900ADAE
      AC001655BC004E95F4005DA6F200488DE1005A514400242422007E6F7000D8C5
      C600FFF3F300FAE4E500206C25000D9C99001B8D5A000DA5B2000B531C00FFF4
      F500EDD4D400145721002E964D001334120013300D000BA8AA000A290400514A
      4100545F5600DCF4DC00021E050005B4CB00327F2E002067240002B1E3001696
      7A0029772800178860001E7F430002B3E900108C710011947A000DA599000BA3
      A10009A9B00000B8FC00115A2300CFCAC600010B1B00407EDE00080A0E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      000084848400ADADAD005A5A5A00ADADAD00ADADAD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B636300201B1B0000000000021941003581FB0059A4FF0060AE
      FF009D8F7D0065736800333B340023201E00ECDCDC00FFEFEF000D521B001635
      15001936160011321000124A1400FFF4F400A38C8F00158D6A0007BECA004326
      2A0054373D000AABAC000828030060574D00525D5500DDF5DD000101010013AD
      A5000F2E0A00332026001E7C3E00277D3300158B6600128B6E00218850000AA0
      9D000BA49A00048678000A4322002D80320005ADC0000E9791001E7734007D77
      77000C0B0A004281E100070A0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005252000052520000848484005A5A5A00ADAD
      AD00ADADAD00ADADAD00BDBDBD00BDBDBD00BDBDBD0052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000038383800092148001F61CF002878FC008F816E0069766C00849384005861
      580011151200937E7F0000320C003E463100414A360018351F0000392100E6E2
      E2005B49490006A0930021925F001333120011280A000AAEB700052C0400655C
      520049534C00D3EAD30095A395002B782800129076002A771F00368C3A000BA2
      A80028742200109C8C000E200D003C2E2400795459007B585B00100F0B003183
      2D002B884000168968000AABAF00000000003782F8004888D8000C0E14000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      000084840000525200005A5A5A00ADADAD00ADADAD00ADADAD00ADADAD00BDBD
      BD00BDBDBD0052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000036373800234068000A1A33001648
      9E0070655500393F3900202320001D201D00768376001A1B1900093112001D7F
      3F0023813600135320003F473C00645C5C00544C4D003B3A2A00103412001A93
      6C0014997E0004B4CD000730070072685E0047504900D4EBD400E4FAE4001146
      130005B1C90019967C002A7C330013330D00105635000E9E92000B0707005D3F
      430031342800093C1900197036000E938E001E77310000B9FC0016946F00020F
      00004490FF00417BC7000A0B0F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052520000848400008484000052520000A5A5
      A500ADADAD00ADADAD00ADADAD00ADADAD00BDBDBD0052520000FFFF0000EFEF
      0000848400005A5A5A005A5A5A0084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003433340066B8FF005092E200213F6600201C16001B1E1B006B776B007987
      7900798679005F695F0008260D000AA4B100138C660010270C00796A6B006251
      51005E4D4D005D494C0018171500179881000DA5A4001B967300083910007369
      5F0048514A00DFF7DF00F3FFF300000D000003AEDF0000B1F30025762B007C55
      5C00011F2C00268E530013451600073B16001C6D250004BBE0001A7F440005AD
      D0001C732C000E714C000C2D060008131B00529AFC003E78C6000F1013000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00ADADAD00ADADAD00ADADAD00ADADAD005252
      0000EFEF0000848400008484000052520000A5A5A500ADADAD00ADADAD00ADAD
      AD00ADADAD0052520000FFFF0000EFEF00005A5A5A00848484005A5A5A008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003433340068B7FF0066BAFF0066BD
      FF00796C5900313732008B9A8B00818F81006671660059625900031107002C87
      3E0029863D00144112000F280D000C290F00173816001544200017522A002E8E
      4700288D4800155A1E00001A04002C2621001F211E004C404100836768006365
      6300227A2F0004AACF001F844A000C5D2F00179872000EA79D000E9D8C000E8F
      7C00005136000D2D120019221900163E89001D52B7002971ED0063B2FF0068BF
      FF0067B5FF003B74C6000F10130000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      840084848400848484008484840052520000EFEF0000EFEF0000848400008484
      000052520000A5A5A500ADADAD00ADADAD00ADADAD0052520000FFFF0000EFEF
      00005A5A5A00BDBDBD005A5A5A0084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003533350068B7FF0066BBFF0066BCFF006F625100353B350092A192005C66
      5C00111311000F110F00020A0400318A3C000CA29C000AA09E0007A19E001F84
      4A000AAEB20006B4C00007BDD20000B4CF00084B58006D656500A6979A00B1A8
      A800C1B8B8006B5F5F007F636400D8E0D80015571E001F90610010A3970010A1
      8D000D876B00014323000C23070016230D005F665A00939C90005F6456002877
      FA002775F5002E78F20066B4FF0066C4FF0066B4FF003972C4001C1D20000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525200005252000052520000525200005252000052520000525200005252
      0000FFFF0000EFEF0000EFEF0000848400008484000052520000A5A5A500ADAD
      AD00ADADAD0052520000FFFF0000EFEF0000848400005A5A5A005A5A5A008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020200068B8FF0066BCFF0068BE
      FF00655949002A2F2A00373D3700181B18007A877A0069756900040906002F8D
      390003B9F300268A4900268E530008AEC70001BEE4002B8C4B0009300900F1DA
      DB00FFF5F500FFF0EF00FFF3F400F9E2E200F9E8E8007B737300796060000000
      0000000000000019060024261F00868E8400D6E9D500F2FFF200E9FFE900D8EF
      D800D5EDD500BBCFBB0039392B002976F8002670EC003D84F70068BDFF0066C2
      FF0067B5FF003771C4002223260000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000525200008484000084840000848400008484
      000084840000848400008484000084840000FFFF0000FFFF0000EFEF0000EFEF
      0000848400008484000052520000A5A5A500ADADAD0052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002121210068B8FF0066BCFF0067BDFF00655A4C00282D28004B534B000B0C
      0B007E8C7E006D786D000001000007380E000964390027793000288E4D00199F
      8A000CB4BF000048560069515300FFF4F400FFF6F700B9A29F00635957005B52
      4F003E3A3900827374006A535400000000008B908B009A9F9A00E9F3E900F5FF
      F500EAFFEA00E7FFE700E3FBE300D4EBD400D5ECD500C0D4C00027271D002978
      FA002670EB00478EFC0068C1FF0066C3FF0067B4FF00346BBC002D2E30000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000EFEF0000EFEF000084840000848400005252
      0000A5A5A50052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002121210068B8FF0066BDFF0069BE
      FF0064594A00282D28008C9B8C00383D380033393300313531002A2223009485
      890058554F00151C15000B270D00164D1500257A32004D3E3F00FDEFEF00FFF4
      F40083737300006B9500002D0B008F8375001D211D003D3837003A3131000000
      00000000000000000000F5FFF500E9FFE900E9FFE900E6FFE600E8FFE800D7EE
      D700D5ECD500C4D8C4001A1B14002876F700256FEA004F96FF0065B5FF0067C2
      FF0069B6FF003063AE0035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052520000FFFF0000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00FFFF0000EFEF00008484000052520000A5A5A50052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000201E1C0065B3FF00438EFF00246EEC00665D4F001C1E1B00909F90008594
      85008391830004020300FFFAFA00F4E5E5001C221D00171A1700576157005963
      5900252A2600FFFBFB00FFEEEE003F363600222C2300152E1B00041907009C90
      82001D1F1B00DAF2DA00E4FCE400E2E4EA00E0E4E800DDE7E200F2FFF200B1BC
      B000192E3C00E9FEEB00405B1C00636F6200D5EDD500C9DEC900070A0E002469
      DC001F5ABC001B58BF002672F2003F88FB00357EF5001E52A700484848000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFFCE00FFFF0000FFFF00008484000052520000A5A5
      A500A5A5A50052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000201E1C004D9CFF001E5CC4001736
      680028251F00191C190094A4940086948600707C700053464700FFEFEF005B4C
      4C004D574D0049524900171A1700202520000B0B0A00FFF8F800FFFAFA000004
      020020222000535A5100262A2700998D7F00292C2800D8EFD8003B403C00415D
      0F00405C0F0030460F00EEFAEE00C6D1C40050676C00ECFFED00728D5500808F
      7F00D5ECD500CDE3CD000305050007152E000B214400162C4D000C2654001D65
      E000226EEE001148A40014121300B6B6B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005252000052520000525200005252
      000052520000525200005252000052520000FFFF0000FFFFCE00FFFF0000FFFF
      000084840000525200009494940094949400A5A5A50052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000211F1C002B64BC00051227005FABF000574E420004050400818F81008E9D
      8E004A524A00C7B2B200FFFAFA00080B09003036300059655900475047003F47
      3F00221F1E00FFEEEE00FFF5F500111512002C322D003337320028302B00998D
      7F002B2E2A00D7EFD700272A2D00B8FF0000B4FF000069A90000ECF8EE00EBF9
      EB00EEFFEB00C4D8C4007A857E00CCE1CC00D4EBD400CEE4CE00020A17002368
      DA002770E9005299FC00315B950037454F001B386600172E5100626B5E004C54
      4C00C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      0000FFFF0000FFFF0000FFFF0000848400005252000094949400949494009494
      94009494940052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000222221000D1F3D00266EE7006CC5
      FF00544D46001E211D005A645A0013151300191F1B00FFF7F700EFD6D6005761
      580030353000272B270010100F00393128002E282800F6F2F200C6B7B8008F7D
      5D004A402D00735A5A004A3F2C00998D7F002B2E2A00D5ECD5009DAC9C009797
      A000A8A8B000B4BBB900F3FFF300858C8500DDF3DD006F7B6F00566056007784
      7700D5ECD500CFE4CF00041E4B00246FEB00337BF1005FABFF0068BAFF002C52
      8B0049514800E9FFE8008A988A00626F64002F2C2700D2D2D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052520000EFEF0000EFEF0000848400005252
      00008C8C8C008C8C8C0094949400949494009494940052520000FFFF0000EFEF
      000084840000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002323230009162C002368DE0065B4FF00544D4600121311009CAC9C006B77
      6B0006080700FFFEFE00EFD5D500242925004750470007070700695E4D004942
      39003F3A330064605C0046403F00544A3B00615543006457470054483700948A
      7C002A2D2900D4EBD400F4FFF4000000000000000000FEFFFF00F6FFF6000000
      0000EEFFEE00EEFFEE00C4D9C400ECFFEC00D4EBD400CFE5CF0004235700246E
      EA003A81F50064B3FF0066B8FF001F458200D7EDD600717C7100697469006F6B
      6600312A1E00302C280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      0000EFEF000084840000525200008C8C8C008C8C8C008C8C8C008C8C8C009494
      94009494940052520000FFFF0000EFEF00008484000084840000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021201E00101E350015428D003A87
      FC004D473F00131311009BAB9B0095A695001E252000FFFAFA00F7DCDC004048
      41004049410012100E0080756600342F2700302B2200746C6100B4A99B007E76
      6A00554F460039342C00211D18008B817500272B2700D4EBD400E9FFE900F5F9
      F500F0F3F000E3EFE300DEE9DE00DFEADF00C2D5C200C1D6C100CDE3CD00DCF5
      DC00D4EBD400CFE4CF00062C6F00256FEB004088F90066B8FF0060AFFF003335
      2B00E5FBE500535D5300525B5200948E8A006B5C41006C6C6C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005252000084840000525200005A5A5A008484
      84008C8C8C008C8C8C008C8C8C008C8C8C00949494009494940052520000FFFF
      0000EFEF0000848400008484000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000032302E0068BBFF003A6BAE0015469800433F3A0019191600353A35005962
      59002F353000F6DFDF00FFF5F50005010200616C6100343B350000020100312C
      270048413A006F675E00867F7600918B820091897E00F5EEE600989591008A80
      7300272B2700D5ECD500525C520062808500798E8800DFF1DD00DFF8DF00E2FA
      E200A6B7A600A8B9A8000404040097A89700D4EBD400C7DBC500104299002D76
      EE004B92FF0068C1FF0067B9FF00253C5D003C413600857D7700B9B3AE00584B
      3200504F4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      000052520000000000005A5A5A008C8C8C00848484008C8C8C008C8C8C008C8C
      8C008C8C8C00949494009494940052520000FFFF0000EFEF0000848400008484
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000032302E006ABBFF0068BAFF001F3A
      62002624230020201D003D433D006671660068746800927E7E00FFE9E9008472
      7200464E4700090908001A1817005F574C008577650077695800685C4B00544A
      3E005A53490078716800756F69008A807300272B2700D5ECD500576057007089
      8C00727F7500A5B3A50093A39300919F9100535B53005A645A000A0A0A0099A9
      9900D4EBD400C4D7C200144CAC00347CF2004F95FF0067C2FF0066C1FF0057A0
      F900374756005B5A5B002F2B24004F443300EEEEEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A008484
      84008C8C8C00848484008C8C8C008C8C8C008C8C8C008C8C8C00949494009494
      940052520000FFFF0000EFEF000084840000848400005A5A5A0084848400ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000032302E0069B8FF0067BCFF0066B8FF001010100013121000202420005E68
      5E00808E8000120D0E00FFF6F600FFF2F2000000000005050500C8BCAD00736C
      6600433F3B004E473E005F574B00847764008A7B6700544B3D0027221B008B81
      7500272B2700D5ECD500586258006E766A0059625800535C53005E685E005F69
      5F00C7DCC700B9CCB9000404040098A99800D4EBD400BED1BC001A5AC5003A82
      F6005298FF0066C3FF0066C2FF0068C0FF004E95F2001D468300251E13004A4A
      4B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A0084848400848484008C8C8C00848484008C8C
      8C008C8C8C008C8C8C008C8C8C00949494009494940052520000FFFF0000EFEF
      0000848400005A5A5A0084848400ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C39360066B6FF0067BBFF0069C3
      FF001314170021211D008A988A001E211E00768376005E6A5F00483D3D00FFF7
      F700BFB0B00008080800CEC1B100D3C9BC00D9CFC400D3CBC100EFE7DE00EEE6
      DD00B7B1A900696662001F1E1D0091867A00292D2900D5ECD500A5B6A5007F81
      7F0077777700757675006C716C008A918A00A1A9A100A1B0A100BBCEBB00DCF3
      DC00D3EAD300A5B29D00236CE700468DFC0058A1FF0066C3FF0066C2FF0066C3
      FF0066B4FF001F48830059555000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A008484
      840084848400848484008C8C8C00848484008C8C8C008C8C8C008C8C8C008C8C
      8C00949494009494940052520000FFFF0000EFEF00005A5A5A00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000045403B0066B5FF0067BBFF0069C2FF000D0E13001F1D1B00B5C7B5008897
      88001F221F0047414000080C0A00C8B6B700B8ADAD0015151400E7E1D800E7E1
      DA00E3DCD400746F6900F5ECE4008C867F00EEE8E100F9F2EA00847F79008F84
      7800343A3400D7EED700FBFFFB0000000000000000000000000000000000FEFF
      FE00F8FFF800EEFFEE00DEF6DE00DAF0DA00D3EAD30089948000246FEB004A91
      FF005DA7FF0066C3FF0066C2FF0066C3FF0066B4FF002049850056524E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000423D360066B5FF0067BBFF0069C2
      FF00090A0E0035312C0097A89800AEC0AF00424B4300745A5C00535E54001512
      11009F9191001E1D1B00E9E4DC00E6E0D900E1DAD1006E696400FAF2E8001918
      1500DFD8CF00B4ABA2008A857F008F847800343A3400CAE0CA0098A898009C9D
      9A00808081007E7F7E005F645F004B504B00484D480053595300515951002529
      2500DCF4DC00757E6A002470EF004F96FF0062AEFF0066C3FF0066C2FF0066C3
      FF0066B4FF002049850056524E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000044403A005EAAFF0068BBFF0067C0FF003F76BF002A324000807260009083
      73004A453E0057625800A3B5A400ABBCAB004C564D0016141300EBE5DE00EBE7
      E000DFD8CF00706B6500FAF2E80025222000DED7CE00928B8300736F6B009388
      7C0034393300A4B7A400CCDFC600265C8400DAEED300D1E4D10099AA99008A99
      8A00AABCAA006C786C005B655B00525A5200E0F8E0005B5F4D002D7DFF0057A2
      FF0068B6FF0068B7FF0067B8FF0068B9FF0068B7FF00214A870056524E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000044403A0061B0FF006CBEFF006ABC
      FF006DC1FF0056A2FF00224476001F2A39007B72670081776C0031322D00727F
      740065716600221F1D00F0ECE600F1EEEA00DED6CD006E696300FBF4EA002522
      2000DDD6CD00928B8300736F6A0094897D0034393300AFC2AF00BBCFBA00B5CD
      BD00434943004148410068736800758275005E685E0050585000DAEFDA004B53
      4B00DEF6DE00484C3E002A72E3004184E4004489E4004488E4004488E4004488
      E200468BE400123972004F4C4700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3836001C447F001E4880001E4780001E478000214D84001F4C89001135
      690000000000443E3500A598890058514A001A1E1A0014131200E5DED500F4F1
      EC00E0D7CE00817B7400FBF4EB001C191800DCD4CB00928B8300666360009489
      7D0033383200B7CBB700BCCFBC002629240085938500A3B5A3009AAA9A008492
      8400707C70001E211E00B4C6B40050595000DCF4DC00333833004C5057004C50
      57004B4F57004B4F57004B4F57005D616A004D515900494C5000888888000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D9D9004D4C
      4C0057504700948A7C0092887B003F3A340079736D00EAE3DB00F4EEE700EAE3
      DB00DFD7CE00AFA79D0066625E0091867A00434A4200B6C9B600AABCAA00BDD0
      BD00A1B3A1008F9E8F00737F73006A746A00656E65006A726A00748074008795
      8700D2E9D2001E211E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088898A003D3D3C005A534900B8AC
      9C00635C530057524C007D777000E3DDD600F7F3EE00ECE6DF005E5B57009287
      7B0042494100C4DAC400383D3800363B36003F423F00555B55006C766C00B5C4
      B500D8ECD800E9FFE900F3FFF300F2FFF200CDE2CD0016181600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC009B9C9D0033302D00766D6200A59A8C007D746A003C38
      3400A7A19B00FDF9F4005955510090857A0041484100D1E8D1009EAE9E00D7EB
      D700E4FBE400ECFFEC00F6FFF600EBFFEB00E4FDE400E0F9E000DCF4DC00DAF2
      DA00D4EBD4001112110000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A7A8006B6B6C00413C37008C8375007E756A001C1A18007F75
      6B003E453E00D7EED700D5ECD500D7EED700D3EAD300C9DFC900B4C8B4008FA0
      8F005B655B0043494300555955006163610082828200C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C90050504F006D655900A398890080766B0040484000BFD4BF00A5B6A500707D
      7000515A51004147410026272600525352008D8C8D00C1C1C100F3F3F300FEFD
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A9B9C00504D4A003530
      2900090B0800292D29002D2E2D00666566009C9B9C00BAB9BA00EFEEEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00BDD6DE0000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7E7E300F2DAD300F9F1EE00FCF7F600FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF00FDFEFF00FDFE
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00BDD6DE0000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFFFF00DDFF
      FF00CCFFFF00BEFFFF00C1FFFF00BFFFFF00D3FFFF00E3FFFF00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C86A4C00C664
      4500C6644400C6634300C5604000C45D3C00C45D3C00C6644500C96B4D00CA6E
      5000D3866D00DDA18E00E6BBAD00EED2C900F3DED700FBF4F200FEFCFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F6FF00D9E2FF00CBD8FF00C8D5FF00C6D3
      FF00C6D4FF00C8D5FF00C7D5FF00C7D5FF00C7D5FF00C6D4FF00C6D4FF00C9D6
      FF00CED9FF00D5DFFF00E7EDFF00FDFDFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00BDD6DE0000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEFFFF00C9FFFF00BEFFFF00C0FFFF00C2FFFF00C2FFFF00C2FF
      FF00BFFFFF00BFFFFF00CDFFFF00F0FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C45E3D00C7664700C7664700C7664700C7664700C766
      4700C7664700C7654600C6644500C6644400C5614000C45D3D00C45E3D00C665
      4500C8684A00CA6F5200D2846C00DB9B8700E3B3A300EBCABF00EFD4CB00F8EC
      E900FDFAF8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3EAFF00C9D6
      FF00C6D4FF00C8D5FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C8D5FF00C7D4FF00C6D4FF00D2DD
      FF00E6ECFF00FDFDFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00847BD6006B4ACE005A21
      C6005A21C600A5D6EF00A5D6EF00316B7B004AA5BD0000000000316B7B000000
      00007B9CAD00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00BDD6DE0000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60000000000D6D6D600D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFFFF00DCFFFF00C1FFFF00C0FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C0FFFF00C2FF
      FF00DCFFFF00FAFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBF4F100C5624200C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7654500C6644500C6634400C5614100C45E
      3D00C35B3A00C6624200C7654600C96C4E00CF7C6200D8937D00E0AA9900E4B5
      A600EED1C800F9EDE900FDFAF900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFF00D5E0FF00C6D4FF00C8D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C7D5FF00C6D4FF00D1DCFF00E0E8FF00FCFC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF005A21C600847BD600A5D6EF00A5D6EF005A21C6005A21C600000000000000
      0000000000000000000000000000000000005A21C600A5D6EF0000000000A5D6
      EF00000000000000000063DEF70063DEF70063DEF70000000000A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00BDD6DE0000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D6000000
      0000D6D6D600D6D6D60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEFFFF00CCFFFF00C2FFFF00C0FF
      FF00C2FFFF00C8FBFA00D3FFFF00D3FFFF00D3FFFF00D0FFFF00D0FFFF00D0FF
      FF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C1FFFF00C0FFFF00C7FF
      FF00E5FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D58E7700C7664700CA674800CA684800CA674800C9674800C867
      4700C8664700C8664700C8664700C8664700C8664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C55D
      4500C6604600C7634600C7644600C7644600C6644500C6634400C5624200C45F
      3E00C35C3B00C45D3C00C6634400C96A4C00CC755800D58C7400D9978200E2AE
      9D00EAC5B900F2DBD400FAF3F000FEFDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F3FF00C7D5FF00C7D4FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C8D5FF00C8D5FF00DEE6FF00FEFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00847BD60029106300000000000000000000000000000000000000
      00005A21C6005A21C6005A21C6005A21C6005A21C60000000000000000005A21
      C60000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF0000000000A5D6EF00A5D6
      EF000000000000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF0000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60000000000D6D6D600D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000FDFFFF00DEFF
      FF00C0FFFF00BFFFFF00C0FFFF00C2FFFF00C1FDFD00E1DCD50093928E008282
      7E0083837F008284800082847F0091918D00D4FCF900C0FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C1FFFF00BFFFFF00D1FFFF00F3FFFF00FDFC
      FA00F3F1EE00EFEDEB00EFEDEB00EFEDEB00F2F0EE00F5F2F000FEFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7674900C8674700B25B
      3F00B3593E00B85D4000C0624400C7664700CD694900CE694900CF6A4A00CF6A
      4A00D16B4A00D36C4B00D36C4B00D06B4A00CF6A4A00CC694900CA684800C967
      4800C8674700C7664700C6634600D4A25600CF8D5100CA774A00CC754D00C86B
      4800C7654700C65F4500C65F4500C6614600C6634600C6644600C6644500C663
      4400C6634300C5604000C45F3E00C35C3A00C5614100C8674900CA6E5100D386
      6E00D8957F00E2B0A000EAC4B900F0D6CE00FFFFFE0000000000000000000000
      00000000000000000000000000000000000000000000FBFCFF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C6D4FF00D4DFFF00F7F9FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF005A21C600291063005A21
      C600AD94DE0029106300AD94DE00845ACE00AD94DE00AD94DE007B7B73007B7B
      73007B7B7300FFFFEF00000000005A21C60000000000A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF0000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D6000000
      0000D6D6D600D6D6D60000000000000000000000000000000000000000000000
      0000FBFFFF00EDFFFF00CAFFFF00BFFFFF00C4F9F700C8EDE900CAE7E200CEDC
      D400D2D1C600DDD1C50000000000786E6E0071616100705F5F00736464000000
      0000D9E5E000C5FFFF00C1FFFF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FAF800CAEDE900B4ADA600302E2C0037343200373533003634
      32002E2D2B00EAE5E000FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C45D3C00C8674700A5563C0074432E0067372600682F2200662D
      2000633022005F2F2100552B1E0051291D0048251900552B1E00713A28008B47
      3100974E3600AF5A3E00BF624400C6654600CE694900D46C4C00D16A4A00E3EE
      6A00E0E26600D2BD5700C9A64E00E0D46400D9BC5D00D5AA5800D1985400CE87
      4F00CA754B00C96D4900C7684700C6634600C55E4500C6604500C6614600C764
      4600C6644600C6644500C6634400C5614100C45E3E00C0543200C8684A00E6BA
      AC00000000000000000000000000000000000000000000000000000000000000
      000000000000D1DCFF00C8D5FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00CBD8FF00CCD9FF00CCD9FF00CCD9FF00CBD8FF00C9D6FF00C7D4FF00CBD8
      FF00DBE3FF00FAFBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5D6EF005A21C6005A21C6005A21C6005A21C6000000
      000000000000000000005A21C600FFFFEF00FFFFEF0000000000000000000000
      00000000000000000000FFFFEF00FFFFEF00FFFFEF00FFFFEF007B7B73005A21
      C60000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF0000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60000000000D6D6D600D6D6D600000000000000
      000000000000FDFCFC00E3DDD500D1D1C700D2CABF00D4C9BC00D5C5B900D5C7
      BA00D4C8BC00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D5C6BA00746D6700B29C
      9C00FFF1F100FFEFEF00FFF3F300DAC1C1001112110059575400555552006261
      5E0052534F0052514D00534F490058504B00544D47004F4A45004D4944000000
      00006B5E5E00FFF2F200F8DADA00FFE9E9003C39370000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECCBC100C7664600C7664700C46A
      490081D7870083D5870082D9890085D587008BCE820099BA7700AAA56C00B39C
      6600C4865A00C56C4B00B75C40008F402D007A3627004B221800190B08000000
      0000000000000000000000000000DDDD6400E0E06600E4E96900760000007900
      0000A1522500E3E76900E1E26700E0E16600E0E26600E0E26700E1E46700E1E6
      6800E2E86800E0E26700E0DF6600DFD96400DBC96000CE874F00C7644500D996
      8000E8C0B3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFF00C7D5FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00D4E2FF00D2DFFF00949EBA00545B6F003638410044464F00585C6900636A
      7F00697084005E647800CEDBFF00C9D6FF00C9D6FF00C8D5FF00C7D4FF00D6E0
      FF00EDF2FF00F8FAFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD94E700000000002910
      63005A21C6005A21C6005A21C6005A21C600FFFFEF0000000000FFFFEF000000
      0000000000000000000000000000FFFFEF00FFFFEF00FFFFEF0000000000FFFF
      EF00FFFFEF00000000007B7B73009CA5E7009CA5E700A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00BDBD
      BD00000000000000000000000000000000000000000000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D6006B6B6B000000
      00006B6B6B00D6D6D6000000000000000000F4F2EF00DAD1C600D2C6B900D4C7
      BB00D4C8BC00D4C9BC00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9
      BD00D4C8BC00CAE5E000DCDCD6003C363600FCE9E900FFE9E900FFECEC00FFF0
      F00083727200766465006F5D5D00000000006859590031292A00211A1A000603
      0400231F2000473E3F005F5556006D626200D9C1C100FFEAEA00E4C4C400A998
      9800B2B6B100F5FFFF00FEFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FD00D58C7400C7664700C7664700C46A490082D4860084D1840084D1840084D2
      840083D3850081D5860080D8880080D7880085D084008CC87F009CB37300AF9F
      6800B9966300C27D5500C0654700A14B350077352600150A070000000000E3E3
      6700E0E06600E2E46800A65928007C000000780000009D482100E2E56800E1E2
      6700E0E06600E0E06600E0E06600E0E06600E0E06600E0E16600E0E16600E0E2
      6700E1E46700D5AD5900C55F3E00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFE7
      FF00C8D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00CAD7FF00D5E2FF007F879F004B515F00000000003630
      25008F827000B2A49100B8AB9900BFB9B700C9D3F00000000000D5E3FF00D0DD
      FF00D2DFFF00D2DFFF00CEDCFF00C8D6FF00C7D5FF00CCD8FF00E1E8FF00F4F7
      FF0000000000000000000000000000000000000000000000000000000000F9FA
      FF000000000000000000A5D6EF00293139007B7B73007B7B73007B7B73007B7B
      7300000000007B7B7300FFFFEF00FFFFEF00FFFFEF00393939007B7B7300FFFF
      EF00B5BDE700000000004A527300A5ADAD00FFFFEF00000000004A5273009CA5
      E7009CA5E70000000000000000009CBDE700A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A000000000000000000D6D6D600D6D6D600D6D6D600D6D6D6006B6B
      6B006B6B6B00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600000000000000
      0000D3C8BC00D3C8BB00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9
      BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C8BC00C7F0EC00E2F8F3000000
      0000B7A4A400FFEEEE00FFE5E500FFE8E800FFE4E400F8D8D800FFEEEE00473E
      3E00E7CDCD004E464600E6C7C7006A5D5D00CBB1B100C3ACAC00000000000000
      0000FFEDED00FFE8E800EBCCCC00201B1C00DCFCF900C4FFFF00CFFFFF00F2FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3DED700C7654600C7664700C7664700C46A
      490082D4860084D1840084D1840084D1840084D1840084D1840084D1840084D1
      840083D2850083D3850081D6870080D8880081D5860087CF830092C07B00A6A9
      6E00BE946200391F160000000000EAEA6B00E0E06600E0E06600E1E26700C7A5
      4B007C000000790000009C451F00E1E26700E2E36800E0E06600E0E06600E0E0
      6600E0E06600E0E06600E0E06600E0E06600E0E06600DBC45F00C6634500F2DB
      D400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6D4FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF006E758B000000
      0000675E5300A6998600C4B49E00BCAD9800BBAC9700BAAB9600BAAB9600B9A9
      9100A2A2AA00A5B0CD0020252E001F171400372A240054443E004C4A5200454D
      5D00A9B5D600C6D3F800C9D6FF00C9D6FF00C7D4FF00C5D3FF00C8D5FF00CAD7
      FF00CAD7FF00C7D4FF00D2DFFF00FEFFFF000000000000000000A5D6EF00A5D6
      EF000000000000000000FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFF
      EF00FFFFEF00FFFFEF0000000000FFFFEF00CED6E70000000000000000009CA5
      E70000000000000000009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7000000
      00004A5273000000000000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000D6D6
      D600D6D6D600D6D6D60000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D6000000000000000000FFFFFE00D2C6B900D4C9BD00D4C9
      BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9
      BD00D4C9BD00D4C8BC00D4C8BB00938B820000000000FFF4F400FFEBEB00E0C1
      C100FDE3E300FFEBEB00FEE5E500FFEDED00917D7D00BFAAAA00B8A5A500E5CD
      CD00FFEFEF00FFE8E800FFEAEA00FFEAEA00FFECEC00FFEFEF00D2B8B8008682
      7E00C0FFFF00C2FFFF00C2FFFF00C1FFFF00BEFFFF00C9FFFF00EAFFFF00FAFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC74
      5700C6634300C7664700BE624400C46A4A0082D4860084D1840084D1840084D1
      840084D1840084D1840084D1840084D1840084D1840084D1840084D1840084D1
      840084D1840084D1840084D1840084D1840085D48500243B250000000000EEEE
      6C00E0E06600E0E06600C29A460078000000D2C15800D5C85B00993E1C007500
      00008C211000AF713300E5ED6C00E1E16700E0E06600E0E06600E0E06600E0E0
      6600E0E06600E0E16600C6614500C5614100EDCDC30000000000000000000000
      00000000000000000000000000000000000000000000EBF0FF00C8D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00CFDCFF000D0E11005A534800C5B59F00BFB09A00BAAB9600B0A2
      8E00BFB09A00C2B39D00BEAE9700BDB4AB00A6B1D000070506008A6D6000C4B6
      B900CAC0C600FBD6C800EED0CB00C9B7BB00868CA300909CBB00CCDAFE00C6D2
      FB00C9D6FF00C9D6FF00C9D6FF00C8D6FF00C8D5FF00CCD9FF00E6F3FF000000
      00000000000000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00000000007B7B
      7300FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF000000
      0000FFFFEF00FFFFEF009CA5E7004A527300000000009CA5E7009CA5E7009CA5
      E7009CA5E7009CA5E7009CA5E7009CA5E70000000000FFDEBD00FFDEBD007B6B
      5A00FFDEBD00A5D6EF00A5D6EF00A5D6EF0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00D6D6D60000000000D6D6D600D6D6D60000000000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600000000000000
      000000000000DDD4CB00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9BD00D4C9
      BD00D4C9BD00D4C9BD00D4C9BC00D4C8BC00D4C7BA00D5C6B900D4CABF00DDD6
      CB0035332F00F6E6E600FBE2E200F3D7D700F4D9D900FDE7E700E4C5C500F9E0
      E000FFEBEB00D8C3C300FADDDD00FDE3E300FDE4E400FAE0E000F4D8D800F1D5
      D400F2D6D500F5DBDB0061555500D6E8E400C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C1FFFF00C0FFFF00C8FFFF00F5FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5603F00C7664600C7664700B35C4000C66B
      4A0082D4860084D1840084D1840084D1840084D1840084D1840084D1840084D1
      840084D1840084D1840084D1840084D1840084D1840084D1840085D3850085D3
      850085D384002338230000000000EFEC6A00E1E06600E0E06600D7CB5D008815
      09007F040200D7CA5C00E4E86A00B27736008107030076000000A9632D00E2E5
      6800E1E26700E0E06600E0E06600E0E06600E0E06600E2E86800C55E4500C560
      3F00D18369000000000000000000000000000000000000000000000000000000
      000000000000CBD8FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00D2DCFC0000000000C3B3
      9E00BAAB9600BAAB9600BAAB960095897800504A3F0083786600A89F9400D3E1
      FF00221F2200BFA69900E4E8E50052C1FF0067C9FF00B1EEFA0051B6F400FFDA
      C400FFDDD700DFD0DB00CEDCFF00BECAF000C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00CAD7FF00E3EFFF00E7F3FF00000000007B7B7B007B7B7B00526B7300A5D6
      EF00A5D6EF00A5D6EF00A5D6EF007B9CAD0000000000FFFFEF00FFFFEF00FFFF
      EF00FFFFEF00FFFFEF007B7B73007B9CAD000000000000000000000000000000
      00009CA5E7004A5273009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5
      E700737BAD009CA5E70000000000FFDEBD00393129007B6B5A00A5D6EF00A5D6
      EF00B5CED6008C8C8C00BDBDBD00BDBDBD00BDBDBD00D6D6D60000000000D6D6
      D60031313100D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D60000000000000000000000000000000000D4CABF00D4C8
      BC00D5C6BA00D5C5B900D4C9BD00D2CFC500CEDCD400C9E9E400C7EFEC00D5F7
      F300B3BEB900CDFFFE00C1FFFF00C3FFFF00DBECE700A4A39E0000000000007B
      9D00007B9C0000708F0000858B000043570058555200676966003E3C3A000000
      000000888900006A8A0000A19D00008C9E00004059003A3A3800A5B6B300C1FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00BFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3DED800C764
      4500C7664700C76647008D493200C76B4A0082D4860084D1840084D1840084D1
      840084D1840084D1840084D1840084D1840084D184008ADA8A0087D687006CAC
      6B00558952003A5D39004767510086BAA200B0F2D90067A46400588B580088D4
      8500A3D67A00C3DB7000DEDF6700E6E76800DBCD5C008A1C0C00881A0C00DEDA
      6300E4EA6B00E5EC6B00DEDB6400B1773600A4582800C8AA4D00D9D05F00E2E3
      6800E0E06600E0E36700C86A4800C7664700C5604000FDF8F600000000000000
      000000000000000000000000000000000000E3EAFF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF009C999B0003030200C0B09B00BAAB9600BAAB9600BAAB9600BAAB
      9600C2B5A5009A9FB3002F343F00453D3E00937A7100E1C1B400B8FCFF00C3FF
      FF00B5FAFF008DE4FF009EEDFF00E8E5DC00FFD4C400FFD4C400FFDACB006A73
      8B00C9D6FF00C7D4FF00D1DEFF00DEEAFF00E7F3FF00E6F2FF00F8FBFF000000
      00000000000000000000A5D6EF00526B730000000000A5D6EF00A5D6EF00A5D6
      EF00A5D6EF0000000000FFFFEF00FFFFEF000000000000000000A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF0000000000000000000000
      00009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E700FFDEBD00FFDE
      BD00FFDEBD0000000000FFDEBD00A5D6EF00A5D6EF005A5A5A00BDBDBD00BDBD
      BD00BDBDBD00D6D6D60000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600000000000000
      00000000000000000000EBEAE500D2CEC400CEDBD300CCE2DB00C7F0ED00C3FD
      FC00C2FFFF00C1FFFF00BFFFFF00ACA6A10062565600B8B8B300C0FFFF00C1FF
      FF00C3FFFF00E4FFFF000400000000FFFF0000FFFF0009FFFF0000FFFF0000E4
      EB009C908B00D3FFFF0060524D00001A270000FFFF0000E4FF0000F0FF0011FF
      FF0000454A00A4B2AF00CAFFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C0FFFF00FCFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDA18D00C7664700C7664700C7664700783D2B00C76C
      4B0082D4860084D1840084D1840084D1840084D1840084D1840084D1840085D3
      85008ADB8A00629B6200233B2000121B1600374947007DA0A600B8EFF200C8FF
      FF00C6FFFF0086D683008BDC8B0083D084007FD0860082D1850094D47F00A4D6
      7A00CEE27000E3DD650099391A008A1D0E00D9D05F00E6ED6C00E2E46800E6EE
      6C00DBD46100BD904200BD8F4100D6C95C00E0E06600E0E16600CC7D4D00C766
      4700C7664700E7BEB10000000000000000000000000000000000000000000000
      0000C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00CAD7
      FF00CBD8FF00CCDAFF00CDDAFF00CCD9FF00CAD7FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D7FF00706A650023201D00BCAD
      9800BAAB9600BAAB9600BAAB9600BAAB9600BAAA9500C9BCAD00A4AAC0005344
      3D00DEB9AB00DFB7A900EDE2D600CDF7F400C9FCF900CAFFFD00C4FFFF00FDD4
      C400FFD4C400FFD4C400FFDAC900545C7100C8D6FF00D4E0FF00E7F3FF00E7F3
      FF00E6F2FF00E5F1FF00FEFFFF00000000000000000000000000A5D6EF00A5D6
      EF0000000000A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF00A5D6
      EF00A5D6EF00A5D6EF00A5D6EF00A5D6EF009CA5E70000000000000000009CA5
      E7004A52730000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDE
      BD00A5D6EF005A5A5A00BDBDBD00BDBDBD00BDBDBD00D6D6D600D6D6D6000000
      000000000000D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D6000000000000000000000000000000000000000000BFFC
      FC00C2FFFF00C1FFFF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C1FFFF005550
      4C00F8DDDD006E676100D9FEFC00C6FFFF00C1FFFF00C4FFFF004139350000C9
      DD0031FFFF0036FFFF000FFFFF0005FFFF0043333000D6FFFF000D0202000082
      980000FEFF0000F8FF0000ECFF0023BBBB0000000000D3F6F400C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00E1FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB725500C766
      4700C7664700C866470069362500C86C4B0082D4860084D1840084D1840084D1
      840084D1840084D184008BDD8B0086D486003E623D00000000003F515400A8CA
      DF00BEDAFF00C5E5FF00C4FFFF00C3FFFF00B4E9E20083D0810084D1840084D1
      840084D1840083D1840081D185007FD086008ADB8A00758D4B00C9CF6000AF60
      2C00871A0C00AD6C3200E4E76A00E1E36700E1E36700E5EA6B00E1E36800DDD8
      6300E0E06600E0E06600D1955300C7664700C7664700CE795E00000000000000
      0000000000000000000000000000ECF0FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00CAD7FF00858EA800404554002427300005070B00090B10001B1E
      25004A4F5E0099A3C100C5D2F700CEDCFF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00CBDAFF00403A310071685C00BAAB9600BAAB9600BAAB9600BAAB9600BAAB
      9600BAAB9600C5B8A700848BA1009D857D00F3CABA00E9C2B300FFD4C400FFD3
      C300FFD3C300FFD3C100DDECE500FFD4C300FFD4C400FFD4C400FFD9C700353B
      4200EBF6FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EBF5FF00000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0039312900000000007B6B5A007B6B5A007B6B
      5A007B6B5A007B6B5A007B6B5A000000000039312900FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000BDA58C007B736B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B006B6B6B006B6B6B006B6B6B006B6B6B00D6D6D600D6D6D600000000000000
      0000000000000000000000000000F5FFFF00C0FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00534E4B00A7949400004E700000B7B7001D5B
      5A00424F4C00B2AEAA00DEDED8000017280037FFFF0074FFFF0026FFFF0000E3
      E30004030300100D0C000908080000121C0000FEFF0000D1FF0000F8FF000001
      0100322B2800C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00BFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFEFE00C5603F00C7664700C7664700C867470051291C00CB6E
      4C0082D4860084D1840084D1840084D1840087D68700598D5900000000000000
      000099C1C600C4D6FF00B8C2FF00B8C2FF00B8C2FF00B7BFFF00C2FBFF00ACD9
      D2006E755A0083D3830078BF76007BC47A007FC97F008ADB8A0088D8880086D5
      8600528152001B2B1B0076BC780000000000B7BF5700F0F57000BD9242009E4D
      2300CAAE4F00E3E66900E3E66900E0E16600E0E06600E0E06600DCCF6200C764
      4700C7664700C6634300F8EBE70000000000000000000000000000000000D3DF
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C0CCF300000000000F0C
      07003530290067625E007E7B7D006F7077004A4F5B002428310030343E00A9B4
      D300CEDCFF00C9D6FF00C9D6FF00C9D6FF00CBDAFF00433C30008C827200BAAB
      9600BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600C8BEB30061667900D6BF
      C000EFC6B700DDB7AA00FFD4C400FFD4C400FFD4C400FFD3C300E5E7DE00FFD4
      C400FFD4C400FFD4C400FFDBC90033393D00E9F5FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00F6FBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B6B
      5A0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD007B6B5A0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD000000000000000000FFDEBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600D6D6
      D60000000000D6D6D60000000000000000000000000000000000000000000000
      0000C2FFFF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF004945
      420094838300003C5500017E7E0014BFBF0000C6C70005787900686E6B000000
      000000FFFF0042FFFF000DFFFF0000BBC000907C7C00EED8D8009D8B8A000000
      03000EFFFF0000F1FF0000FFFF00000000008B8A8600C1FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00F0FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3DFD800C7654500C766
      4700C7664700C867470047251900CC6F4C0082D4860084D1840084D1840084D1
      840081CB810000000000445A580097C2C200C1D2FF00B8C1FF00B8C3FF00B9CA
      FF00BAD2FF00C3EAFF00CBFFFF00686D5500615B3F0091DDA0006FA47C001F2D
      23000A120800639C630068A5690076C17A0091E6910003050300233823005F96
      6000040200006E6E3200F0F67000DAD36000B8863D00C6A44B00CCB25100DEDB
      6400E1E16700E0E06600E0DE6500C6634600C7664700C7664700DFA896000000
      0000000000000000000000000000C7D5FF00C9D6FF00C9D6FF00C9D6FF00C9D6
      FF00C9D6FF00BABDCF0000000000AD9F8C00C0B09B00C6B6A100C3B49F00C6B8
      A500C8BFB900BDC1D4009EA7C00041465300A9B4D300C9D6FF00C9D6FF00C9D6
      FF00CAD9FF0060564600A3968300BAAB9600BAAB9600BAAB9600BAAB9600BAAB
      9600BAAB9600C2BBB900373B4700F8E4EE00E1BBAD00BC9D9200FFD4C400FFD4
      C400FFD4C400FFD1C000DFEBE300FFD5C300FFD4C400FFD4C400FFE0CE00292E
      3300E9F5FF00E6F2FF00E6F2FF00E6F2FF00E5F2FF00FEFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFDEBD000000000000000000FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00000000007B6B
      5A00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD007B6B5A00FFDEBD005A21
      C600291063005A21C6005A21C6005A21C6000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600000000000000
      000000000000000000000000000000000000E2FFFF00BFFFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF004A454200E2CACA000034430000908D00007A
      7A00186464000AAFAD0000C7C7000005080000F1FF0002FFFF0001FFFF00007C
      9B00CAB3B200FFEDED00B29B9A00010004001EFFFF0010FDFF0000B9E000241C
      1A00D1E0DC00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00CFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFA69400C7664700C7664700C7664700C96748003A1E1500CD6F
      4C0082D4860084D1840084D184008BDB8B001E2F1E0010151600C8F9FF00C3DA
      FF00B7C0FF00BACDFF00BEEBFF00C4FFFF00CBFFFF00A9ECCF007CAD980094A2
      53004F411E00BCF5F200C7FFFF00AADCDF002F3C3E000000000044513500645C
      440060A0640066A26600020002004E7D4E00182B1C0000000000B2B15100E4E6
      6900E5EB6B00D9D05F00D5C85B00D7CC5D00DDD96300E0E06600E1E56700C55F
      4500C7664700C7664700C96C4E00000000000000000000000000F8FAFF00C8D5
      FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00C9D6FF00CED6F300000000009488
      7800C1B19C00BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600BAAA9300BCAE
      9B00CAD3F300C9D6FE00C9D6FF00C9D6FF00CAD8FF00AEA08C00847A6B00BAAB
      9600BAAB9600BAAB9600BAAB9600BAAB9600BAAB95008B8E9E002F334000DBDA
      F700987E74004E413C00FFD5C500FFD4C400FFD4C400F6DBCD0083E0FF0059BA
      F500FDD4C300FFD5C400FFD7C800666D7400E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00EAF4FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFDEBD00FFDEBD00FFDE
      BD00FFEFDE007B7B7B007B7B7B00000000000000000000000000FFDEBD000000
      00007B6B5A00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00000000007B6B5A00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD0039312900FFDEBD00421894005A21C6005A21C6005A21
      C600291063005A21C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFFFF00BFFFFF00C1FFFF00C5FFFF00D1FFFF00D4FFFF003B34
      3200E7CACA00031D1D00008196000CC1C000839F9F00004A5D00006B88000049
      5C00007B7C0016FFFF0000FFFF0000324D00FFF0F00097858500D7BCBC000900
      000001FFFF0000FFFF00000B1200D9DFDA00C9FFFF00C1FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C0FFFF00FAFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C55E3D00C7664700C766
      4700C7664700C967480022120C00D0704E0082D4860084D1840087D78700131F
      130032424200C7F5FF00B8BFFF00BAD1FF00C0FFFF00DFFFFF00ADAFAB001F1A
      1900000000000000000037484900D7E238005B4D1A00747E6600C6FFFF00C2FF
      FF00C4FFFF00C7FFFF004458580000040500482C2500837674001B331B006868
      6800412B1B009E7950000000000042421E00ECEC6C00E0E06600E0E06600E0E0
      6600E0E06600E0E06600E1E46700C8684800C7654700C7664700C6644400F3DE
      D7000000000000000000F0F3FF00CAD7FF00C8D5FF00C7D4FF00C7D5FF00C8D5
      FF00C8D5FF00D3DFFF0000000000665E5300C6B6A000BAAB9600BAAB9600BAAB
      9600BAAB9500B7A79100BEAE9800BAA98F00C5C9DD00C9D6FF00C9D6FF00C9D6
      FF00C9D7FF00AFA49600978B7900BAAB9600BAAB9600BAAB9600BAAB9600BAAB
      9600BAA992006065770080889D00D9E4FE009D80750027201D00FFDACA00FFD4
      C400FFD4C400E7EADF0022ABFF00C7FEFF00E0CACA00FFD5C300C8A69B00BAC4
      CF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00F4FAFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDEBD0000000000000000000000000000000000FFDEBD00000000000000
      000000000000000000000000000000000000FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDE
      BD00000000005A21C6005A21C6005A21C600000000005A21C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6FFFF00C9FE
      FD00CBD8D20090868300797574001B181C005A4F4E00070000006E6059001357
      57006784840000BAC800007A7E00005868000020230000E7F50000FFFF000010
      210000000000685F5F00EDD3D3001303020013FFFF0000FEFF0000000000B9B7
      B000CFE9E400CFFFFF00C2FFFF00C2FFFF00C1FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00DCFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FEFCFC00C5604000C7664700C7664700C7664700CA674800190D0900D170
      4E0082D4860084D184008BDC8B0000000000B3E9E800B8C3FF00BEE3FF00C1FE
      FF00DAFFFF0097908C0000000000000000001A1A1900C7BFBA00EFF7F400ECFF
      5F00C3BD0A004E401E00A9D5CD00C2FFFF00C2FFFF00C3FFFF00C9FFFF009ECB
      CB0000000000705148007977780079787800090A0C0034140D001F100B000000
      0000A5A54B00E1E16600E0E06600E0E06600E0E06600E0E06600E0E26700C96D
      4900C7644600C7664700C7664700D68F78000000000000000000F4F9FF00E0ED
      FF00DBE7FF00D7E4FF00D3E0FF00D1DEFF00CDDAFF00CEDDFF001A1711002321
      1D00B7A89300BAAB9600BAAB9600BAAB9600BBAE9C00ABA2990082797200C5C0
      C100C8D6FF00C8D5FF00C8D5FF00C8D5FF00C9D7FF008B858100BAAB9600BAAB
      9600BAAB9600BAAB9600BAAB9600BAAB9600BAAA930068707800DBE6F100E6F5
      FF00E8BFAF0064534D00FFE2D100FFD4C400FFD4C400DFF0E70032B3FF00B9F7
      FF00E2D7D200FFD4C3004B3D3600EBF8FF00E6F2FF00E6F2FF00E6F2FF00E5F2
      FF00FEFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFDEBD0000000000FFDEBD00FFDEBD00FFDE
      BD000000000000000000FFDEBD0000000000FFEFDE0000000000000000007B6B
      5A00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000000000000000
      00007B6B5A00FFDEBD00FFDEBD00FFDEBD007B6B5A0000000000FFDEBD00FFDE
      BD00FFDEBD00FFDEBD007B6B5A00FFDEBD00000000005A21C6005A21C6005A21
      C600000000005A21C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECFFFF00DFDDD6001C31400000919A0000A2A90000A6
      C3000000000000607100464B5100B3A19B0076787400183F3D0000AAAA0000B9
      BB00000000000093A60001FFFF0000000000FFFBFB0044414100EFD4D4002410
      0E0005FEFF0000E0F900000D0C00052838002C2C30009E949000D5F4F100CCFF
      FF00CDFFFF00C9E4E000CFF0ED00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C3FFFF000000000000000000000000000000
      000000000000000000000000000000000000F2DBD400C7654600C7664700C766
      4700C7664700CA6748000D060500D2714E0082D4860084D184005E955E000405
      0500CDFFFF00B8C4FF00C1FFFF00CDFFFF00938F8C000000000003020200A29B
      9700EBE2DC00FFFBF500FFF2ED00FDFE5600FFFF00003F2B12006F745B00C3FF
      FF00C2FFFF00C2FFFF00C3FFFF00CBFFFF0080A5A50000000000BEA198002023
      2400BEBFBF00090E0F00A2533A000000000009090400ECEC6C00E2E26700E0E0
      6600E0E06600E0E06600E1E36700C86A4800C7644700C7664700C7664700C765
      45000000000000000000EAF5FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00D2D3D2000000000025221E00BDAE9900BAAB9600BAAB
      9600BAAB9500BCAE9900CEC8BB00848B930064696C00F3FFFF00E8F4FF00E8F4
      FF00EAF5FB00645C5000BBAB9700BAAB9600BAAB9600BAAB9600BAAB9600BDAE
      9900D6D7D400E1EDF900E7F3FF00F1FEFF00A7A5A900F9D3C200221C1A00FFDC
      CC00FFD4C400E2E9E100C8FFFF00C1FFFF00FFDFCD00D9B5A600868F9700E6F2
      FF00E6F2FF00E6F2FF00E5F1FF00ECF5FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFDE
      BD0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD000000000000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDE
      BD00291063005A21C6005A21C6005A21C600000000005A21C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C87
      8200085256002A41410030343400252B2C0062811E000084880000E6E5000026
      400097928A00CCFFFF00C3F2F100A6A8A300292725000001040000FAFF000300
      00000000000008070700FBE5E5004C38380000FAFF00003A350003494900008B
      890000BEBC005CFFFF0000C7CC00004D4D00211F1F00EFD6D600685A5A00D0FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C1FF
      FF00ECFFFF000000000000000000000000000000000000000000000000000000
      0000D07E6400C7664700C7664700C7664700C7664700CA68480000000000CC6E
      4C0082D4860089D88900020402005C7B7A00BAD0FF00C3FFFF00989B9800120D
      0C0000000000AAA39F00FFFCF500FFF1EB00FFF1EB00FFF1EB00FFF7F200B0AF
      1100FFFF0000D5D207004C3B1300BDF4F100C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00CCFFFF000C121300805C5100E2E6E7000000000017181800723A
      290000000000030301008D8D4000E2E26700EBEB6B00EEEE6D00ECF36D00C55D
      4500C7664700C7664700C7664700C76445000000000000000000E8F3FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EEF9FF000605
      030000000000C6B6A000BAAB9600BAAB9600BAAB9600BAAA9500B7A79100D7D1
      C70004060700A6AEB600F1FDFF00F1FDFF0044494F00BFAF9A00BAAB9600BBAC
      9700BDAD9800BDAE9900BFB09A00AD9E8900E1ECF700F4FFFF00F5FFFF007980
      87009FABB700B29388003C322E00EDCABB00FFDFCE00F7DACC00C1FFFF00C5FD
      FC00DBB6A70029211D00F3FFFF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00F9FC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFDEBD0000000000FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD007B6B5A0000000000FFDEBD0000000000FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDEBD00FFDE
      BD00FFDEBD00FFDEBD0000000000FFDEBD00291063005A21C6005A21C6005A21
      C600291063000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFB00898682006B595900C99C9B00D9AFAF00DDB4B400AE8E
      8F008CB438004E3437003B424300000A1500726D68004F525000151A1900B0E3
      E300A2A9A5000000000000FFFF0012030300FFFBFB0000000000FFF8F8006855
      550000FDFF00000000000B5F5F00056F6F00156969002F61610001BABA0018FF
      FF0000404C00F3D9D9006A595900CFFFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00CCFFFF00FCFFFF00000000000000
      000000000000000000000000000000000000C6644500C7664700C7664700C766
      4700C7664700CB69490001010100C96D4B0082D486008CDE8C00000000007CA5
      A300BCDAFF00D1FFFF000200000000000000635E5C00FFFEF800FFF1EB00FFF1
      EB00FFF1EB00FFF1EB00FFFBF700A6A70000FFFF0000FFFF0000B4AD0C006A73
      6400C3FFFE00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C3FFFF009FCDCD000000
      0000F9EBE50000000000AB9A9400B95B3E000000000000000000000000003439
      1600575A2800787A37009DA04800C9624700C7664700C7664700C7664700C866
      47000000000000000000E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00DAD9D6005E55490008070600C7B6A000BAAB
      9600BAAB9600BAAB9600BAAB9600C1B19C00BAA993006A7073003A3E43008B92
      9600D2CABF00C1B29C00AEA08C0084796A00A0938100BDAE99001F1C19003C39
      35008A8E9100879DAA0056738100D4EDFB006F93A400EFF9FF00E2D4D2004436
      3100110D0B00FFDECD00C2FFFF009E7E7200AEBAC100F2FFFF00E6F2FF00E6F2
      FF00E6F2FF00E5F2FF00FBFDFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFE7
      CE0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00000000007B6B
      5A0000000000FFDEBD007B6B5A00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00BDA58C0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDE
      BD00291063005A21C6005A21C6005A21C6002910630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCF8F4002A1F1F00045A
      6E0000B1BD0000C0C10000C1C100004E7200BBC270000006090039353800C199
      9900B59695003B3C2400E3EDE800C2FFFF00DAFFFF008B85800000689800513E
      3C00FCE1E10000000000FFF2F20097858400007FAF00181716000062620000B6
      B60000ADAE0000656500275555006D7F7F00001D250086787800342A2A00D0FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C0FFFF00C7FFFF000000000000000000000000000000000000000000FDF8
      F700C5624200C7664700C7664700C7664700C7664700CE6A4A0000000000C369
      490083D5860088D8880000000000AFE5E600C6FFFF0015121200000000006B65
      6200FFF5EF00E9F6F200C7FDFD00F6F3EE00FFF1EB00FFF1EB0090878700B9B9
      0000CFCF0000F6F60000D6D60000F6EE6500F5F2F000C0FFFF00C2FFFF00C2FF
      FF00C2FFFF00C4FFFF00C4FFFF00A5D6D60002000000A7837700F2D8D000645A
      5900936076002A1B2100FFABD200FFA6C900E5899200CD6C520000000000CD6A
      4900C7664700C7664700C7664700C86B4C000000000000000000E5F1FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EAF7
      FF00D4D0CA0000000000867C6C00BDAD9800BAAB9600BAAB9600BFAF9A009689
      79001D1B18002A261E00C8C3B800D3CBBD00BCAB94008176680093877700B3A4
      9000C7B6A0009D907F0004030300BEAF9900C7BAA600C2D5D700BDEFFF00B5E7
      FF00BBF1FF00D5EEFF0079818B00F7E9E30089756E00C7BBB200DDE1DA005357
      5B00F1FDFF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E4F1FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B6B5A00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD0000000000BDA58C0000000000FFDEBD007B6B5A00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD007B6B5A0000000000FFDEBD00FFDE
      BD00FFDEBD00FFDEBD0000000000FFDEBD005A21C600000000005A21C6005A21
      C600291063000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCF8F40000111A0000FFFF0018FFFF0028FFFF0012FFFF00004A
      6C00ABAB6F0000030B0000C7D000064949002F2A2B00778E3800ABA8A600C1FF
      FF00C9FFFF00CFD1CB0000101A00211A1A00544B4B00000000005B4E4E003C34
      3400000912009E9D98009B999600394240000F4647000095950024A0A0000A66
      660000171C00D6BFBF0051464600CEFFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00BFFFFF00000000000000
      0000000000000000000000000000EDCEC300C7654600C7664700C7664700C766
      4700C7664700CF6A4A0000000000C067470083D5860088D6880000000000B7F2
      F200CDFFFF00000000003D393800F8EFE900FFF1EB00FFF1EB00DEF8F600C2FF
      FF00D3FBF900FFF4ED003B363500716D5F00595816006969000007070500B0D4
      DC00EDF4F000C0FFFF00C2FFFF00C2FFFF00C3FFFF00B1D2CF00B8E6E300D2FF
      FF0000040400200E080000000000D68CAA00DA8EAE0000000000C17D9A00FFA8
      CE00FFACD600EA8377000F070500C9684800C7664700C7664700C7664700C96D
      4F000000000000000000E4F1FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E7F4FF00E8F3FE005E54480001010100BDAD
      9800BBAB9600BFB09A009A8D7B000000000036332C00BEAF9900C4B39B00B1A1
      8C005F574D009B8E7C00BFB09A00BBAC9700A195830012110F008A7F6F00BCAD
      9800B9AA9500BAA68F00B9B6AA00B2E8FF00B3E6FF00BDEFFF0031333600ECFD
      FF00FFF3F2006F8A8900A4969600D4E0EC00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E8F3FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDEBD0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDE
      BD0000000000FFDEBD00FFDEBD0000000000FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFADDE00FF7BF700FF7BF700FFDEBD00FFDEBD00FFDEBD00FFDE
      BD007B6B5A0000000000FFDEBD00FFDEBD00FFDEBD007B6B5A0000000000FFDE
      BD005A21C600000000005A21C6005A21C6002910630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCF8F400004F590001FF
      FF004AFFFF0000C3C300006770002611100022000F000000000004FFFF0000FF
      FF000081A8009199520061595A00C1FFFF00C0FFFF00D7F1ED00A7A29B000000
      000001070800004A550032292900000000008A857F00D5ECE800CDFFFF00D0F1
      EE00C2C3BE0069605D00084444000091970000273300FBE0E00065565600CEFF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C1FFFF00F1FFFF0000000000000000000000000000000000DA9A
      8500C7664700C7664700C7664700C7664700C7664700D06A4A0000000000BD66
      470083D586008ADB8A0000000000B6F0F000BEF9F90000000000BCB1AD00FFFE
      F800FFF1EB00FFF1EB00FFF0EA00E3F7F400CCFDFC00CEFDFC00D8D2CE00FFFB
      F8003F3C21006767000000000500E2FFFF00C0FFFF00C2FFFF00C2FFFF00C4FF
      FF00ABBFBD008C726A0070241B00A5B2A900516C6C0000000000FFF3F900FFA7
      D000FCA4C90000000000A76D8600FFA6CC00FFA7CE00DF7A6800381D1400C866
      4700C7664700C7664700C7664700CA6F52000000000000000000E4F1FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E9F6FF00958979000000000071675B00BAAB9600BDAD9800C0B1
      9C00C6B6A000574F4500625B5000AC9D8A00BDAE9900BAAB9600BAAB9600BDAE
      990005050400988B7A00BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600B7C6
      C600B4E9FF0068717900D7E1E900ABAAAC00755D5400C3F7FE00FFE4D7003B42
      4700F5FFFF00E9F5FF00E6F2FF00E6F2FF00E5F1FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFDEBD000000
      000000000000FFDEBD0000000000FFDEBD0000000000FFDEBD00FFDEBD007B6B
      5A00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFADDE00000000000000
      000000000000FF7BF700FFDEBD00FFDEBD000000000000000000FFDEBD00FFDE
      BD00FFDEBD00000000007B6B5A00FFDEBD005A21C600000000005A21C6005A21
      C600291063000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFEFB0063625D00000E16005F030000EB746300F86D5E00FF9E
      8800FFAB9300FF968400AD342B002410100002202B007786440004001100D9FE
      FC00C2FFFF00C2FFFF00C1FFFF00D8FFFF000D12130000727A00E7F7F200CFFF
      FF00C0FFFF00C3FFFF00C2FFFF00C2FFFF00C4FFFF00898480001D100A00C8BB
      B400130E0F0053444900231A1F0083807E00CFE1DC00C3FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00BFFFFF000000
      0000000000000000000000000000C5603F00C7664700C7664700C7664700C766
      4700C7664700D36B4B00000000004E2B1E00407247004A7B4C0000000000A1D4
      D400B7F1F10000000000FFFAF400FFF2EC00FFF1EB00FFF1EB00FFF1EB00FFF7
      F100FBECE600FFF0EA00DBFAF8006A8D96007A7A0000A3A90000141A00000000
      00008B979500C0FFFF00C2FFFF00C6FFFF00732F2200783D3200813C5C008300
      A400C8FFFE00394F4E00E292B400FFA6CC00FFB2DA000000000086576B00FFA6
      CC00FFA8CF00CC694C0087453100C7664700C7664700C7664700C7664700CF7D
      62000000000000000000E4F1FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EEF4F6000000
      0000A6998600BAAB9600BAAB9600C6B69F0061594E00504A4100C5B59F00BEAE
      9900BAAB9600BAAB9600BAAB9600645C5100877C6D00C4B59F00BAAB9600BAAB
      9600BAAB9600BAAB9600BAAB9600B9B2A200BAEFFF0019191A00BEC7CC009576
      6A00ECCFC30055C6FF00BCCAD600C4B4AF007B818600E3EFF800E6F2FF00E6F2
      FF00E6F2FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039312900BDA58C00000000004A5273000000000000000000FFDE
      BD0000000000FFDEBD00FFDEBD00000000007B6B5A00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FF94EF0000000000FF7BF7003918390000000000FFADDE00FFDE
      BD0000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00000000007B6B5A005A21
      C6005A21C600291063005A21C6005A21C6002910630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8D3CF0063605D00220303009C29
      2100FF968000FFAF9800FFAA9100FFA48D00FFAA9500FFD0C200FFB19A00DA32
      2A00AC2A210049281F0000000300E7F4EF00C2FFFF00C2FFFF00C2FFFF00C4FF
      FF000E13140000697A00E2FFFE00BFFFFF00CBFAF900BADEDC00C7FFFF00C2FF
      FF00C1FFFF00ECFFFF002103230007414600009BBF0000AECA0000AECD000080
      920028546300D0F8F700C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C0FFFF00FBFFFF00000000000000000000000000C45F
      3E00C7664700C7664700C7664700C7664700C7664700CB6849007E412D00572C
      1F004621190039201900110B080082AAAA00BCF7F70000000000FFFFFD00FFF1
      EB00FFF1EB00FFF1EB00FFF8F300C2B3A6006A5B3E00FFFEFA00FFFFFD005255
      0C00FFFF0000C69B0000D0B000008687000000000000E6FFFE00BFFFFF00C2FF
      FF00B1D2CF008F756D007E3A50009226CB00CFFFFF0078A0A000BF7B9800FFA6
      CC00FFB0D80000000000754C5E00FFA6CD00FFAAD300C2634100AB583D00C766
      4700C7664700C7664700C7664700D3856C000000000000000000E4F1FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00DCE3E7002E2A2500C1B09B00BAAB9600C1B19B00776D
      600027242000C5B59F00BAAB9600BAAB9600BAAB9600BBAC9700C3B39D000000
      0000C7B7A100BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600C4B5
      9F003A4D5700C8D2D80031252100F8F2E200B9F1F900B6F9FF00A6F1FF00ABC6
      E2005150520041434500EFFCFF00E6F2FF00F1F8FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFEFDE0000000000FFDE
      BD009CA5E7009CA5E7009CA5E700FFDEBD007B6B5A00FFDEBD00FFDEBD007B6B
      5A00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD000000000000000000FF7B
      F700FF7BF700FF7BF70000000000FFADDE00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD000000000000000000FFDEBD005A21C6005A21C6005A21C600000000005A21
      C6005A21C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDC7C10000000000E2594C00FFA18B00FFA58E00FFB3A000FFA69100FFA3
      8C00FFAE9800FFBFAE00FFB29D00DB312A00E6161300C15A4D003D3B3700DAF3
      EF00C2FFFF00C2FFFF00C2FFFF00C4FFFF001512110006243100DFFEFE00C0FF
      FF00C8FEFD00554C4900BFCFCB00C1FFFF00C6FFFF00E1F8F300000F63000041
      440000B7BC0000B5BA0000B4BA0000D5D80000BCDC00D0EDE900C5FFFF00C1FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00E2FF
      FF000000000000000000F9EFEB00C6634400C7664700C7664700C7664700C766
      4700C7664700C6664700D26C4B00D56D4C00A5AC990070ECE70049A1A0006180
      8000C8FFFF0000000000FFFEF900FFF1EB00FFF1EB00FFF8F300E1D5CE005243
      180046370F00C4B8AA009B8E8500ABA60700CF9E000081050A0081080200FFFF
      000003030000FFFEF900CDFCFB00C0FFFF00B2D7D500886359007D057C008663
      5400CCFFFF008CBABA00A66B8400FFA6CC00FFAAD100000000006A455400FFA6
      CD00FFA9D200B95D3B00BE614400C7664700C7664700C7664700C7664700D58C
      75000000000000000000E4F1FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EAF7FF00413A3000C5B5
      9F00BEAF9A006D645700080706008A807000BEAE9900BCAC9700B2A48F00C0B0
      9A0093877600968A79006A615500AFA18D00BAAB9600BAAB9600BAAB9600BAAB
      9600BAAB9600BEAE9800C2B6A5001C1E1F00FEFFFF00211D19007AE1FF006CD2
      FF0096E7FF00B1F6FF00C6FFFF00D8FFFF00099EFF00BDD7F10031333700E9F5
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFF7EF00393129007B6B5A00000000009CA5E7009CA5E700BDA5
      8C00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDEBD00FFDEBD00FFDE
      BD00FFDEBD0000000000000000007B397B00FF7BF700FF7BF70000000000FFAD
      DE00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FFDEBD00AD7BC6005A21
      C6005A21C6005A21C60000000000291063004218940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF7F2005E615E00DD3C3200FFD2
      C700FFA18900FFA48D00E0927E00DCA3940052464200ACB0B0003F2D28009157
      4B0000000000BBBDB800C5FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C9FFFF00C9FFFF00C1FFFF00C2FFFF00C2FFFF00E2FEFB0011000000B5B1
      AB00322A2900B8959400000E4C0065102C00937A7A00A9828200A9807F00A47A
      7700B68684009071720039312F00C0DEDB00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00BEFFFF000000000000000000DB9C8800C766
      4700C35C3B00C5604000C6644400C7654600C7664700C7664700C7664700C766
      47009EA8950061FFFF006CFFFF0000000000CFFFFF000B101000FCEEE900FFF6
      F000BAAE9F0056472100D7D40200FFFF0000F2F00200D2CE0600FFFD0000D8D8
      0000D5C90000D7AC6100A3540000FEFE0000597C8100DFF9F600FFEFE900E5F7
      F4009C9D9200AE95F60080474E008A00C800CBFFFF0086B4B200C27D9B00FFA6
      CC00F39EC30000000000C6819E00FFA6CC00F59BB500B15A3E00D06A4A00C766
      4700C7664700C7664700C7664700DB9B87000000000000000000E5F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E7F2FC00584F4500BBAB9600BAAB960000000000312D2700C4B5
      9F00BAAB9600B0A28E00BEAF9900AFA08D004B463D00C1B29C0013120F00C6B6
      9F00BAAB9600BAAB9600BAAB9600BAAB9600B9AA9500BDB5A90041424100BFCA
      D100E9E6EA008BA29F00B6F9FF00B0F6FF0091E5FF00B3F7FF00BAF8FF0080DB
      FF00069CFE00C5D1E00006080900FBFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFDEBD000000
      0000000000004A5273009CA5E7007B6B5A00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD0000000000FF7BF7000000
      0000FF7BF700FF7BF70000000000FFADDE00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD0000000000FFDEBD005A21C6005A21C6005A21C6005A21C6005A21C6005A21
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFB0095948F00B6332A00FFD7CC00FFA08A00FFA38C00F1A08C004F37
      3100BF8677005B443D00AE4C410017131200817B7700D0FFFF00C1FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00CED3CA0015033F00807E7900302423003C4E56000E0A2D00AE20
      4800000A0B00008B99000083980000516E0015616B00565957004D3D3C00AEB7
      B300C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00EFFFFF0000000000FCF7F600F0D7CF00E1AE9D00D58C7400CA6D4F00C663
      4300C45E3D00C45F3E00C7664700C766470096B5A50060FFFF0068FFFF000615
      1500C8FFFF00688A8A00BFB4B000FFFEF800AB9D8800D5D20100FFFF0000FFFF
      0000FFFF00006F6F00009DB87F00B1B0A30068652E00E6E30000F4F60000E7E3
      2F00D6FAFC00BBFFFF00DBF9F700D7FBF800BEF4F0007E0B7C0080018C008A0F
      B900CFFFFF0064888700EA98BB00FFA6CC00B8779300281A2000F9A3C800FFA6
      CC00E88F9B00B25A3E00CD694900C7664700C7664700C7664700C7664700DDA2
      8E000000000000000000E8F3FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E7F3FF00C3B8A800BDAE9800BEAF
      9A0000000000BEAF9900BFAF9A00BAAB9600BAAB9600B5A691000B0A0900897E
      6F00BCAD9700B7A894007F746600BAAB9600BAAB9600BAAB9600BAAB9600BAAB
      9500C6C2BA0005060700B5BFC800E7F4FF004A3D3700F6F3E800B5F3F600CBFF
      FE005CC9FF0081D9FF0076DBFF00C8FFFF00C9FFFF00C5FDFC00D6D3DA00BBBA
      BA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFDEBD00000000004A5273009CA5E7004A52
      7300FFDEBD00FFDEBD00FFDEBD00FFDEBD000000000000000000000000000000
      00000000000000000000FF7BF700FF7BF700FF7BF70000000000FF7BF700FFDE
      BD00FFDEBD00FFDEBD00FFDEBD0000000000FFDEBD00AD7BC6005A21C6005A21
      C6005A21C6005A21C60000000000000000005A21C6005A21C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFD00CDC8C2007E2D2600FF9E
      8600FFA48E00FFCCBF00FFA28B00F2A08B003C272200BC86760005000000BABE
      B900DDFFFF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C0FFFF008E86770000086B007670
      6C00000D100000EFF400240000005C071500401A52000071710000BBBE0000FF
      FF0000FFFF0000CED700090A0B00ACAFAB00C1FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00D1FFFF0000000000000000000000
      000000000000FFFEFE00F9EFEC00EDCDC200E6BAAD00D9978300C7674800C866
      46008BC5B90061FFFF0066FFFF003B969600769B9B00C3FBFB0033313000F8F5
      F200E9E42D00FFFF0400F8F80300F2F30000EEEF0000898A0000192A3400D5FF
      FF00E3E7EC00C5B99C00D4CA9C00FCEFE800FFF3ED00D9FAF700BCFFFF00C0FF
      FF00C3FFFF00AECFC100A098AE00B7E0DD00BFF9F9001B2A2800FFABD200FFA7
      CE00452D380080536600FFAFD600FFA6CD00D9858200B2583C00C9674700C766
      4700C7664700C7664700C7664700E0AA97000000000000000000EBF5FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E9F7FF00BAAB9600A0938100B2A4900034302900BFB09A00BAAB9600BAAB
      9600BAAB9600BDAE99007A706200C6B6A000BAAB9600867C6C00B9AA9500BAAB
      9600BAAB9600BAAB9600BAAB9600B9A892005E6369008C949D00F5FFFF00E9F6
      FF00231A1700FFDACA0091C5C500CDFFFF003CBCFF00D2FFFF00B9DDE900C0FF
      FF00C2FFFF00BEFFFF00FDEEEA00737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFDE
      BD00FFDEBD004A5273000000000000000000FFDEBD00FFDEBD00FF7BF7000000
      000000000000FF7BF700FF7BF70000000000000000000000000000000000FF7B
      F700FF7BF70000000000FFDEBD00FFDEBD00FFDEBD00FFDEBD00000000000000
      0000FFDEBD0000000000000000000000000000000000000000005A21C6005A21
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F6F10010000000FFA68E00FFB6A500FFB4A200FFB09C00FFA3
      8D00FFA48D00AC393000C5C2BC00BFFFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00CEFFFF001408080008034C00404D4000161D2F0051487C00CB53FD00E287
      FF00CD5BFF00957EE900AB67F300305B650008575E0000DEE700042635009EA0
      9A00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00BFFF
      FF00D3FFFF000000000000000000000000000000000000000000000000000000
      000000000000F6E5E000C6634300C864450077E4DF0063FFFF0066FFFF006AFF
      FF00020A0A00B4E7E70086AFAF000306060000000000FFF1F300FFF3F400FFF5
      F600FFF7F700FFFCF9005EC4FF0092A3ED00B997EB00B098ED00BEA1EB00E9A9
      E300F6B7E300FACCE600FFF2EA00F7F3EE00C8FDFD00C0FFFF00C2FFFF00C6FF
      FF001C2B2900351E2700FFA7CE00F6A4CA0000000000FFAED600FFA6CC00FFA8
      D000C4705400C7694B00C7664700C7664700C7664700C7664700C7664700E5B9
      AA000000000000000000EFF7FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00ECF9FF00EAF3FA00322D260071685C00A296
      830081776800BAAB9600BAAB9600BAAB9600BAAB9600BEAF9A00BCAD9800BAAB
      9600BAAC97004A433B00C4B49E00BAAB9600BAAB9600BAAB9600BAAB9600D0C7
      B90000000000F0FCFF00E8F4FF00EFF8FF00231B1800FFD6C400798F8D00CFFF
      FF00ADD9E900C6F9F900FFD4C100E4E7DE00BFFFFF00BFFFFF00FFF4E9004B4B
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFDEBD00B5B5DE0000000000737B
      AD0000000000FFDEBD0000000000BD5ABD00FF7BF700FF7BF700FF7BF700FF7B
      F700FF7BF700FF7BF7007B397B0000000000BD5ABD00FF7BF700FFDEBD00FFDE
      BD00FFDEBD00FFDEBD0039312900FFDEBD0029106300291063005A21C6005A21
      C600AD94E700AD94E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFC0000000000FE90
      7B00FFB7A500FFBDAE00FFC3B400FFB19F00FFA08900DF453B007E7D7900C0FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00E5FAF60001000000104138003089
      8B007384C800A079F000DB7FFF00C644FF00CA50FF00D761FF00DC75FF004DB7
      BF00AC40D300005039005C534F00D6F7F500C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00BFFFFF00DDFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000D7917A00C7664700C963
      43006CF7F50064FFFF0066FFFF0066FFFF003C9696002B393900D5FFFF007BA4
      A400B0A6A200FFF2EC00FFF1EB00FFF1EB00FFF1EB00FFF2EB00ABD6F2001F5B
      F1009B2DD800C94BD7006524DE004754EA00534EE7007635DF00FFFBEC00FFF1
      EA00FAF2ED00CAFDFC00C1FFFF00CEFFFF0000000000C6809E00FFA8CF006C46
      5600452D3600FFA8D000FFA6CC00FFAAD400C16C4C00C56C4E00C7664700C766
      4700C7664700C7664700C7654600E8C1B4000000000000000000FAFDFF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EAF7FF003835
      310002010000C6B6A00057514600A1948200B3A59100BAAB9600BAAB9600BAAB
      9600C0B09B00766C5F00BBAC9700BAAB9600BFB09A0049443B00BBAB9600BAAB
      9600BAAB9600BAAB9600B9A892005E656D009EA6AF00E6F2FF00E6F2FF00F8F7
      FD002B232000FFD8C8004F413C00FFD6C500FFD4C400FFD6C500FFD8C800FFD8
      C700FFD5C500E5E8DF00FFEEE2003B3C3C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A5273009CA5E700000000009CA5E70000000000DEDEDE000000
      000000000000DEDEDE0000000000FF7BF700FF7BF700FF7BF70000000000FF7B
      F700FF7BF700FF7BF700FF7BF7007B397B0000000000FFDEBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000131E1C00E93E3400FFD4C900FFA28B00FFA28A00FFAF
      9B00FFA38D00FFAA920001030300C9FFFF00C1FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C0FFFF00DFF4F00033433C006D6CAE007C65BE00905CCD009B6FEA00C056
      FC00CD58FF00DD8FFF00E3A3FF00BF53F000524780003F416A00B3B7AF00CDFF
      FF00C2FFFF00C2FFFF00C2FFFF00BEFFFF00D5FFFF00EEFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAF0ED00C5614100C7664700CE5D3B0061FFFF0066FBFD0065E2EA0066FF
      FF0068FFFF001E4B4B00253131009AC6C60085ACAC00455F6000D2FFFF00EAF6
      F100F9F2ED00FFF0EA00FFF9E9001274F7006C40E200DEFFF900B68FEA00355B
      ED00BA6CE2004672F000CCFFFD00DDF8F600FFF1EB00FFF0EA00D2FFFF000000
      0000FEA9D000FFAED5006A45550040293300FFACD400FFA6CC00FFA6CC00FDA4
      C800C16E4F00C1725600C7664700C7664700C7664700C7664700C7654600EFD3
      CB00000000000000000000000000E5F1FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E5EDF300000000004D473E00BAAB9600B6A79300857A
      6B00BAAB9600BAAB9600BAAB9600BAAB9600BAAB96009B8F7D00BAAB9600BAAB
      9600C3B39D006C635700BAAB9600BAAB9600BAAB9600BAAB9600CCC4B8000505
      0600F1FDFF00E6F2FF00E6F2FF00F9F5F90017121000FFDAC900372E2A00FFDD
      CB00FFDECE00F8CFC000E5BFB100ECC5B700FDD2C200FFDAC800FFF5E7004E4F
      4F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A5273009CA5E7004A52
      73009CA5E7000000000000000000A5A5A500DEDEDE00DEDEDE00A5A5A500FF7B
      F700000000004A5273009CA5E7000000000000000000FF7BF700FF7BF700FF7B
      F70000000000FF7BF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E524F00DF41
      3700FFB8A600FFA18A00FB8A7600FFA99300FFCBBB00FFA9910000000000E3FF
      FF00C0FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C1FFFF00C8BAB2000075
      8D000038390000333D0005573F004EA5B900E277FF00CB55FF00CB54FF00C95F
      EF0072379800006A3A00D7E8E400C3FFFF00C2FFFF00C2FFFF00BFFFFF00DCFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCA18E00C7664700C7664700CC5F
      3E0060FFFF0066FFFF00648EAC0066FFFF0066FFFF0062F1F100000000000609
      0900D3FFFF00131A1A00ABE0E000C0FFFF00C6FEFD00DBF5F500D9E5ED001282
      F900643EE300FFFAEB00F8ECEC00286CF2004C99F700BBE2FA00C0FFFF00BFFF
      FF00D1FCFA00E3F9F60088B9B80041273100FFB3DC00EE9FC40000000000EF9E
      C300FFA6CC00FFA6CC00FFA6CC00F398AF00C2705200BE7B6100C7664700C766
      4700C7664700C7664700C6644500F2DCD400000000000000000000000000E7F3
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E8F6FF00B0A1
      8B002F2B2600C3B39D00BAAB9600BBAC9700BAAB9600BAAB9600BAAB9600BBAC
      97002D292500C5B59F00BAAB9600BAAB9600C0B19B009A8E7D00BAAB9600BAAB
      9600BAAB9600B7A79100CED9E600686E7300E7F3FF00E6F2FF00E6F2FF00F6F1
      F60009070600FFE1D100422F2A00B0746500B06E5E00D4837000EB947E00E18C
      7700B1705F007E4F430004030200A1A1A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CA5E7009CA5E7004A5273000000000000000000DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00000000009CA5E7009CA5E7009CA5E7009CA5E7000000
      00007B397B000000000000000000FF7BF700FF7BF700FF7BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000085847F00C4443A00FFF5EF00FFA78E00DC5343008C30
      3000A14E4600FFA28A00250A0800FCF8F500D5FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C0FFFF005F534E0000638A0000354800004B6500006C90001A2C
      36008484DD00D767FF00CA51FF00C749FD00933EAE00003B2100DCFEFD00C0FF
      FF00C1FFFF00C1FFFF00E4FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDCE
      C400C5624200C7664700C7664700C866470062FFFF0066FFFF0065E3EA0065BC
      CE0066FFFF0069FFFF00265D5D00000000003B4E4E00B1E4E400BAF4F400C2FF
      FF00C1FFFF00BFFEFF0024A6FD00108DFB005D3BE300FFE1E800B129D400CB78
      DE00009EFF00AE88EA00C2FFFF00C2FFFF00C0FFFF00C8FCFC006A5E6900F9A7
      CD00B1748F0025181D00A76F8800FFAAD100FFA6CC00FFA6CC00FFA6CC00E487
      8C00C2725500BA856D00C7664700C7664700C7664700C7664700C6644400F6E5
      E000000000000000000000000000EEF7FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E7F3FF00CEC6BB00A0917D00A2958300BAAB9600BAAB
      9600B9AB9600BAAB9600BAAB9600BFB09A000C0B0900C1B19B00BAAB9600BAAB
      9600BDAE9900AC9E8B00BAAB9600BAAB9600BAAB9500BAAB960081889100C9D4
      DF00E6F2FF00E6F2FF00E6F2FF00F1F0F70000020200FFCDB700F8A08A00B776
      6600A6655500B5705F00C2776400C6857600CB806D00FFA99100B6948A00D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000DEDEDE00DEDEDE00DEDEDE00000000004A5273009CA5
      E7009CA5E7009CA5E7009CA5E700000000007B397B00FF7BF700000000000000
      0000FF7BF700FF7BF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBE6E1000B00
      1F00281B24000304030017002B007489350092A64B0013061300BB5B4E00B2AF
      AA0000000000C4FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00D1FAF70095908B0018BDC0000845
      4500096E6D0001AEB0000096A90000557100348F8700D45EFF00EBBBFF00D157
      FF00822FA7001B1B1A00C2FFFF00C8FFFF00F5FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C45D3C00C7664700C7664700C7664700B583
      690065FCFD0066F1F50066FFFF0065DEE70063759A0066FFFF0067FFFF006CFF
      FF00163636000000000070909000CDFFFF00CAFFFF00C2FFFF00C9FFFF0094E9
      FF00196DF400BE9EED00A725D600B3E7F600009AFF009C3FDD00BFFFFF00C3FF
      FF00E3E6F600E99EC1007C73760031202700EC9CC000FFAFD800FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFA7CF00CC6B5200BD7F6400B19A8600C7664700C766
      4700C7664700C7664700C6634400FCF6F400000000000000000000000000F9FC
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E4F0
      F900CDC6BA008E827100BBAC9700BAAB9600B8A99400BAAB9600BAAB9600C5B5
      9F0002020100BEAF9900BAAB9600BAAB9600BBAC9700B9AA9500BAAB9600BAAB
      9600B8A89200C4BBAD002E313300F1FDFF00E6F2FF00E6F2FF00E6F2FF00EBF2
      FC0048322B00B06F5E00EDC4B900505354008285860096959500A29B9A009D80
      7800A4675800FFA89000FFCDBE00F8F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CED6F70000000000737BAD009CA5E7004A527300DEDEDE003131
      3100000000004A5273004A5273004A5273004A5273009CA5E7009CA5E700FF7B
      F7007B397B007B397B00FFBDFF00FFBDFF00BD7BBD00FF7BF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFEFB000C011200AC957E006F6E6900B7B7AC000000
      2900040719000000010043151A0075736F00FFFEFD00E8FFFF00C1FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00E3EFE900322A380039FFFF000E4F4F0030D3D30066CFCF0000F5FF004345
      580051397400CB66FF00F0B1FF00D263FF00A36FB2004F4F4700E6FFFF00FAFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1D7D000C664
      4400C7664700C7664700C7664700A39F8B0066FDFE0066E0E80066FFFF0066FF
      FF006373980065BDCE0066FFFF0066FFFF0064F6F60010282800000000005C77
      770094C0C000CDFFFF00C9FFFF00CEFFFF0081E5FF00C6FFFF00B899EF006C34
      E3005558ED00CDC2F900E9DDF100E9C2DB00B1708C0056384500794D6100F09E
      C200FFA9D000FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA9D200C666
      4500B9866D00ABA69400C7664700C7664700C7664700C7664700C6624300FDF8
      F70000000000000000000000000000000000E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E7F3FF00CDC8C200B5A69200BBAB
      96008A7F6F00BBAC9700BAAB9600C7B7A10000000000BEAF9900BAAB9600BAAB
      9600BAAB9600BAAB9600BAAB9600BAAB9600B9A99300E5E8EB004A4F5300E7F3
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00EAF2FD00F6D7D40098746D006041
      3A003F27210065392D006A3E300073564F00A49C9A00C8C8C800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CA5E7004A52
      73009CA5E7000000000000000000DEDEDE009CA5E7009CA5E7009CA5E7009CA5
      E7009CA5E7009CA5E7009CA5E700000000000000000000000000000000000000
      000000000000FF7BF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000906
      0A00B7EB4800878281000000000002072C00000A3400373934008E8F60002522
      2600EAE6E10000000000BFFFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00DCFBF8003123300020FFFF000173
      73000DFFFF0055FFFF0041FEFD00463F5300110B190063589000B877E900D249
      FF0081529D008E8C860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1826800C7664700C7664700C7664700C765470090BD
      AF0066FFFF0066FDFD0065CBD90066FFFF0066FFFF0062205B0065E5EC0066FF
      FF0067FFFF0061EEEE00112A2A000000000000000000566D6D0097C5C500B9F2
      F200C8FFFB00BEFCFB00C1FFFC00C190E000D38FD100AC84950062394A00311A
      23001B11160090607500FFABD200FFA8CF00FFA6CC00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFAAD400C4623F00B78A7200A7B1A100C7664700C766
      4700C7664700C7664700C6624200FEFAF9000000000000000000000000000000
      0000EFF7FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00D0CCC5007E746700BAAB960091857400BEAF9A00BAAB9600C4B4
      9E0000000000C0B19B00BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600BAAB
      9600C0B4A100E4EEF900969DA600E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F3FF00E6F7FF00F4FAFF00C1BCC200D7CCCE00247CBB006FA8CC00E9EC
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00DEDEDE00DEDEDE009CA5E7004A52
      73009CA5E700000000004A5273009CA5E7009CA5E7009CA5E7009CA5E7009CA5
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099949300A8CE4A007C76780000000000928D
      85000A0B1100FFFFFD0000000B0016200800605C5C0000000000F7FFFF00BEFF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C1FFFF009C9B9700131B1C0000B7B80017868300093F400000F6F9004A2E
      6B00040320000A35FD00331C850002331B0000653B00FDFBFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5E4DE00C6634300C766
      4700C7664700C7664700CA6242006AFAF90066FFFF0066FFFF0066FFFF00648B
      A90066FFFF0066FFFF0065B3C700623C6F0063799D0066FFFF0067FFFF006AFF
      FF0064F7F70042A4A400173C3C00000000000000000003000000030000002C1B
      22006C475700C5819E00FFA6CD00FFAFD800FFA9CF00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA7CF00FBA1C100C665
      4500B29782009EC6BA00C7664600C7664700C7664700C7664700C5604000FFFE
      FE0000000000000000000000000000000000FCFEFF00E5F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00D1CDC7006B625600BBAB
      9600AB9D8A00C1B19C00BAAB9600BEAF990004040300C4B49E00BAAB9600BAAB
      9600BAAB9600BAAB9600BAAB9600BAAB9600CDC6BB00C3CDD900D5E1ED00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E7F3FF00E6F2FF00E6F2FF00E7F5FF006062
      660090B3CF008FEBFF0050B0DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00000000009CA5E7009CA5E7009CA5E7009CA5E7009CA5
      E7009CA5E7009CA5E7009CA5E700FF7BF7007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDD9
      D1007A5767006C69690000000000837E6F004D4D630000000000282D22006041
      5200171B1400FFFFFE0000000000D8FFFF00BFFFFF00C1FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00DFFEFB0027000000002F
      73000A65770000838700095E6700D14FF900306E7500401E88000E37FF001722
      C200080000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7927C00C7664700C7664700C7664700C7664700CC5E3E0064FF
      FF0066FFFF0066FFFF0066FFFF0065BCCE0065C0D00066FFFF0066FFFF0066F6
      F90062396D00625D880066E9EF0067FFFF0067FFFF006CFFFF0067FEFE001F4E
      4E006E475800DD90B100DE91B200FAA3C900FFAFD700FFACD300FFA8CE00FFA6
      CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA9D200EF94A700C7664600B09D890099D0C700C8654600C766
      4700C7664700C7664700C55F3E00000000000000000000000000000000000000
      000000000000F1F8FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E0E8F000675F5200C0B09B00C1B19B0057504600BFB09B00BAAB
      96007C736400B1A38F00BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600BAAA
      9500D8DEE4002B2F3200F2FEFF00E6F2FF00E6F2FF00E7F3FF00F3FFFF006167
      6D00F4FFFF00F0FCFF007C878E00A8BAC400ECFFFF004E6A7100999797000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00DEDEDE00DEDEDE009CA5E700000000009CA5
      E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E700FF7B
      F7009CA5E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFBF8003D4D1600706C6E00F1EFEB000514
      5C0049474D0000000000BAB7B000675F450017250200FFFEFB00000000000000
      0000D7FFFF00C3FFFF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FF
      FF00C2FFFF00C5FFFF003A362E000630F7000525DD0000311000A15ED700C863
      FD00838FDF00210600006B1B63000038FF00311E110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C55F3E00C7664700C766
      4700C7664700C7664700CD5D3C0060FFFF0066FFFF0066FFFF0066FFFF0066FF
      FF006489A80065E2EA0066FFFF0066FFFF0066F8FA0063658E0062245E006492
      AE0065C0D10066FDFD0068FFFF001C46460088596D00FFAAD100FFAAD100FFA8
      CE00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFAAD400E2858700C766
      4700ACA5920094DCD500C8654500C7664700C7664700C7664700C45E3D000000
      00000000000000000000000000000000000000000000FEFEFF00E5F1FF00E6F2
      FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F3FF008F837000C3B3
      9D00BAAB96005B544A007C726400BAAB9600BEB09A00776E6000BAAB9600BAAB
      9600BAAB9600BAAB9600BAAB9600B8A89200AAB2BB0015171900ECF9FF00E7F3
      FF00E7F3FF00E9F6FF00A2ACB4001A1C1D0072787D00B1B9C0005B77820089AC
      B900868C8E0098C8DD0047444300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE006B6B6B009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5
      E7009CA5E7009CA5E7009CA5E7009CA5E700000000005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7C1BE007A75730033322F005E5C
      580014101A0056515000C5BBBA00C3B9AE00F6F2EF00FFF9F700000000003938
      350018141200CEC9C10000000000000000000000000000000000F1FFFF00C3FF
      FF00C1FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00C2FFFF00DDFFFD000400
      040095142A0024606F00EE9DFF00965FD0007458A9006AA3D4003B4B6D009914
      2C00BFBFBA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFAF800D4897200C45F3F00C7664700C7664700C7664700C66748009AAB
      9B0087CBC0007EDAD2006BF6F50064FFFF0060FFFF0062FCFF00628DAD006291
      AF0065F6F80066FFFF0066FFFF0066E9EF0065BFD00066FFFF0067FFFF000A1B
      1B009A647C00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00F79DB800C9684B00C7664700A6B2A2008BF2EE00C8644400C766
      4700C7664700C7664700C45C3B00000000000000000000000000000000000000
      00000000000000000000FDFEFF00ECF5FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FF00E6F2FF00E7F4FF00C7BCAA003D393100BDAE9900C2B29D008C8171008D82
      7200BBAB96009D907E00BDAE9900BAAB9600BAAB9600BAAB9600BAAB9600BFB0
      9A001D1F2100A8AFB9004D5053006D737900B8BBBB00AB9D8900BFAF9900BEB0
      9C00DBDAD400A7DDF6008AB0C400A4D3EA00536D7900808B9000ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00000000009CA5E7009CA5
      E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5
      E700737BAD0000000000ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFDFC00A39D
      9900121A110012321300517651005895590038483F001D321D003D633D003E58
      3C0041453E00536865007F7D7700696462000B081100625A5D00D8D1D100E5DF
      DF00F2F0EE00F7F6F40000000000F3FFFF00C3FFFF00C1FFFF00C2FFFF00C2FF
      FF00C2FFFF00C2FFFF00BFFFFF005E5E59002400000031888C009D68E0001220
      56001E1966001D595200906FE0000D000000F4F1ED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFD00D48A7200C45E
      3D00C6644400C7664700C7664700CE5C3B00C9624300C6674800BF735600A897
      820091BAAC007EDCD5006BF5F30067C6D30060A6BF0060FFFF0063FFFF0065FF
      FF0065FFFF0066FFFF0069FFFF00040C0C00A56B8400FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6
      CC00FFA6CC00FFA6CC00FFA6CC00FFA6CC00FFA6CD00EA8F9B00C5644200C766
      4700A5B6A60088F8F700C9634300C7664700C7664700C7664700C35B3A000000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FF00E5F1FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00D8DBDD004E47
      3E00C3B49E00BAAB9600C4B49E0015131100C3B39E00BEAF9900BAAB9600BAAB
      9600BAAB9600BAAB9600BAAB9600C5B6A0003C4A5300B0D5E0009FC0CD000808
      0900C7B7A100BCAD9700BBAC9700B9AA9500B7A68F00B9D1D500A8D9F000BAF0
      FF00A6D4E5004744430000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B6B
      6B0000000000000000009CA5E7009CA5E7009CA5E7009CA5E7004A5273000000
      0000000000009CA5E7009CA5E7009CA5E7009CA5E700000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFAF70024412300305430002254220098D79D006179
      1C005F6C4B003C501E0040582D00132116000926280036FFFF00080804005E9D
      660079B67D0093D496009DE1A000A1E6A2000A1A0A00B3ABA900000000000000
      000000000000F4FFFF00C3FFFF00BEFFFF00BFFFFF00D9FFFF0000000000FEFD
      FA00CEC9C40092908B00B1AAA6000C0C0500817F9700DDD9D500ECE6E100F5F2
      EE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EAE600CD755A00C45E3E00C766
      4700C7664700C7664700C7664700C7664700C7664700C8644500C9634300CA61
      4100CC5F3E00CC5F3E00C6684A00BD775B00B3866D009FA491008FCABF000000
      0000BA789500FFA8CE00FFAAD100FFADD400FFAED600FFB2DA00FFB0D800FFAF
      D600FFACD100FFA9CC00FFA6C800FDA0BB00F597AA00F093A200E88B9100E183
      8200DB7C7500CC6B5000C8664600C86646009FC4B70083FFFF00CA603F00C766
      4700C7664700C7664700C45F3E00000000000000000000000000000000000000
      000000000000000000000000000000000000F0F7FF00E5F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FF00E8F5FF00AA9B85006A625600BDAE9900BAAB9600847A
      6B00534C4300C3B39D00BAAB9600BAAB9600BAAB9600BAAB9600BAAB9600A898
      840094C1D500BBF1FF00B6ECFF00727D8700BDAE9800BAAB9600BAAB9600BAAB
      9600BAAB9600BAA89100B5E8FF00ABDCEE004E616900EEEDED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CA5E7009CA5E700737BAD009CA5E7009CA5E7009CA5E7009CA5E7000000
      0000292929005A5A5A0000000000292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFCF8000B2A
      0C00315B31001A401A0075A97B00F5FFA200E5FF9F00CDEC7B009EC04700738F
      99000342450000FBFD00446158003C520500627143004C6034004860390071AA
      7200131E1200C5BFBC0000000000000000000000000000000000F3FFFF00D8FF
      FF00E2FFFF000000000000000000000000000000000000000000000000002928
      26003B3C4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAF1EF00D8937D00C45D3C00C7654600C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664600C8644500C962
      4300CA614100CD5D3C00D6684600000000002B1E2700432D3A00503645005D3E
      4E0066445600764E63008353630080505C008851530091524B00955040009A50
      3B00A3533A00AA573B00AF583800B2593900B75C3C00BD604200BF624400C363
      44009ACAC00097D6CD00C9614200C7664700C7664700C7664700C66242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFDFF00E5F1FF00E6F2FF00E6F2FF00E6F2FF00E6F2FF00E6F2
      FC00A1927D002A2722009E917F00BDAE9800B5A792000F0E0C0094897800C0B0
      9B00BAAB9600BAAB9600B2A28E006F92A300B4E7FF00B5E9FF00B3E6FF00C4DB
      EC00B2A48F00BAAB9600BAAB9600BAAB9600BAAB9600C4B49E004B433900C9C7
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000009CA5E7009CA5E7009CA5E7009CA5E7009CA5
      E7009CA5E7009CA5E7009CA5E7005A5A5A005A5A5A005A5A5A005A5A5A000000
      0000D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCF8F30015381600305D300019371900547956009DB1
      73005F812400DCFF760076835400C6FAFD0000515C0000EEF100A8D5D5006588
      0000E5FF8800D1F96B00BFE16B007A9E7F00151A1400D6D1CD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000423F3D004442420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4B5
      A600C7644500C45D3C00C7654600C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700CD684800723A
      29006A35220066331F0065321E0063311D0062301C00602F1A0065311D006532
      1D006A3521006F382400733A2700763C2800793E2A007C3F2B0080412E008D48
      32009C503800A8563C00AA573D00B95E4200B7806800C8654500C7664700C766
      4700C7664700C7664700C7644400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F8FF00E5F1
      FF00E6F2FF00E6F2FF00E6F2FF00E7F4FF00D8D7D1004942380013110F00B2A4
      9000C1B29C0095897800151411003D383100BEAF9A00C0B09A0095897800B1E5
      F800B3E6FF00AEDFF700B1E3FC00C5DDEF00B4A58F00BAAB9600BAAB9600BBAC
      9700C2B29C005D554A00A4A4A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CA5
      E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7009CA5E7005A5A
      5A005A5A5A005A5A5A005A5A5A0000000000ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD8D4002C58
      2C00214E2100497249001D29090086AC2800779C4100DDFF79004C592600BAF6
      F1000F94920002939800C2F4F8007E982D0089A05C006093A800D0EF89006EB4
      6F0023242100E2DEDA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000423F
      4A0013596800D1CBC800FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFD4CA00D07C
      6200C45D3D00C6654500C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C86949000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFCFF00E7F2FF00E6F2FF00E6F2
      FF00E6F2FF00E6F2FD00E1E4E400786E600019161200786E6000C8B8A1003A35
      2E006860530065727D001B252A00B6E9FD005B7480007799A700B2E6FE00646D
      7500C7B6A000BFB09900AA9B87004F4A4400CBCCCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD005A5A5A00000000005A5A5A005A5A5A005A5A5A009CA5E7009CA5
      E7000000000000000000000000005A5A5A005A5A5A005A5A5A005A5A5A000000
      0000ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3BBB80030593000234F23007AB279001F2A1400485B
      15006F7E4200A8BB6900768B3C0075B1A20000BBBA0000526B0071999D00C7EF
      6400B5CE7F004A725200BEDF6E0095DB97002A2A2700E9E4E000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C4BEB800007493000B3D4900D8CCC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDF8F700E0AA9800C7664700C55F3F00C664
      4400C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C664
      4500C6644400C6644400C6644400C6644400C6644400C6644400C6644400C664
      4400C6644400C6644400C8684900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFCFF00E8F3FF00E5F1FF00E6F2FF00E6F3FF00E8F6FF00E3E8
      E9009E9589002F2A2300B3A38E0094887600221F1B0092A5B6007EA1C100B9EE
      FF00A3D1EC00BAF0FF00B1E5FE003B3D4100AFA08B006B645A006E6C6800DEDE
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00101010005A5A5A005A5A5A002929
      2900000000002929290010101000000000002929290029292900000000005A5A
      5A005A5A5A005A5A5A005A5A5A0000000000ADADAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9593002D52
      2C00152D1400547D530072A16E00618964004B664D002B4324001E2E14001725
      1F0015DEE800004C550006090700B4D25F00C7E58100B5D4580092B4380094DD
      950034313000EDE9E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A39C9800707D7E00E7E2DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2DCD500D48B7400C96D4F00C45D3C00C6644500C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7654600C6644400C35C3C00C96B4D00C96C4E00C96C4E00C96C4E00C96C
      4E00C96C4E00C96C4E00C96C4E00C96C4E00C96C4E00C96C4E00CB7255000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFDFF00ECF5
      FF00E4F1FF00E6F2FF00E6F2FF00E8F5FF00EBF5FF00D2D1CE00AFA69A00C2B5
      A100B6A791004857640097BFE800A8D7F40093BAE00097C0E400BDF3FF00443D
      35009B948A00D6D7D800FDFDFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5A00000000005A5A5A005A5A5A00292929005A5A5A00000000005A5A5A000000
      00005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000696560000E2C2200144C39001C594500167E5C002783
      65002E80660027705900277258000C160B00008C9500000A0A003F774C002C67
      3900306A3A00326838004E7F4F007DBA7900403B3B00F8F5F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5E4DF00D9968100C7654500C45D3C00C5614100C7654600C766
      4700C7664700C7664700C7664700C7664700C7664700C7664700C7664700C766
      4700C7654600C5604000C6634300D1816700EAC7BB00F8EBE600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFDFF00F6FAFF00EAF4
      FF00E6F2FF00E4F1FF00E5F2FF00E5F3FF00E8F6FF006D8093003745540099C3
      EB0092B9DF0096BEE70043515800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5A5A0000000000292929005A5A5A004242
      42005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A000000
      00005A5A5A005A5A5A000000000042424200D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDEAE700C8C3
      C000969893007D827C004B59510021503E00396153003065530019513E000045
      57000090A000004F32002F9C7A00279472001D8E6A00228764002A7F6100002C
      19007F7B7600FBF8F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0D7
      CE00E5B8AA00D1806600C5624200C5604000C7654500C7664700C7664700C766
      4700C7664700C7664700C6644400C5604000C6634300D4897100EDCEC400FEFB
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFFFF00F7FBFF00F2F9FF00EFF7FF00EFF7
      FF00EFF7FF00F1F9FF005C768F0050667C0096BFE7007293B3007B7977000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD002929290000000000000000005A5A5A005A5A5A005A5A5A005A5A5A000000
      00000000000000000000000000005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCF8F600EBE1
      E000C7BFBC00A1A29D008A8E88005D75790041413F004178630025654E004968
      5D0033635300255E4B00224839009CA49D00F7F4F100FDFCFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFBFA00EBC8BD00D387
      6F00C7654600C45E3D00C5624200C7654600C6634300C45D3C00CA6E5000D387
      6F00EDCDC300FEFEFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007399BF000304
      050034425000282A2C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A005A5A5A00000000000000
      0000000000005A5A5A005A5A5A00000000005A5A5A005A5A5A005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFAF900EED0
      C700FCF7F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFCFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000DC000000A500000001000100
      000000000C1200000000000000000000000000000000000000000000FFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000
      FFFF7FFFFE01FFFFFFFFFFFFFFFC0000000000000000000000000000FFFE3FFF
      FF11FFFFFFFFFFFFFFFC0000000000000000000000000000FFFE3FFDDF01FFFF
      FFFFFFFFFFFC0000000000000000000000000000FFFC1FFC0701FFFFFFFFFFFF
      FFFC0000000000000000000000000000F00800000701FFFFFFFFFFFFFFFC0000
      000000000000000000000000F000000000001FFFFFFFFFFFFFFC000000000000
      0000000000000000F000000000001FFFFFFFFFFFFFFC00000000000000000000
      00000000F000000000001FFFFFFFFFFFFFFC0000000000000000000000000000
      F000000000001FFFFFFFFFFFFFFC0000000000000000000000000000F0000000
      00001FFFFFFFFFFFFFFC0000000000000000000000000000F000000000001FFF
      FFFFFFFFFFFC0000000000000000000000000000F000000000001FFFE0000000
      7FFC0000000000000000000000000000F000000000001FFFC00000003FFC0000
      000000000000000000000000F000000000001FFFC00000003FFC000000000000
      0000000000000000F000000000001FFFC00000003FFC00000000000000000000
      00000000F000000000001FFFC00000003FFC0000000000000000000000000000
      F008000000001FFFC00000003FFC0000000000000000000000000000E0000000
      00001FFFC00000003FFC00000000000000000000000000000000000000001FFF
      C00000003FFC00000000000000000000000000000000000000001FFFFFFC0000
      FFFC00000000000000000000000000000000000000001FFFFFFC0000FFFC0000
      0000000000000000000000000000000000001FFFFFF40000FFFC000000000000
      00000000000000000000000000001FFFFFE00000FFFC00000000000000000000
      000000009000000000001FFFFFE00000FFFC0000000000000000000000000000
      F000000000001FFFFFE00000FFFC0000000000000000000000000000F0000000
      00001FFFFFE00000FFFC0000000000000000000000000000F000000000001FFF
      FC000000FFFC0000000000000000000000000000F000000000001EFFF8000000
      FFFC0000000000000000000000000000F000000000001EFFF0000000FFFC0000
      000000000000000000000000F000000100001EFFE0000000FFFC000000000000
      0000000000000000F000000100001FFFE0000000FFFC00000000000000000000
      00000000F0000001C0001FFFE0000000FFFC0000000000000000000000000000
      F000000000001FFFE0000000FFFC0000000000000000000000000000F0000000
      00000FFFF0000000FFFC0000000000000000000000000000F0000000000007FF
      FFE00000FFFC0000000000000000000000000000F0000000000003FFFFE00000
      FFFC0000000000000000000000000000F0000001900003FFFFE00000FFFC0000
      000000000000000000000000F0000000000003FFFFE00000FFFC000000000000
      0000000000000000F0000000000007FFFFE40000FFFC00000000000000000000
      00000000F0000000000007FFFFFC0000FFFC0000000000000000000000000000
      F000000000000FFFFFFC0000FFFC0000000000000000000000000000F0000000
      00001FFFFFFC0001FFFC0000000000000000000000000000F0000001E0001FFF
      FFFC0003FFFC0000000000000000000000000000F000000000001FFFFFFFFFFF
      FFFC0000000000000000000000000000F000000000001FFFFFFFFFFFFFFC0000
      000000000000000000000000F000000000001FFFFFFFFFFFFFFC000000000000
      0000000000000000F000000000001FFFFFFFFFFFFFFC00000000000000000000
      00000000FFFC0000003FFFFFFFFFFFFFFFFC0000000000000000000000000000
      FFFF0000003FFFFFFFFFFFFFFFFC0000000000000000000000000000FFFF8000
      003FFFFFFFFFFFFFFFFC0000000000000000000000000000FFFFF800003FFFFF
      FFFFFFFFFFFC0000000000000000000000000000FFFFFE0000FFFFFFFFFFFFFF
      FFFC0000000000000000000000000000FFFFFF801FFFFFFFFFFFFFFFFFFC0000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000
      0000000000000000C0000000000003FFFFDFFFFFFFFFFC1FFFFFFFFFFFFFFF87
      FFFFFFF0C0000000000003FFFC01FFFFFFFFFC0001FFFFFFFFFFE0000FFFFFF0
      C0000000000003FFF800FFFFFFFFFC000007FFFFFFFFC00003FFFFF0C0000000
      000003FFE0003FFFFFFFF80000001FFFFFFF000000FFFFF0C0000000000003FF
      000007FFFFFFF80000000000FFFC0000001FFFF0C0000000000003FC00000001
      FFFFF8000000000007F80000000FFFF0C0000000000003F000000001FFFFF800
      000000000FF800000003FFF0C00000000000038000000007FFFFF00000000000
      7FE0000000003FF0800000000000030000000001FFFFE00000000001FFE00000
      00000FE0C00000000000030000000300FFFFE00000000000FFC0000000000000
      C000000000000300000000000FFFE000000000007F80000000000010C0000000
      000003800000000007FFE000000000007F8000000000001000000000000003C0
      0000000007FFC000000000003F00000000000010C0000000000003C000000000
      03FFC000000000003F00000000000010C0000000000003E00000000003FFC000
      000000003E00000000000030C0000000000003E00000000003FF800000000000
      1E00000000000030FFDFE00001FFC3F00000000001FF8000000000001E000000
      00000030FFE3C000000FFBF00000000001FF8000000000001C00000000000070
      FF81C0000003FFF80000000000FF8000000000000C00000000000070FF00C000
      0003FFFC0000800000FF0000000000000C00000000000070FE0100000003FFFC
      0000000000FF0000000000000C000000000000F0FE0000000003FFFE00008000
      007F0000000004000C000000000000F0FE0000000003FFF800000000003F0000
      000004000C000000000001F0FE0000000003FFF800000000003E000000000000
      0C000000000003F0FF0000000003FFF800000000003E0000000002000C000000
      000003F0FF0000000003FFF800000000001E0000000000000C000000000007F0
      FF8000000003FFF800000000001E0000000000000C000000000007F0FF800000
      0003FFF000000000000E0000000000000C000000000007F0FF8000000003FFF0
      00000000000C0000000000000C00000000000FF0FF8000000003FFF000000000
      000C0000000000000C00000000000FF0FFC000000003FFF00000000000040000
      000000000C00000000000FF0FFE000000003FFF0000000000007800000000000
      0C00000000000FF0FFE00000000FFFF8000000000007F800800000000C000000
      00000FF0FFF00000003FFFF800000000000FF800000000000C00000000000FF0
      FFF800003FFFFFFC00000000003FF000000000000E00000000000FF0FFF80000
      3FFFFFFC0000000000FFF000000000000E00000000000FF0FFF800003FFFFFFC
      0000000001FFE000000000000E00000000000FF0FFF800003FFFFFFC00800000
      07FFE000000000000E00000000000FF0FFF800003FFFFFFC000000000FFFC000
      000000000F00000000003FF0FFFC001FBFFFFFFE204000003FFFC00000000000
      0F0000000000FFF0FFFE000FFFFFFFFE204000003FFF8000000000000F000000
      0001FFF0FFFC0007FFFFFFFE242000007FFF8000000000001F8000000001FFF0
      FFFC0007FFFFFFFE043000007FFF8000000000001F8000000001FFF0FFFE0003
      FFFFFFF0023C00007FFF0000000000001FC000000001FFF0FFFE0001FFFFFFC0
      000200007FFF8000000000001FE000000003FFF0FFFE0001FFFFFFC000038200
      7FFFF000000000001FF000000003FFF0FFFF8000FFFFFFC00003C7E7FFFFF800
      000000001FF80000000FFFF0FFFF00007FFFFFC00003FFE7FFFFFE0000000000
      1FFC0000001FFFF0FFFFC0007FFFFFC00003FFE1FFFFFFC0000000001FFF0000
      007FFFF0FFFF00007FFFFFC00003FFE1FFFFFFE0000000001FFF800000FFFFF0
      FFFE00007FFFFFC00003FFF1FFFFFFF8000000001FFFC00001FFFFF0FFFE0000
      FFFFFFC00003FFFFFFFFFFFF800003FFFFFFF8001FFFFFF0FFFE00007FFFFFC0
      0003FFFFFFFFFFFFE0000FFFFFFFFE001FFFFFF0FFFE0000FFFFFFFC0003FFFF
      FFFFFFFFF8003FFFFFFFFFFC3FFFFFF0FFFF011FFFFFFFFFFFFFFFFFFFFFFFFF
      FFC7FFFFFFFFFFFBFFFFFFF00000000000000000000000000000000000000000
      0000}
  end
  object Timer1: TTimer
    Interval = 20000
    OnTimer = Timer1Timer
    Left = 604
    Top = 185
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 600
    Top = 184
  end
end
