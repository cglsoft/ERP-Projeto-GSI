object frmDivisaoDuplicata: TfrmDivisaoDuplicata
  Left = 372
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Divis'#227'o de Duplicatas'
  ClientHeight = 348
  ClientWidth = 524
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
    Width = 524
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 38
      Height = 13
      Caption = 'N'#186' Nota'
    end
    object Label2: TLabel
      Left = 164
      Top = 4
      Width = 51
      Height = 13
      Caption = 'N'#186' Parcela'
    end
    object Label3: TLabel
      Left = 80
      Top = 4
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
    end
    object Label4: TLabel
      Left = 308
      Top = 4
      Width = 54
      Height = 13
      Caption = 'Vlr. Parcela'
    end
    object Label5: TLabel
      Left = 224
      Top = 4
      Width = 63
      Height = 13
      Caption = 'Data Vencto.'
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 16
      Width = 115
      Height = 25
      Caption = 'Confirma Dados'
      TabOrder = 0
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
    object DBEdit1: TDBEdit
      Left = 8
      Top = 20
      Width = 65
      Height = 21
      Color = clScrollBar
      DataField = 'NFSID'
      DataSource = dmPP.dsNfsParcela
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 164
      Top = 20
      Width = 53
      Height = 21
      Color = clScrollBar
      DataField = 'PARCELAID'
      DataSource = dmPP.dsNfsParcela
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 20
      Width = 77
      Height = 21
      Color = clScrollBar
      DataField = 'DATAEMISSAOID'
      DataSource = dmPP.dsNfsParcela
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 308
      Top = 20
      Width = 81
      Height = 21
      Color = clScrollBar
      DataField = 'VLRPARCELA'
      DataSource = dmPP.dsNfsParcela
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 224
      Top = 20
      Width = 77
      Height = 21
      Color = clScrollBar
      DataField = 'DATAVENCIMENTO'
      DataSource = dmPP.dsNfsParcela
      ReadOnly = True
      TabOrder = 5
    end
  end
  object DBGrid5: TDBGrid
    Left = 0
    Top = 49
    Width = 524
    Height = 299
    Align = alClient
    DataSource = dsDuplic
    FixedColor = clScrollBar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'DtVencto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrParc'
        Width = 128
        Visible = True
      end>
  end
  object cdsDuplic: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumParc'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'DtVencto'
        DataType = ftDate
      end
      item
        Name = 'VlrParc'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 456
    Top = 56
    Data = {
      760000009619E0BD0100000018000000030000000000030000007600074E756D
      50617263040001000200010007535542545950450200490008004175746F696E
      630008447456656E63746F040006000000000007566C72506172630800040000
      00000001000C4155544F494E4356414C55450400010001000000}
    object cdsDuplicNumParc: TAutoIncField
      DisplayLabel = 'N'#186' Parcela'
      DisplayWidth = 12
      FieldName = 'NumParc'
    end
    object cdsDuplicDtVencto: TDateField
      DisplayLabel = 'Dt. Vencto.'
      DisplayWidth = 19
      FieldName = 'DtVencto'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsDuplicVlrParc: TFloatField
      DisplayLabel = 'Vlr. Parcela'
      DisplayWidth = 19
      FieldName = 'VlrParc'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object dsDuplic: TDataSource
    DataSet = cdsDuplic
    Left = 392
    Top = 56
  end
end
