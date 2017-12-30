object frmClasseNivel: TfrmClasseNivel
  Left = 158
  Top = 146
  Caption = 'Classe N'#237'vel'
  ClientHeight = 357
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAdiantamento: TPanel
    Left = 0
    Top = 29
    Width = 742
    Height = 52
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object lblAdiantamentoId: TLabel
      Left = 10
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Classe N'#237'vel ID'
    end
    object lblSolicitante: TLabel
      Left = 588
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label1: TLabel
      Left = 96
      Top = 7
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 22
      Width = 79
      Height = 21
      Hint = 'N'#186' do adiantamento'
      Color = clScrollBar
      DataField = 'CLASSENIVELID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 588
      Top = 22
      Width = 112
      Height = 21
      Color = clInactiveBorder
      DataField = 'USUARIO'
      DataSource = dmPP.dsClasseNivel
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 94
      Top = 23
      Width = 491
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object gbDadosAdiantamento: TGroupBox
    Left = 0
    Top = 81
    Width = 742
    Height = 225
    Align = alClient
    Caption = 'Dados das Classes'
    TabOrder = 1
    object lblFuncionarioId: TLabel
      Left = 7
      Top = 25
      Width = 103
      Height = 13
      Caption = 'Classe Vendedor 1 ID'
    end
    object Label2: TLabel
      Left = 7
      Top = 57
      Width = 103
      Height = 13
      Caption = 'Classe Vendedor 2 ID'
    end
    object Label3: TLabel
      Left = 7
      Top = 86
      Width = 103
      Height = 13
      Caption = 'Classe Vendedor 3 ID'
    end
    object Label4: TLabel
      Left = 7
      Top = 118
      Width = 103
      Height = 13
      Caption = 'Classe Vendedor 4 ID'
    end
    object Label5: TLabel
      Left = 7
      Top = 151
      Width = 103
      Height = 13
      Caption = 'Classe Vendedor 5 ID'
    end
    object Label6: TLabel
      Left = 7
      Top = 183
      Width = 103
      Height = 13
      Caption = 'Classe Vendedor 6 ID'
    end
    object Label7: TLabel
      Left = 671
      Top = 9
      Width = 62
      Height = 13
      Caption = '(%) Comiss'#227'o'
    end
    object dbcmbdlgClasse1: TwwDBComboDlg
      Left = 118
      Top = 23
      Width = 59
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = dbcmbdlgClasse1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLASSEVENDEDOR1ID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit3: TDBEdit
      Left = 183
      Top = 23
      Width = 306
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCRICAOCLASSEVENDEDOR1'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 496
      Top = 16
      Width = 161
      Height = 33
      Caption = 'N'#237'vel Venda'
      Columns = 2
      DataField = 'NIVELVENDA1'
      DataSource = dmPP.dsClasseNivel
      Items.Strings = (
        'Principal'
        'Secund'#225'rio')
      ParentBackground = True
      TabOrder = 2
    end
    object dbcmbdlgClasse: TwwDBComboDlg
      Left = 118
      Top = 55
      Width = 59
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = dbcmbdlgClasseCustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLASSEVENDEDOR2ID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit5: TDBEdit
      Left = 183
      Top = 55
      Width = 306
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCRICAOCLASSEVENDEDOR2'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 496
      Top = 48
      Width = 161
      Height = 33
      Caption = 'N'#237'vel Venda'
      Columns = 2
      DataField = 'NIVELVENDA2'
      DataSource = dmPP.dsClasseNivel
      Items.Strings = (
        'Principal'
        'Secund'#225'rio')
      ParentBackground = True
      TabOrder = 5
    end
    object dbcmbdlgClasse3: TwwDBComboDlg
      Left = 118
      Top = 84
      Width = 59
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = dbcmbdlgClasse3CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLASSEVENDEDOR3ID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit6: TDBEdit
      Left = 183
      Top = 84
      Width = 306
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCRICAOCLASSEVENDEDOR3'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 496
      Top = 80
      Width = 161
      Height = 33
      Caption = 'N'#237'vel Venda'
      Columns = 2
      DataField = 'NIVELVENDA3'
      DataSource = dmPP.dsClasseNivel
      Items.Strings = (
        'Principal'
        'Secund'#225'rio')
      ParentBackground = True
      TabOrder = 8
    end
    object dbcmbdlgClasse4: TwwDBComboDlg
      Left = 118
      Top = 116
      Width = 59
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = dbcmbdlgClasse4CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLASSEVENDEDOR4ID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit7: TDBEdit
      Left = 183
      Top = 116
      Width = 306
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCRICAOCLASSEVENDEDOR4'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 10
    end
    object DBRadioGroup4: TDBRadioGroup
      Left = 496
      Top = 112
      Width = 161
      Height = 33
      Caption = 'N'#237'vel Venda'
      Columns = 2
      DataField = 'NIVELVENDA4'
      DataSource = dmPP.dsClasseNivel
      Items.Strings = (
        'Principal'
        'Secund'#225'rio')
      ParentBackground = True
      TabOrder = 11
    end
    object dbcmbdlgClasse5: TwwDBComboDlg
      Left = 118
      Top = 149
      Width = 59
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = dbcmbdlgClasse5CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLASSEVENDEDOR5ID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit8: TDBEdit
      Left = 183
      Top = 149
      Width = 306
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCRICAOCLASSEVENDEDOR5'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 13
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 496
      Top = 144
      Width = 161
      Height = 33
      Caption = 'N'#237'vel Venda'
      Columns = 2
      DataField = 'NIVELVENDA5'
      DataSource = dmPP.dsClasseNivel
      Items.Strings = (
        'Principal'
        'Secund'#225'rio')
      ParentBackground = True
      TabOrder = 14
    end
    object dbcmbdlgClasse6: TwwDBComboDlg
      Left = 118
      Top = 181
      Width = 59
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = dbcmbdlgClasse6CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLASSEVENDEDOR6ID'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit9: TDBEdit
      Left = 183
      Top = 181
      Width = 306
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCRICAOCLASSEVENDEDOR6'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 16
    end
    object DBRadioGroup6: TDBRadioGroup
      Left = 496
      Top = 176
      Width = 161
      Height = 33
      Caption = 'N'#237'vel Venda'
      Columns = 2
      DataField = 'NIVELVENDA6'
      DataSource = dmPP.dsClasseNivel
      Items.Strings = (
        'Principal'
        'Secund'#225'rio')
      ParentBackground = True
      TabOrder = 17
    end
    object DBEdit10: TDBEdit
      Left = 672
      Top = 23
      Width = 49
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'PERCENTUAL1'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object DBEdit11: TDBEdit
      Left = 672
      Top = 55
      Width = 49
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'PERCENTUAL2'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object DBEdit12: TDBEdit
      Left = 672
      Top = 87
      Width = 49
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'PERCENTUAL3'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
    end
    object DBEdit13: TDBEdit
      Left = 672
      Top = 119
      Width = 49
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'PERCENTUAL4'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object DBEdit14: TDBEdit
      Left = 672
      Top = 151
      Width = 49
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'PERCENTUAL5'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    object DBEdit15: TDBEdit
      Left = 672
      Top = 183
      Width = 49
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'PERCENTUAL6'
      DataSource = dmPP.dsClasseNivel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 742
    Height = 29
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = tmbEdicaoTop1
        ImageIndex = -1
        MinHeight = 29
        Width = 742
      end>
    EdgeBorders = []
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 152
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 152
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object tmbEdicaoTop1: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 729
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 729
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object ActionToolBar2: TActionToolBar
      Left = 9
      Top = 0
      Width = 691
      Height = 26
      Caption = 'ActionToolBar2'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 338
    Width = 742
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 306
    Width = 742
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 4
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 742
      Height = 32
      Align = alBottom
      AutoSize = True
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          MinWidth = 137
          Width = 150
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 519
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 65
        end>
      TtmbCria = True
      TtmbClientDataSet = dmPP.cdsClasseNivel
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
end
