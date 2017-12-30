object frmPedVendVendedor: TfrmPedVendVendedor
  Left = 193
  Top = 116
  Width = 648
  Height = 231
  ActiveControl = wwdbcbdlgProd
  Caption = 'Pedido de Venda (Vendedores)'
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
  ShowHint = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = 178
    Width = 640
    Height = 19
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object StatusBar: TStatusBar
      Left = 0
      Top = 0
      Width = 640
      Height = 19
      Panels = <
        item
          Width = 250
        end
        item
          Width = 150
        end
        item
          Width = 50
        end>
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 146
    Width = 640
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 640
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
          Width = 417
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 65
        end>
      TtmbCria = True
      TtmbClientDataSet = dmPP.cdsPedVendItem
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 640
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 640
      end>
    EdgeBorders = []
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 627
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 627
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 29
    Width = 640
    Height = 116
    Align = alTop
    Caption = 'Dados do Produto'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Label5: TLabel
      Left = 96
      Top = 16
      Width = 60
      Height = 13
      Caption = 'Vendedor ID'
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
      Left = 4
      Top = 64
      Width = 94
      Height = 13
      Caption = 'Classe Vendedor ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object wwdbcbdlgProd: TwwDBComboDlg
      Left = 94
      Top = 31
      Width = 77
      Height = 20
      Hint = 'C'#243'digo do vendedor'
      OnCustomDlg = wwdbcbdlgProdCustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'VENDEDORID'
      DataSource = dmPP.dsPedVendVend
      TabOrder = 1
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit9: TDBEdit
      Left = 176
      Top = 31
      Width = 457
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_NOMEVENDEDOR'
      DataSource = dmPP.dsPedVendVend
      ReadOnly = True
      TabOrder = 2
    end
    object dbedtPDSID: TDBEdit
      Left = 4
      Top = 32
      Width = 80
      Height = 21
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'PEDVENDID'
      DataSource = dmPP.dsPedVendVend
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 4
      Top = 79
      Width = 77
      Height = 20
      Hint = 'C'#243'digo do vendedor'
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'CLASSEVENDEDORID'
      DataSource = dmPP.dsPedVendVend
      TabOrder = 3
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 79
      Width = 537
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_DESCR_CLASSEVENDEDOR'
      DataSource = dmPP.dsPedVendVend
      ReadOnly = True
      TabOrder = 4
    end
  end
end
