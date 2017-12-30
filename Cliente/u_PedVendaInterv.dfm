object frmPedVendaInterv: TfrmPedVendaInterv
  Left = 192
  Top = 157
  Width = 673
  Height = 232
  Caption = 'Pedido de Venda ( Interveni'#234'ncia )'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object tmbEdicaoTop2: TtmbEdicaoTop
    Tag = 255
    Left = 0
    Top = 0
    Width = 665
    Height = 29
    BandBorderStyle = bsNone
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 665
      end>
    EdgeInner = esNone
    EdgeOuter = esNone
    FixedSize = True
    FixedOrder = True
    TtmbCria = True
    TtmbFormulario = Owner
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 29
    Width = 665
    Height = 116
    Align = alTop
    Caption = ' Dados da Interveni'#234'ncia '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 93
      Top = 16
      Width = 83
      Height = 13
      Caption = 'Interveni'#234'ncia ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 4
      Top = 19
      Width = 69
      Height = 13
      Caption = 'Ped. Venda ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 57
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 423
      Top = 56
      Width = 111
      Height = 13
      Caption = 'Valor da Interveni'#234'ncia'
    end
    object Label3: TLabel
      Left = 558
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object wwdbcbdlgProd: TwwDBComboDlg
      Left = 86
      Top = 31
      Width = 79
      Height = 22
      Hint = 'C'#243'digo do vendedor'
      OnCustomDlg = wwdbcbdlgProdCustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'CONDINTERVID'
      DataSource = dmPP.dsPedVendInterv
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit9: TDBEdit
      Left = 168
      Top = 31
      Width = 337
      Height = 22
      Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOPAGTO'
      DataSource = dmPP.dsPedVendInterv
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtPDSID: TDBEdit
      Left = 4
      Top = 32
      Width = 80
      Height = 21
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'PEDVENDID'
      DataSource = dmPP.dsPedVendInterv
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object wwCheckBox1: TwwCheckBox
      Left = 512
      Top = 31
      Width = 137
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Caption = 'Deduzir Comiss'#227'o'
      Color = clBtnFace
      DataField = 'L_DEDUZIRCOMISSAO'
      DataSource = dmPP.dsPedVendInterv
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      ReadOnly = True
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 72
      Width = 411
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = dmPP.dsPedVendInterv
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 420
      Top = 72
      Width = 133
      Height = 21
      DataField = 'VLRINTERVENIENCIA'
      DataSource = dmPP.dsPedVendInterv
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 556
      Top = 72
      Width = 101
      Height = 21
      Color = clInactiveBorder
      ReadOnly = True
      TabOrder = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 179
    Width = 665
    Height = 19
    Panels = <>
  end
  object tmbEdicaoBottom2: TtmbEdicaoBottom
    Left = 0
    Top = 147
    Width = 665
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
        Width = 441
      end
      item
        Break = False
        ImageIndex = -1
        MinHeight = 26
        Width = 66
      end>
    TtmbCria = True
    TtmbClientDataSet = dmPP.cdsPedVendInterv
    TtmbFormulario = Owner
    TtmbCloseComando = True
  end
end
