object frmOSOFFLine: TfrmOSOFFLine
  Left = 0
  Top = 0
  Caption = 'Ordem de Servi'#231'o OFFLINE'
  ClientHeight = 557
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 233
    Width = 764
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = -8
    ExplicitTop = 210
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 537
    Width = 764
    Height = 20
    Panels = <
      item
        Width = 280
      end
      item
        Width = 200
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 505
    Width = 764
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 764
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
          Width = 547
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 59
        end>
      TtmbCria = True
      TtmbClientDataSet = dmOFFLine.cdsOS
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object pgctrlOSPastas: TPageControl
    Left = 0
    Top = 237
    Width = 764
    Height = 268
    Hint = 'Dados Adicionais da Ordem de Servi'#231'o'
    ActivePage = tbshtCliente
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object tbshtCliente: TTabSheet
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object grpbxDadosCliente: TGroupBox
        Left = 0
        Top = 0
        Width = 553
        Height = 240
        Hint = 'Dados do Cliente para abertura da Ordem de Servi'#231'o'
        Align = alLeft
        Caption = 'Dados do &Cliente'
        TabOrder = 0
        object Label30: TLabel
          Left = 6
          Top = 22
          Width = 32
          Height = 13
          Hint = 'C'#243'digo do Cliente  autom'#225'tico do Aparelho / Componente'
          Caption = 'Cliente'
        end
        object Label36: TLabel
          Left = 6
          Top = 89
          Width = 49
          Height = 13
          Hint = 'Nome do Solicitante  no Cliente '
          Caption = 'Solicitante'
          FocusControl = DBEdit9
        end
        object Label37: TLabel
          Left = 344
          Top = 87
          Width = 28
          Height = 13
          Hint = 'Setor Solic.'
          Caption = 'Setor '
          FocusControl = DBEdit11
        end
        object Label38: TLabel
          Left = 6
          Top = 108
          Width = 71
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Serv.Solicitado'
        end
        object Label44: TLabel
          Left = 342
          Top = 63
          Width = 42
          Height = 13
          Hint = 'N'#250'mero da pasta do cliente'
          Caption = 'N'#186' Pasta'
        end
        object Label39: TLabel
          Left = 6
          Top = 179
          Width = 61
          Height = 13
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'End. Servi'#231'o'
          FocusControl = DBEdit32
        end
        object Label40: TLabel
          Left = 214
          Top = 223
          Width = 57
          Height = 13
          Hint = 'Cidade de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'Cid. Servi'#231'o'
          FocusControl = DBEdit33
        end
        object Label41: TLabel
          Left = 488
          Top = 221
          Width = 14
          Height = 13
          Hint = 'Estado de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'UF'
          FocusControl = DBEdit34
        end
        object Label42: TLabel
          Left = 6
          Top = 129
          Width = 21
          Height = 13
          Hint = 'CEP de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'CEP'
        end
        object Label12: TLabel
          Left = 396
          Top = 132
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit13
        end
        object Label13: TLabel
          Left = 6
          Top = 220
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label14: TLabel
          Left = 6
          Top = 155
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit14
        end
        object Label43: TLabel
          Left = 6
          Top = 63
          Width = 42
          Height = 13
          Hint = 'Telefone do cliente'
          Caption = 'Telefone'
        end
        object Label46: TLabel
          Left = 6
          Top = 41
          Width = 70
          Height = 13
          Caption = 'Cond Pagto ID'
        end
        object DBEdit9: TDBEdit
          Left = 86
          Top = 85
          Width = 191
          Height = 21
          Hint = 'Nome do Solicitante  no Cliente '
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'SOLICITANTE'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit11: TDBEdit
          Left = 390
          Top = 85
          Width = 146
          Height = 21
          Hint = 'Setor Solicitante'
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'SETOR'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit32: TDBEdit
          Left = 86
          Top = 107
          Width = 450
          Height = 21
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          CharCase = ecUpperCase
          DataField = 'SERVICO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 8
        end
        object DBEdit36: TDBEdit
          Left = 390
          Top = 63
          Width = 89
          Height = 21
          Hint = 'Telefone do cliente'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_PASTA'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit33: TDBEdit
          Left = 280
          Top = 217
          Width = 155
          Height = 21
          Hint = 'Cidade de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'CIDADE'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit34: TDBEdit
          Left = 508
          Top = 217
          Width = 30
          Height = 21
          Hint = 'Estado de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'SIGLAUFID'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 15
        end
        object wwDBComboDlg9: TwwDBComboDlg
          Left = 86
          Top = 129
          Width = 96
          Height = 20
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'CEPID'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 9
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit13: TDBEdit
          Left = 448
          Top = 129
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'NUMERO'
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit18: TDBEdit
          Left = 86
          Top = 217
          Width = 127
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'BAIRRO'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 13
        end
        object DBMemo1: TDBMemo
          Left = 86
          Top = 176
          Width = 455
          Height = 38
          Color = clInactiveBorder
          DataField = 'ENDERECO'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 12
        end
        object DBEdit14: TDBEdit
          Left = 86
          Top = 152
          Width = 451
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'COMPLEMENTO'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit12: TDBEdit
          Left = 86
          Top = 16
          Width = 55
          Height = 21
          Color = clInactiveBorder
          DataField = 'CLIENTEID'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit37: TDBEdit
          Left = 86
          Top = 63
          Width = 190
          Height = 21
          Hint = 'N'#250'mero da pasta do cliente'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_TELEFONE'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit28: TDBEdit
          Left = 143
          Top = 16
          Width = 393
          Height = 21
          Hint = 
            'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
            'momento em que se inserir um novo registro'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          Ctl3D = True
          DataField = 'L_NOMECLIENTE'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 143
          Top = 40
          Width = 393
          Height = 21
          DataField = 'L_DESCR_CONDPAGTO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 86
          Top = 41
          Width = 51
          Height = 21
          Hint = 'Setor Solicitante'
          CharCase = ecUpperCase
          DataField = 'CONDPAGTOID'
          DataSource = dmOFFLine.dsOS
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 553
        Top = 0
        Width = 203
        Height = 240
        Hint = 'Dados do Or'#231'amento'
        Align = alClient
        Caption = 'Dados do Laborat'#243'rio'
        TabOrder = 1
        object Label47: TLabel
          Left = 8
          Top = 20
          Width = 54
          Height = 26
          Hint = 'Data de Entrada do Aparelho no Laborat'#243'rio'
          Caption = 'Dt. Entrada Laborat'#243'rio'
          WordWrap = True
        end
        object Label52: TLabel
          Left = 8
          Top = 52
          Width = 53
          Height = 26
          Hint = 'Data de Sa'#237'da do Aparelho no Laborat'#243'rio'
          Caption = 'Dt. Sa'#237'da Laborat'#243'rio'
          WordWrap = True
        end
        object Label28: TLabel
          Left = 8
          Top = 84
          Width = 60
          Height = 26
          Caption = 'Data / Hora  de Chegada'
          WordWrap = True
        end
        object Label54: TLabel
          Left = 8
          Top = 117
          Width = 60
          Height = 26
          Caption = 'Data / Hora  de Sa'#237'da'
          WordWrap = True
        end
        object SpeedButton1: TSpeedButton
          Left = 177
          Top = 89
          Width = 18
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
            F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
            F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
            7777777700000007777777777777777777777777777777777777}
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 182
          Top = 117
          Width = 12
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
            F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
            F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
            7777777700000007777777777777777777777777777777777777}
          OnClick = SpeedButton2Click
        end
        object wwDBDateTimePicker5: TwwDBDateTimePicker
          Left = 68
          Top = 22
          Width = 117
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clInactiveBorder
          DataField = 'DATAENTRLABORATORIO'
          DataSource = dmOFFLine.dsOS
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 0
        end
        object wwDBDateTimePicker6: TwwDBDateTimePicker
          Left = 68
          Top = 54
          Width = 117
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clInactiveBorder
          DataField = 'DATASAIDALABORATORIO'
          DataSource = dmOFFLine.dsOS
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 1
        end
        object DBEdit42: TDBEdit
          Left = 68
          Top = 90
          Width = 113
          Height = 21
          Hint = 'Setor Solicitante'
          CharCase = ecUpperCase
          DataField = 'DATAHORACHEGADA'
          DataSource = dmOFFLine.dsOS
          TabOrder = 2
        end
        object DBEdit46: TDBEdit
          Left = 68
          Top = 117
          Width = 113
          Height = 21
          Hint = 'Setor Solicitante'
          CharCase = ecUpperCase
          DataField = 'DATAHORASAIDA'
          DataSource = dmOFFLine.dsOS
          TabOrder = 3
        end
      end
    end
    object tbshtHoras: TTabSheet
      Caption = 'Horas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object dbgrdHoras: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 240
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsOSHora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdHorasDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTIDADEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEPOPULARTECNICO'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATATRABALHOID'
            Width = 105
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
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
      object ControlBar1: TControlBar
        Left = 680
        Top = 0
        Width = 76
        Height = 240
        Align = alRight
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 11
          Top = 2
          Width = 59
          Height = 22
          ButtonWidth = 58
          Caption = 'ToolBar1'
          Images = ImageList1
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = 'Excluir'
            ImageIndex = 4
            OnClick = ToolButton1Click
          end
        end
      end
    end
    object tbshtServico: TTabSheet
      Caption = 'Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Label33: TLabel
        Left = 39
        Top = 293
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        FocusControl = DBEdit25
      end
      object DBEdit25: TDBEdit
        Left = 39
        Top = 306
        Width = 60
        Height = 21
        DataField = 'USUARIO'
        TabOrder = 0
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 680
        Height = 240
        Align = alClient
        TabOrder = 1
        object Label3: TLabel
          Left = 5
          Top = 201
          Width = 162
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Obs. do Servi'#231'o executado na OS'
        end
        object Label58: TLabel
          Left = 4
          Top = 103
          Width = 89
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Servi'#231'o executado'
        end
        object DBEdit22: TDBEdit
          Left = 5
          Top = 213
          Width = 655
          Height = 57
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'OBSSERVICO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 0
        end
        object dbgrdServico: TDBGrid
          Left = 0
          Top = 0
          Width = 660
          Height = 97
          Align = alTop
          Color = clCream
          Ctl3D = True
          DataSource = dmOFFLine.dsOSDefeito
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgrdHorasDrawColumnCell
          Columns = <
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
              Width = 166
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCALDEFEITO'
              Width = 301
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
        object DBMemo4: TDBMemo
          Left = 4
          Top = 117
          Width = 655
          Height = 78
          DataField = 'SERVICOEXECUTADO'
          DataSource = dmOFFLine.dsOSDefeito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object ControlBar2: TControlBar
        Left = 680
        Top = 0
        Width = 76
        Height = 240
        Align = alRight
        TabOrder = 2
        object ToolBar2: TToolBar
          Left = 11
          Top = 2
          Width = 59
          Height = 22
          ButtonWidth = 58
          Caption = 'ToolBar1'
          Images = ImageList1
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton2: TToolButton
            Left = 0
            Top = 0
            Caption = 'Excluir'
            ImageIndex = 4
            OnClick = ToolButton2Click
          end
        end
      end
    end
    object tbshtMaterial: TTabSheet
      Caption = 'Produto/Servi'#231'o'
      ImageIndex = 7
      object dbgrdOSMaterial: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 240
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsOSMaterial
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdHorasDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOPRODUTO'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOMATSERV'
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_ALIQUOTAIPI'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRECOUNITARIO'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRECOTOTAL'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
      object ControlBar3: TControlBar
        Left = 680
        Top = 0
        Width = 76
        Height = 240
        Align = alRight
        TabOrder = 1
        object ToolBar3: TToolBar
          Left = 11
          Top = 2
          Width = 59
          Height = 22
          ButtonWidth = 58
          Caption = 'ToolBar1'
          Images = ImageList1
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Caption = 'Excluir'
            ImageIndex = 4
            OnClick = ToolButton3Click
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Resumo'
      ImageIndex = 9
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 249
        Height = 240
        Align = alLeft
        Caption = 'Or'#231'amento Complementar'
        TabOrder = 0
        object Label45: TLabel
          Left = 9
          Top = 17
          Width = 80
          Height = 13
          Caption = 'Vlr. M'#227'o de Obra'
        end
        object Label48: TLabel
          Left = 9
          Top = 41
          Width = 86
          Height = 13
          Caption = 'Vlr. Deslocamento'
        end
        object Label49: TLabel
          Left = 9
          Top = 62
          Width = 42
          Height = 13
          Caption = 'Vlr. Frete'
          FocusControl = DBEdit24
        end
        object Label50: TLabel
          Left = 9
          Top = 89
          Width = 43
          Height = 13
          Caption = 'Vlr. Pe'#231'a'
          FocusControl = DBEdit26
        end
        object Label24: TLabel
          Left = 9
          Top = 113
          Width = 98
          Height = 13
          Hint = 'Antecipa'#231#227'o de Pagamento'
          Caption = 'Vlr. Total Or'#231'ado'
          FocusControl = DBEdit21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit24: TDBEdit
          Left = 115
          Top = 61
          Width = 117
          Height = 21
          DataField = 'VLRFRETE'
          DataSource = dmOFFLine.dsOS
          TabOrder = 2
        end
        object DBEdit26: TDBEdit
          Left = 115
          Top = 85
          Width = 116
          Height = 21
          DataField = 'VLRPECA'
          DataSource = dmOFFLine.dsOS
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 115
          Top = 109
          Width = 116
          Height = 21
          Hint = 'Antecipa'#231#227'o de Pagamento'
          CharCase = ecUpperCase
          Color = clMenuBar
          DataField = 'VLRTOTALORCCOMP'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit27: TDBEdit
          Left = 115
          Top = 15
          Width = 117
          Height = 21
          DataField = 'VLRMAODEOBRA'
          DataSource = dmOFFLine.dsOS
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 115
          Top = 37
          Width = 117
          Height = 21
          DataField = 'VLRDESLOCAMENTO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 249
        Top = 0
        Width = 507
        Height = 240
        Align = alClient
        Caption = 'Valores Finais'
        TabOrder = 1
        object Label31: TLabel
          Left = 7
          Top = 88
          Width = 72
          Height = 13
          Caption = 'Vlr.Total Pe'#231'as'
        end
        object Label32: TLabel
          Left = 7
          Top = 111
          Width = 76
          Height = 13
          Caption = 'Vlr. Total Outros'
        end
        object Label53: TLabel
          Left = 255
          Top = 95
          Width = 97
          Height = 13
          Caption = 'Vlr Total a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 7
          Top = 15
          Width = 107
          Height = 13
          Caption = 'Vlr. Total M'#227'o de Obra'
        end
        object Label26: TLabel
          Left = 7
          Top = 39
          Width = 113
          Height = 13
          Caption = 'Vlr. Total Deslocamento'
        end
        object Label27: TLabel
          Left = 7
          Top = 63
          Width = 66
          Height = 13
          Caption = 'Vlr.Total Frete'
        end
        object Label55: TLabel
          Left = 255
          Top = 39
          Width = 73
          Height = 13
          Caption = 'Valor Desconto'
        end
        object Label56: TLabel
          Left = 255
          Top = 15
          Width = 74
          Height = 13
          Caption = 'Porc. Desconto'
        end
        object Label57: TLabel
          Left = 255
          Top = 63
          Width = 73
          Height = 13
          Caption = 'Nome Lib.Desc'
        end
        object Label59: TLabel
          Left = 8
          Top = 136
          Width = 97
          Height = 13
          Hint = 'Valor or'#231'ado ( Efeito de Confer'#234'ncia )'
          Caption = 'Vlr. Total Or'#231'amento'
        end
        object DBEdit39: TDBEdit
          Left = 131
          Top = 85
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALPECA'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          TabOrder = 3
        end
        object DBEdit40: TDBEdit
          Left = 131
          Top = 109
          Width = 117
          Height = 21
          DataField = 'VLRTOTALOUTRO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 4
        end
        object DBEdit41: TDBEdit
          Left = 355
          Top = 93
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALPAGAR'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit30: TDBEdit
          Left = 131
          Top = 13
          Width = 116
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALMAODEOBRA'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          TabOrder = 0
        end
        object DBEdit31: TDBEdit
          Left = 131
          Top = 37
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALDESLOCAMENTO'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          TabOrder = 1
        end
        object DBEdit35: TDBEdit
          Left = 131
          Top = 61
          Width = 117
          Height = 21
          DataField = 'VLRTOTALFRETE'
          DataSource = dmOFFLine.dsOS
          TabOrder = 2
        end
        object BitBtn2: TBitBtn
          Left = 360
          Top = 120
          Width = 113
          Height = 25
          Caption = 'Atualizar C'#225'lculo'
          TabOrder = 9
          OnClick = BitBtn2Click
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777700007777777778888887777700007777777000003888777700007777
            770BBBB03088877700007777770BBBB0308887770000777770BBBB0333088777
            0000777770BBBB03330887770000777770000003330887770000777777778033
            3308877700007777777000333308877700007777770BB0333308877700007777
            70BBBB0333088777000077770BBBBBB03308877700007770BBBBBBBB03088777
            0000777000BBBB00030887770000777770BBBB033308777700007777770BBBB0
            3087777700007777770BBBB03077777700007777777000003777777700007777
            77777777777777770000}
        end
        object DBEdit43: TDBEdit
          Left = 355
          Top = 13
          Width = 117
          Height = 21
          DataField = 'PORCDESCONTO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 5
        end
        object DBEdit44: TDBEdit
          Left = 355
          Top = 37
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRDESCONTO'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          TabOrder = 6
        end
        object DBEdit45: TDBEdit
          Left = 355
          Top = 61
          Width = 117
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMELIBDESCONTO'
          DataSource = dmOFFLine.dsOS
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 131
          Top = 136
          Width = 117
          Height = 21
          Hint = 'Data de Sa'#237'da do Aparelho no Laborat'#243'rio'
          CharCase = ecUpperCase
          Color = clMenuBar
          DataField = 'VLRORCADO'
          DataSource = dmOFFLine.dsOS
          Enabled = False
          MaxLength = 10
          TabOrder = 10
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Ocorr'#234'ncia Operacional'
      ImageIndex = 10
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 756
        Height = 240
        Align = alClient
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 2
          Top = 120
          Width = 752
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 117
        end
        object dbgrdOcOperacional: TDBGrid
          Left = 2
          Top = 15
          Width = 676
          Height = 105
          Align = alClient
          Color = clCream
          Ctl3D = True
          DataSource = dmOFFLine.dsOSOCOperacional
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEMID'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAOCORRENCIA'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCOPERACIONALID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOOCOPERACIONAL'
              Width = 189
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAACAOTOMADA'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIOACAOTOMADA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
        object ControlBar4: TControlBar
          Left = 678
          Top = 15
          Width = 76
          Height = 105
          Align = alRight
          TabOrder = 1
          object ToolBar4: TToolBar
            Left = 11
            Top = 2
            Width = 59
            Height = 22
            ButtonWidth = 58
            Caption = 'ToolBar1'
            Images = ImageList1
            List = True
            ShowCaptions = True
            TabOrder = 0
            object ToolButton4: TToolButton
              Left = 0
              Top = 0
              Caption = 'Excluir'
              ImageIndex = 4
              OnClick = ToolButton4Click
            end
          end
        end
        object DBMemo3: TDBMemo
          Left = 2
          Top = 123
          Width = 752
          Height = 115
          Align = alBottom
          DataField = 'ACAOTOMADA'
          DataSource = dmOFFLine.dsOSOCOperacional
          TabOrder = 2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Despesas RDV'
      ImageIndex = 7
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 240
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOFFLine.dsAdiantamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdHorasDrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'OSID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADIANTAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADEPOSITO'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATASOLICITACAO'
            Width = 78
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
            Width = 145
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
      object ControlBar5: TControlBar
        Left = 680
        Top = 0
        Width = 76
        Height = 240
        Align = alRight
        TabOrder = 1
        object ToolBar5: TToolBar
          Left = 11
          Top = 2
          Width = 59
          Height = 22
          ButtonWidth = 58
          Caption = 'ToolBar1'
          Images = ImageList1
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton5: TToolButton
            Left = 0
            Top = 0
            Caption = 'Excluir'
            ImageIndex = 4
            OnClick = ToolButton5Click
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Horas Extras'
      ImageIndex = 8
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 240
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
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdHorasDrawColumnCell
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'OSID'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCOHORAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATASOLICITACAO'
            Width = 51
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
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
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
      object ControlBar6: TControlBar
        Left = 680
        Top = 0
        Width = 76
        Height = 240
        Align = alRight
        TabOrder = 1
        object ToolBar6: TToolBar
          Left = 11
          Top = 2
          Width = 59
          Height = 22
          ButtonWidth = 58
          Caption = 'ToolBar1'
          Images = ImageList1
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton6: TToolButton
            Left = 0
            Top = 0
            Caption = 'Excluir'
            ImageIndex = 4
            OnClick = ToolButton6Click
          end
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 764
    Height = 30
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = ActionToolBar2
        ImageIndex = -1
        MinHeight = 26
        Width = 760
      end>
    object ActionToolBar2: TActionToolBar
      Left = 9
      Top = 0
      Width = 747
      Height = 26
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar2'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 747
      Height = 25
      UseSystemFont = False
      ActionManager = actmngManutencao
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 764
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 764
      Height = 42
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      object Label10: TLabel
        Left = 411
        Top = 4
        Width = 69
        Height = 13
        Hint = 'Data de Abertura da Ordem de Servi'#231'o'
        Caption = 'Data Abertura'
        FocusControl = dbedtDtAbertura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 310
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
      object Label16: TLabel
        Left = 66
        Top = 4
        Width = 20
        Height = 13
        Caption = 'Filial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 4
        Width = 33
        Height = 13
        Caption = 'Filial Id'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 493
        Top = 4
        Width = 66
        Height = 13
        Caption = 'Data Validade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 573
        Top = 4
        Width = 75
        Height = 13
        Caption = 'Data Conclus'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 669
        Top = 4
        Width = 85
        Height = 13
        Caption = 'Data Fechamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 309
        Top = 19
        Width = 98
        Height = 21
        Hint = 
          'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
          'momento em que se inserir um novo registro'
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        Ctl3D = True
        DataField = 'OSID'
        DataSource = dmOFFLine.dsOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object dbedtDtAbertura: TDBEdit
        Left = 410
        Top = 19
        Width = 79
        Height = 21
        Hint = 'Data de Abertura da Ordem de Servi'#231'o'
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        Ctl3D = True
        DataField = 'DATAABERTURA'
        DataSource = dmOFFLine.dsOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbedtDtValidade: TDBEdit
        Left = 492
        Top = 19
        Width = 79
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        DataField = 'DATAVALIDADE'
        DataSource = dmOFFLine.dsOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 573
        Top = 16
        Width = 89
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clInactiveBorder
        DataField = 'DATACONCLUSAO'
        DataSource = dmOFFLine.dsOS
        Epoch = 1950
        ReadOnly = True
        ShowButton = True
        TabOrder = 3
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 668
        Top = 19
        Width = 89
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = clInactiveBorder
        DataField = 'DATAFECHAMENTO'
        DataSource = dmOFFLine.dsOS
        Epoch = 1950
        ReadOnly = True
        ShowButton = True
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 4
        Top = 17
        Width = 55
        Height = 21
        DataField = 'FILIALID'
        DataSource = dmOFFLine.dsOS
        TabOrder = 5
      end
      object DBEdit1: TDBEdit
        Left = 65
        Top = 17
        Width = 238
        Height = 21
        Hint = 
          'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
          'momento em que se inserir um novo registro'
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        Ctl3D = True
        DataField = 'L_NOMEFANTASIAFILIAL'
        DataSource = dmOFFLine.dsOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 764
    Height = 160
    ActivePage = TabSheet6
    Align = alTop
    TabOrder = 5
    object TabSheet6: TTabSheet
      Caption = 'Dados O.S.'
      object grpbxDadosOS: TGroupBox
        Left = 0
        Top = 0
        Width = 756
        Height = 132
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label35: TLabel
          Left = 10
          Top = 38
          Width = 61
          Height = 13
          Caption = 'Atendimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 12
          Width = 20
          Height = 13
          Hint = 'Tipo da Ordem de Servi'#231'o'
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 64
          Width = 24
          Height = 13
          Caption = 'S'#233'rie'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 10
          Top = 86
          Width = 34
          Height = 13
          Caption = 'Modelo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 10
          Top = 106
          Width = 36
          Height = 13
          Caption = 'T'#233'cnico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 479
          Top = 113
          Width = 75
          Height = 13
          Caption = 'Localiza'#231#227'o O.S'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 479
          Top = 83
          Width = 68
          Height = 26
          Caption = 'Usu'#225'rio da Abertura O.S.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label22: TLabel
          Left = 238
          Top = 36
          Width = 47
          Height = 13
          Caption = 'N'#186' Cortes'
          FocusControl = DBEdit15
        end
        object Label4: TLabel
          Left = 239
          Top = 14
          Width = 57
          Height = 13
          Caption = 'Contrato ID'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 238
          Top = 59
          Width = 60
          Height = 13
          Caption = 'Vers'#227'o Soft.'
          FocusControl = DBEdit16
        end
        object DBComboBox2: TDBComboBox
          Left = 86
          Top = 35
          Width = 147
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'TIPOATENDIMENTO'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'CORRETIVA'
            'PREVENTIVA')
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object wwdbcdlgSerie: TwwDBComboDlg
          Left = 86
          Top = 58
          Width = 147
          Height = 21
          ShowButton = True
          Style = csDropDown
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'SERIEID'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwdbcdlgModelo: TwwDBComboDlg
          Left = 86
          Top = 79
          Width = 179
          Height = 21
          ShowButton = True
          Style = csDropDown
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'MODELOID'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwDBComboDlg6: TwwDBComboDlg
          Left = 86
          Top = 106
          Width = 100
          Height = 20
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'TECNICOID'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit6: TDBEdit
          Left = 188
          Top = 105
          Width = 285
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_NOMETECNICO'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object wwRadioGroup1: TwwRadioGroup
          Left = 479
          Top = 42
          Width = 190
          Height = 35
          DisableThemes = False
          BiDiMode = bdLeftToRight
          Caption = 'Assist. T'#233'cnica'
          Columns = 2
          DataField = 'TIPOASSIST'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Interna'
            'Externa')
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'I'
            'E')
        end
        object DBEdit3: TDBEdit
          Left = 559
          Top = 86
          Width = 195
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'USUARIO'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit15: TDBEdit
          Left = 312
          Top = 36
          Width = 121
          Height = 21
          DataField = 'NUMCORTES'
          DataSource = dmOFFLine.dsOS
          TabOrder = 7
        end
        object DBEdit4: TDBEdit
          Left = 86
          Top = 11
          Width = 55
          Height = 21
          Color = clInactiveBorder
          DataField = 'TIPOOSID'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit17: TDBEdit
          Left = 558
          Top = 107
          Width = 55
          Height = 21
          Color = clInactiveBorder
          DataField = 'LOCALIZACAOOSID'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit19: TDBEdit
          Left = 407
          Top = -18
          Width = 285
          Height = 21
          Hint = 
            'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
            'momento em que se inserir um novo registro'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          Ctl3D = True
          DataField = 'L_DESCRICAOTIPOOS'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit38: TDBEdit
          Left = 619
          Top = 108
          Width = 135
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_LOCALIZACAOOS'
          DataSource = dmOFFLine.dsOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBCheckBox1: TDBCheckBox
          Left = 438
          Top = 8
          Width = 210
          Height = 17
          TabStop = False
          Caption = 'Problemas na Transfer'#234'ncia'
          DataField = 'PROBLEMATRANSF'
          DataSource = dmOFFLine.dsOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit5: TDBEdit
          Left = 312
          Top = 12
          Width = 121
          Height = 21
          Color = clInactiveBorder
          DataField = 'L_CONTRATOID'
          DataSource = dmOFFLine.dsOS
          ReadOnly = True
          TabOrder = 13
        end
        object DBCheckBox2: TDBCheckBox
          Left = 438
          Top = 22
          Width = 210
          Height = 17
          TabStop = False
          Caption = 'OS Impressao FINAL'
          DataField = 'OSIMPRESSA'
          DataSource = dmOFFLine.dsOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit16: TDBEdit
          Left = 312
          Top = 59
          Width = 121
          Height = 21
          DataField = 'VERSAOSOFT'
          DataSource = dmOFFLine.dsOS
          TabOrder = 15
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Log. Error Transfer'#234'ncia'
      ImageIndex = 1
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 756
        Height = 132
        Align = alClient
        DataField = 'LOGERRO'
        DataSource = dmOFFLine.dsOS
        TabOrder = 0
      end
    end
  end
  object ImageList1: TImageList
    Left = 704
    Top = 82
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300FFEFD600FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500FFD6A5008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD847B00FFEFDE00FFEF
      DE00FFEFD600FFE7CE00FFE7CE00FFE7C600FFDEBD00FFDEBD00FFDEB500FFD6
      AD00FFD6AD00FFD6AD008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847B00FFF7E700FFEF
      DE00FFEFDE00ADB5E700EFDED600FFE7CE00FFE7C600CEC6CE00FFDEBD00FFDE
      B500FFDEB500FFD6AD008C635A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C7B00FFF7E700FFF7
      E700FFEFDE000031FF003152F700EFDED6009CA5DE000031FF006373E700FFDE
      BD00FFDEB500FFDEB5008C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C7B00FFF7EF00FFF7
      EF00DEDEE7000031FF000031FF003152F7000031FF000031FF000031FF00FFDE
      BD00FFDEBD00FFDEB50094636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6948400FFFFF700FFF7
      EF00FFF7EF00BDC6EF001042FF000031FF000031FF00637BEF00FFE7CE00FFE7
      C600FFE7C600FFDEBD00946B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFFFFF00FFFF
      F700FFFFF7000031FF000031FF000031FF000031FF000031FF003152F700FFE7
      CE00FFE7CE00FFE7C6009C6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEA58400FFFFFF00FFFF
      FF00FFFFFF000031FF00637BFF00FFF7EF00CECEEF001042FF00637BF700FFEF
      D600FFEFD600FFE7CE009C736B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6A58C00FFFFFF00FFFF
      FF00FFFFFF00CED6FF00FFFFF700FFF7EF00FFF7EF00DEDEE700FFEFE700FFEF
      DE00FFEFD600FFEFD6009C737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6A58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFE7
      D600FFBDBD00FFADAD00A5737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00B584
      7300B5847300B5847300A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700B584
      7300E7AD8400D69C840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300F7DED6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF390000FF7B
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B00009C9C0000BD00
      0000FF000000FF000000FF0000007B000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000007B000000FF000000FF000000FF39
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B0000BDBD00006363
      0000BD000000FF000000FF0000007B000000000000000000000000000000BD00
      0000BD00000000000000000000000000000000BDBD0000BDBD0000BDBD0000BD
      BD0000BDBD000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000007B0000007B0000007B00
      00007B3900007B390000FFBD0000FFBD0000FFBD00007B7B0000BDBD00008484
      0000636300007B0000007B00000000000000BD000000BD000000BD000000BD00
      0000BD000000BD00000000000000000000000000000000000000000000000000
      0000000000000000000000BDBD00000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF00000000000000000000000000BD00
      0000BD000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004242420042424200424242007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF00000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0021210000000000008484840084848400848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005A5A0000636300006363630084848400848484007B7B00009C9C00002121
      21008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000007B00
      0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF000000000000007B0000007B000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00007B7B0000DEDE00006363000063636300848484007B7B00009C9C00003939
      39008484000042424200FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B0000007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000005A5A0000BDBD0000BDBD0000BDBD
      0000DEDE0000FFFF0000DEDE000063630000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B7B7B00FFFFFF000000FF000000FF00FFFFFF00000000000000
      0000000000007B7B7B00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000007B7B0000FFFF3900FFFF7B00FFFF
      7B00FFFF7B00FFFFBD00FFFF39007B7B0000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000000000
      00007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00007B7B0000FFFF39007B7B000063636300848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B000000000000000000
      0000000000007B0000007B000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B00007B7B00006363630084848400848484007B7B3900BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B7B7B00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00212100000000000084848400848484008484840063636300BDBD7B009C9C
      00008484000042424200FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400848484008484840063636300BDBD
      7B009C9C000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000042424200424242004242420042424200424242002121
      21007B7B390021212100FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008003000000000000
      8007000000000000FFFF000000000000FFFFF55FFFFF8021FF03FFCFF83F0000
      EE01F007E00F0000E600F007C00780010200F00380030000E654F00380030000
      EE04F00100010000FF01F00000010000C103E00000010000C181C00100010000
      01C180030001000001FF10078003000001FF380F8003000003FFFC1FC0070000
      07FFFEFFE00F00000FFFFF7FF83F000000000000000000000000000000000000
      000000000000}
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = actImpOS
            Caption = '&Imprimir OS'
            ImageIndex = 0
          end
          item
            Action = actDespesasRDV
            Caption = '&Despesas RDV'
            ImageIndex = 1
          end
          item
            Action = actBancoHoras
            Caption = '&Horas Extras'
            ImageIndex = 2
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 600
    Top = 84
    StyleName = 'XP Style'
    object actImpOS: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Imprimir OS'
      Hint = 'Imprimir OS'
      ImageIndex = 0
      OnExecute = actImpOSExecute
    end
    object actDespesasRDV: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Despesas RDV'
      Hint = 'Lan'#231'amentos de Despesas RDV'
      ImageIndex = 1
      OnExecute = actDespesasRDVExecute
    end
    object actBancoHoras: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Horas Extras'
      Hint = 'Lan'#231'amentos de Horas Extras'
      ImageIndex = 2
      OnExecute = actBancoHorasExecute
    end
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = []
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    Left = 648
    Top = 82
  end
end
