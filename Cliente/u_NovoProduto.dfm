object frmNovoProduto: TfrmNovoProduto
  Left = 249
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Valores do Produto'
  ClientHeight = 374
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 49
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 51
      Height = 13
      Caption = 'Produto ID'
    end
    object Label4: TLabel
      Left = 106
      Top = 6
      Width = 116
      Height = 13
      Caption = 'Descri'#231#227'o em Portugu'#234's'
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 22
      Width = 279
      Height = 21
      Color = clInactiveBorder
      DataField = 'DESCRICAOPORTUGUES'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 9
      Top = 20
      Width = 63
      Height = 21
      Color = clInactiveBorder
      DataField = 'PRODUTOID'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 49
    Width = 495
    Height = 284
    Align = alClient
    Caption = ' Dados a serem alterados '
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 98
      Width = 61
      Height = 13
      Caption = 'Peso Liquido'
    end
    object Label3: TLabel
      Left = 106
      Top = 98
      Width = 100
      Height = 13
      Caption = 'Codigo NCM Produto'
    end
    object Label5: TLabel
      Left = 106
      Top = 138
      Width = 122
      Height = 13
      Caption = 'Codigo NCM do Processo'
    end
    object Label6: TLabel
      Left = 8
      Top = 60
      Width = 51
      Height = 13
      Caption = 'Sub Grupo'
    end
    object Label7: TLabel
      Left = 106
      Top = 22
      Width = 116
      Height = 13
      Caption = 'Descri'#231#227'o em Portugu'#234's'
    end
    object Label8: TLabel
      Left = 8
      Top = 22
      Width = 51
      Height = 13
      Caption = 'Produto ID'
    end
    object Label23: TLabel
      Left = 106
      Top = 181
      Width = 45
      Height = 13
      Caption = 'Cubagem'
      FocusControl = DBEdit34
      WordWrap = True
    end
    object Label9: TLabel
      Left = 203
      Top = 181
      Width = 49
      Height = 13
      Caption = 'Modelo ID'
      FocusControl = DBEdit6
      WordWrap = True
    end
    object Label10: TLabel
      Left = 203
      Top = 229
      Width = 47
      Height = 13
      Caption = 'Aplica'#231#227'o'
      FocusControl = DBEdit7
      WordWrap = True
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 114
      Width = 85
      Height = 21
      DataField = 'PESO'
      DataSource = dmEF.dsProduto
      TabOrder = 0
    end
    object edtNcm: TDBEdit
      Left = 106
      Top = 114
      Width = 91
      Height = 21
      DataField = 'NCMID'
      DataSource = dmEF.dsProduto
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 106
      Top = 154
      Width = 91
      Height = 21
      DataField = 'NCMID'
      DataSource = dmIT.dsProcessoItem
      TabOrder = 2
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 8
      Top = 72
      Width = 79
      Height = 20
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'SUBGRUPOID'
      DataSource = dmEF.dsProduto
      TabOrder = 3
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit8: TDBEdit
      Left = 106
      Top = 72
      Width = 281
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_DESCRICAO_SUBGRUPO'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 4
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 8
      Top = 35
      Width = 81
      Height = 20
      OnCustomDlg = wwDBComboDlg3CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'PRODUTOID'
      DataSource = dmIT.dsProcessoItem
      TabOrder = 5
      WordWrap = False
      UnboundDataType = wwDefault
      OnExit = wwDBComboDlg3Exit
    end
    object DBEdit1: TDBEdit
      Left = 106
      Top = 38
      Width = 279
      Height = 21
      Color = clInactiveBorder
      DataField = 'DESCRICAOPORTUGUES'
      DataSource = dmIT.dsProcessoItem
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit34: TDBEdit
      Left = 106
      Top = 200
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CUBAGEM'
      DataSource = dmEF.dsProduto
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 203
      Top = 200
      Width = 151
      Height = 21
      CharCase = ecUpperCase
      DataField = 'MODELOID'
      DataSource = dmEF.dsProduto
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 203
      Top = 248
      Width = 151
      Height = 21
      CharCase = ecUpperCase
      DataField = 'APLICACAO'
      DataSource = dmEF.dsProduto
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 333
    Width = 495
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 253
      Top = 8
      Width = 101
      Height = 25
      Caption = 'Confirma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
end
