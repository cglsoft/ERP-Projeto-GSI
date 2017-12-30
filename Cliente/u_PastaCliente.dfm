object frmPastaCliente: TfrmPastaCliente
  Left = 205
  Top = 146
  Caption = 'Pasta do Cliente'
  ClientHeight = 165
  ClientWidth = 595
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 142
    Width = 595
    Height = 23
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
    ExplicitTop = 152
  end
  object Panel3: TPanel
    Left = 0
    Top = 110
    Width = 595
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 120
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 595
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
          Width = 361
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 76
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsEntidade
      TtmbFormulario = Owner
      TtmbCloseComando = True
      ExplicitTop = -6
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 595
    Height = 29
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = tmbEdicaoTop1
        ImageIndex = -1
        MinHeight = 29
        Width = 165
      end
      item
        Break = False
        Control = ActionToolBar2
        ImageIndex = -1
        MinHeight = 26
        Width = 428
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
    object ActionToolBar2: TActionToolBar
      Left = 176
      Top = 1
      Width = 415
      Height = 26
      Caption = 'ActionToolBar2'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 595
    Height = 81
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 3
    ExplicitHeight = 91
    object Label14: TLabel
      Left = 9
      Top = 2
      Width = 54
      Height = 13
      Caption = 'Entidade Id'
    end
    object Label16: TLabel
      Left = 84
      Top = 2
      Width = 53
      Height = 13
      Caption = 'CPF_CNPJ'
    end
    object Label1: TLabel
      Left = 214
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      FocusControl = DBEdit4
    end
    object Label3: TLabel
      Left = 8
      Top = 38
      Width = 42
      Height = 13
      Caption = 'N'#186' Pasta'
      FocusControl = DBEdit10
    end
    object Label5: TLabel
      Left = 214
      Top = 38
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 15
      Width = 74
      Height = 21
      Color = clScrollBar
      DataField = 'ENTIDADEID'
      DataSource = dmEF.dsEntidade
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 83
      Top = 15
      Width = 128
      Height = 21
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'CPFCNPJ'
      DataSource = dmEF.dsEntidade
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 214
      Top = 16
      Width = 254
      Height = 21
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'NOMEFANTASIA'
      DataSource = dmEF.dsEntidade
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 8
      Top = 51
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PASTA'
      DataSource = dmEF.dsEntidade
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 214
      Top = 51
      Width = 371
      Height = 21
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'NOME'
      DataSource = dmEF.dsEntidade
      ReadOnly = True
      TabOrder = 4
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 498
      Top = 3
      Width = 87
      Height = 44
      Caption = 'Tipo de Pessoa'
      Color = clScrollBar
      DataField = 'FISICAJURIDICA'
      DataSource = dmEF.dsEntidade
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      ParentBackground = True
      ParentColor = False
      ReadOnly = True
      TabOrder = 5
      Values.Strings = (
        'F'
        'J')
    end
  end
end
