object frmOSMaterial: TfrmOSMaterial
  Left = 189
  Top = 199
  ActiveControl = wwdbcbdlgProd
  Caption = 'Material/Servi'#231'o de Terceiros'
  ClientHeight = 237
  ClientWidth = 716
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = 218
    Width = 716
    Height = 19
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object StatusBar: TStatusBar
      Left = 0
      Top = 0
      Width = 716
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
    Top = 186
    Width = 716
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 716
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
          Width = 471
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 87
        end>
      TtmbCria = True
      TtmbClientDataSet = dmOS.cdsOSMaterial
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 716
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 716
      end>
    EdgeBorders = []
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 703
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 703
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
    Width = 716
    Height = 157
    Align = alClient
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
      Left = 197
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Produto ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 6
      Top = 97
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = dbedtQTD
    end
    object Label8: TLabel
      Left = 76
      Top = 97
      Width = 82
      Height = 13
      Caption = 'Vlr Pre'#231'o Unit'#225'rio'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 197
      Top = 97
      Width = 73
      Height = 13
      Caption = 'Vlr. Pre'#231'o Total'
      FocusControl = DBEdit11
    end
    object Label27: TLabel
      Left = 6
      Top = 18
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
    object Label28: TLabel
      Left = 76
      Top = 19
      Width = 36
      Height = 13
      Caption = 'O.S. ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 156
      Top = 17
      Width = 36
      Height = 13
      Caption = 'Item ID'
      FocusControl = DBEdit4
    end
    object Label1: TLabel
      Left = 197
      Top = 56
      Width = 203
      Height = 13
      Caption = 'Descri'#231#227'o do Servi'#231'o/Produto de Terceiros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 57
      Width = 38
      Height = 13
      Caption = 'Al'#237'q. IPI'
      FocusControl = DBEdit2
    end
    object wwdbcbdlgProd: TwwDBComboDlg
      Left = 197
      Top = 32
      Width = 67
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
      OnCustomDlg = wwdbcbdlgProdCustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'PRODUTOID'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 2
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit9: TDBEdit
      Left = 264
      Top = 32
      Width = 449
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOPRODUTO'
      DataSource = dmOS.dsOSMaterial
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtQTD: TDBEdit
      Left = 6
      Top = 113
      Width = 65
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 76
      Top = 113
      Width = 113
      Height = 21
      DataField = 'VLRPRECOUNITARIO'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 197
      Top = 113
      Width = 113
      Height = 21
      DataField = 'VLRPRECOTOTAL'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 6
    end
    object DBEdit27: TDBEdit
      Left = 6
      Top = 32
      Width = 67
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      Color = clScrollBar
      DataField = 'EMPRESAID'
      DataSource = dmOS.dsOSMaterial
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbedtPDSID: TDBEdit
      Left = 76
      Top = 32
      Width = 80
      Height = 21
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'OSID'
      DataSource = dmOS.dsOSMaterial
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 156
      Top = 32
      Width = 37
      Height = 21
      DataField = 'ITEMID'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 197
      Top = 72
      Width = 513
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAOMATSERV'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 6
      Top = 73
      Width = 65
      Height = 21
      DataField = 'ALIQUOTAIPI'
      DataSource = dmOS.dsOSMaterial
      TabOrder = 9
    end
  end
end
