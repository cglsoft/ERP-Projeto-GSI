object frmOSDefeito: TfrmOSDefeito
  Left = 222
  Top = 123
  Width = 700
  Height = 481
  Caption = 'Servi'#231'os'
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
  object tmbEdicaoTop1: TtmbEdicaoTop
    Tag = 255
    Left = 0
    Top = 0
    Width = 692
    Height = 30
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 688
      end>
    FixedSize = True
    TtmbCria = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 692
    Height = 120
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 206
      Top = 2
      Width = 32
      Height = 13
      Caption = 'Item Id'
    end
    object Label15: TLabel
      Left = 102
      Top = 4
      Width = 52
      Height = 13
      Hint = 
        'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
        'momento em que se inserir um novo registro'
      Caption = 'OS N'#250'mer:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 6
      Width = 46
      Height = 13
      Caption = 'Defeito Id'
    end
    object Label6: TLabel
      Left = 563
      Top = 4
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object DBEdit1: TDBEdit
      Left = 101
      Top = 21
      Width = 95
      Height = 21
      Color = clInactiveBorder
      DataField = 'OSID'
      DataSource = dmOS.dsOsDefeito
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 204
      Top = 20
      Width = 86
      Height = 21
      Color = clInactiveBorder
      DataField = 'ITEMID'
      DataSource = dmOS.dsOsDefeito
      ReadOnly = True
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 49
      Width = 665
      Height = 63
      Color = clInactiveBorder
      DataField = 'L_DESCRICAODEFEITO'
      DataSource = dmOS.dsOsDefeito
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 563
      Top = 21
      Width = 110
      Height = 21
      Color = clInactiveBorder
      DataField = 'USUARIO'
      DataSource = dmOS.dsOsDefeito
      ReadOnly = True
      TabOrder = 4
    end
    object wwDBComboDlg2: TwwDBComboDlg
      Left = 8
      Top = 21
      Width = 86
      Height = 21
      OnCustomDlg = wwDBComboDlg2CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'DEFEITOID'
      DataSource = dmOS.dsOsDefeito
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 150
    Width = 688
    Height = 238
    Caption = ' Dados do Servi'#231'o '
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 19
      Width = 78
      Height = 13
      Caption = 'Local do Defeito'
    end
    object Label5: TLabel
      Left = 8
      Top = 128
      Width = 90
      Height = 13
      Caption = 'Servi'#231'o Executado'
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 36
      Width = 667
      Height = 85
      DataField = 'LOCALDEFEITO'
      DataSource = dmOS.dsOsDefeito
      TabOrder = 0
    end
    object DBMemo3: TDBMemo
      Left = 8
      Top = 144
      Width = 666
      Height = 83
      DataField = 'SERVICOEXECUTADO'
      DataSource = dmOS.dsOsDefeito
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 426
    Width = 692
    Height = 21
    Panels = <>
  end
  object Panel2: TPanel
    Left = 0
    Top = 389
    Width = 692
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 5
      Width = 692
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
          Width = 491
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 43
        end>
      TtmbCria = True
      TtmbClientDataSet = dmOS.cdsOsDefeito
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
end
