object frmEntidade: TfrmEntidade
  Left = 176
  Top = 84
  Caption = 'Entidade'
  ClientHeight = 511
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  object PageControl1: TPageControl
    Left = 0
    Top = 114
    Width = 729
    Height = 346
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados Principais de Contato'
      object Label3: TLabel
        Left = 403
        Top = 142
        Width = 42
        Height = 13
        Caption = 'N'#186' Pasta'
        FocusControl = DBEdit10
      end
      object GroupBox2: TGroupBox
        Left = -3
        Top = -4
        Width = 401
        Height = 182
        Caption = 'Endere'#231'o de Cadastro'
        TabOrder = 1
        object Label4: TLabel
          Left = 6
          Top = 16
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label6: TLabel
          Left = 216
          Top = 16
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 6
          Top = 40
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 6
          Top = 64
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label18: TLabel
          Left = 6
          Top = 107
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label19: TLabel
          Left = 6
          Top = 131
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit19
        end
        object Label20: TLabel
          Left = 350
          Top = 131
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit20
        end
        object Label21: TLabel
          Left = 6
          Top = 155
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit21
        end
        object DBEdit6: TDBEdit
          Left = 264
          Top = 16
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 80
          Top = 40
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 80
          Top = 107
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmEF.dsEntidade
          TabOrder = 4
        end
        object DBEdit19: TDBEdit
          Left = 80
          Top = 131
          Width = 265
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmEF.dsEntidade
          TabOrder = 5
        end
        object DBEdit20: TDBEdit
          Left = 366
          Top = 131
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmEF.dsEntidade
          TabOrder = 6
        end
        object DBEdit21: TDBEdit
          Left = 80
          Top = 155
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAIS'
          DataSource = dmEF.dsEntidade
          TabOrder = 7
        end
        object DBMemo3: TDBMemo
          Left = 80
          Top = 62
          Width = 316
          Height = 43
          DataField = 'ENDERECO'
          DataSource = dmEF.dsEntidade
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 80
          Top = 15
          Width = 113
          Height = 20
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CEPID'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 184
        Width = 721
        Height = 131
        Caption = 'Contato'
        TabOrder = 0
        object Label22: TLabel
          Left = 6
          Top = 13
          Width = 39
          Height = 13
          Caption = 'Contato'
          FocusControl = DBEdit8
        end
        object Label24: TLabel
          Left = 6
          Top = 37
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit22
        end
        object Label26: TLabel
          Left = 374
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit24
        end
        object Label28: TLabel
          Left = 374
          Top = 38
          Width = 19
          Height = 13
          Caption = 'FAX'
          FocusControl = DBEdit26
        end
        object Label29: TLabel
          Left = 6
          Top = 60
          Width = 28
          Height = 13
          Caption = 'e-mail'
          FocusControl = DBEdit27
        end
        object Label30: TLabel
          Left = 5
          Top = 104
          Width = 32
          Height = 13
          Caption = 'P'#225'gina'
          FocusControl = DBEdit28
        end
        object Label31: TLabel
          Left = 5
          Top = 115
          Width = 40
          Height = 13
          Caption = 'Internet'
          FocusControl = DBEdit28
        end
        object Label57: TLabel
          Left = 6
          Top = 83
          Width = 51
          Height = 13
          Caption = 'e-mail-NFe'
          FocusControl = DBEdit50
        end
        object DBEdit8: TDBEdit
          Left = 80
          Top = 13
          Width = 289
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
        end
        object DBEdit22: TDBEdit
          Left = 80
          Top = 37
          Width = 288
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
        object DBEdit24: TDBEdit
          Left = 424
          Top = 13
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit26: TDBEdit
          Left = 424
          Top = 38
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FAX'
          DataSource = dmEF.dsEntidade
          TabOrder = 3
        end
        object DBEdit27: TDBEdit
          Left = 80
          Top = 60
          Width = 609
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = dmEF.dsEntidade
          TabOrder = 4
        end
        object DBEdit28: TDBEdit
          Left = 80
          Top = 107
          Width = 609
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAGINA'
          DataSource = dmEF.dsEntidade
          TabOrder = 5
        end
        object DBEdit50: TDBEdit
          Left = 80
          Top = 83
          Width = 609
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAILNFE'
          DataSource = dmEF.dsEntidade
          TabOrder = 6
        end
      end
      object GroupBox9: TGroupBox
        Left = 402
        Top = 0
        Width = 319
        Height = 140
        Caption = 'Observa'#231#227'o'
        TabOrder = 2
        object DBMemo2: TDBMemo
          Left = 2
          Top = 15
          Width = 315
          Height = 123
          Align = alClient
          DataField = 'OBSERVACAO'
          DataSource = dmEF.dsEntidade
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object DBEdit10: TDBEdit
        Left = 403
        Top = 155
        Width = 286
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PASTA'
        DataSource = dmEF.dsEntidade
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados de Cobran'#231'a'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 196
        Align = alTop
        Caption = 'Endere'#231'o de Cobran'#231'a'
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label9: TLabel
          Left = 208
          Top = 16
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit11
        end
        object Label10: TLabel
          Left = 8
          Top = 40
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit12
        end
        object Label11: TLabel
          Left = 8
          Top = 64
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label12: TLabel
          Left = 8
          Top = 107
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit14
        end
        object Label13: TLabel
          Left = 8
          Top = 131
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit15
        end
        object Label15: TLabel
          Left = 344
          Top = 131
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit16
        end
        object Label17: TLabel
          Left = 8
          Top = 155
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit17
        end
        object DBEdit11: TDBEdit
          Left = 256
          Top = 16
          Width = 139
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMEROCOB'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 80
          Top = 40
          Width = 315
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTOCOB'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 80
          Top = 107
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRROCOB'
          DataSource = dmEF.dsEntidade
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 80
          Top = 131
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADECOB'
          DataSource = dmEF.dsEntidade
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 364
          Top = 131
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFCOBID'
          DataSource = dmEF.dsEntidade
          TabOrder = 6
        end
        object DBEdit17: TDBEdit
          Left = 80
          Top = 155
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAISCOB'
          DataSource = dmEF.dsEntidade
          TabOrder = 7
        end
        object DBMemo1: TDBMemo
          Left = 80
          Top = 62
          Width = 316
          Height = 43
          DataField = 'ENDERECOCOB'
          DataSource = dmEF.dsEntidade
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object wwDBComboDlg5: TwwDBComboDlg
          Left = 80
          Top = 15
          Width = 105
          Height = 20
          OnCustomDlg = wwDBComboDlg5CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CEPCOBID'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 196
        Width = 721
        Height = 122
        Align = alClient
        Caption = 'Contato Cobran'#231'a'
        TabOrder = 0
        object Label23: TLabel
          Left = 6
          Top = 19
          Width = 65
          Height = 13
          Caption = 'Contato Cob.'
          FocusControl = DBEdit13
        end
        object Label25: TLabel
          Left = 7
          Top = 43
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit23
        end
        object Label27: TLabel
          Left = 8
          Top = 68
          Width = 33
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit25
        end
        object DBEdit13: TDBEdit
          Left = 80
          Top = 19
          Width = 329
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATOCOB'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 80
          Top = 44
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE2'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit25: TDBEdit
          Left = 80
          Top = 68
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR2'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados de Instalacao'
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 196
        Align = alTop
        Caption = 'Endere'#231'o de Instala'#231#227'o'
        TabOrder = 0
        object Label45: TLabel
          Left = 8
          Top = 16
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label46: TLabel
          Left = 208
          Top = 16
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit40
        end
        object Label47: TLabel
          Left = 8
          Top = 40
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit41
        end
        object Label48: TLabel
          Left = 8
          Top = 64
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label49: TLabel
          Left = 8
          Top = 107
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit42
        end
        object Label50: TLabel
          Left = 8
          Top = 131
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit43
        end
        object Label51: TLabel
          Left = 344
          Top = 131
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit44
        end
        object Label52: TLabel
          Left = 8
          Top = 155
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit45
        end
        object DBEdit40: TDBEdit
          Left = 256
          Top = 16
          Width = 139
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMEROINST'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit41: TDBEdit
          Left = 80
          Top = 40
          Width = 315
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTOINST'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
        object DBEdit42: TDBEdit
          Left = 80
          Top = 107
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRROINST'
          DataSource = dmEF.dsEntidade
          TabOrder = 4
        end
        object DBEdit43: TDBEdit
          Left = 80
          Top = 131
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADEINST'
          DataSource = dmEF.dsEntidade
          TabOrder = 5
        end
        object DBEdit44: TDBEdit
          Left = 364
          Top = 131
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFINSTID'
          DataSource = dmEF.dsEntidade
          TabOrder = 6
        end
        object DBEdit45: TDBEdit
          Left = 80
          Top = 155
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAISINST'
          DataSource = dmEF.dsEntidade
          TabOrder = 7
        end
        object DBMemo4: TDBMemo
          Left = 80
          Top = 62
          Width = 316
          Height = 43
          DataField = 'ENDERECOINST'
          DataSource = dmEF.dsEntidade
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object wwDBComboDlg7: TwwDBComboDlg
          Left = 80
          Top = 15
          Width = 105
          Height = 20
          OnCustomDlg = wwDBComboDlg7CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CEPINSTID'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 196
        Width = 721
        Height = 122
        Align = alClient
        Caption = 'Contato Instala'#231#227'o'
        TabOrder = 1
        object Label53: TLabel
          Left = 6
          Top = 19
          Width = 65
          Height = 13
          Caption = 'Contato Inst.'
          FocusControl = DBEdit46
        end
        object Label54: TLabel
          Left = 7
          Top = 43
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit47
        end
        object Label55: TLabel
          Left = 8
          Top = 68
          Width = 33
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit48
        end
        object DBEdit46: TDBEdit
          Left = 80
          Top = 19
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATOINST'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
        end
        object DBEdit47: TDBEdit
          Left = 80
          Top = 44
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE3'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit48: TDBEdit
          Left = 80
          Top = 68
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR3'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Categoria'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 401
        Height = 318
        ActivePage = TabSheet7
        Align = alLeft
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'Categorias Dispon'#237'veis'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 393
            Height = 290
            Align = alClient
            DataSource = dmEF.dsCategoria
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = SpeedButton2Click
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 401
        Top = 0
        Width = 44
        Height = 318
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 56
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            B6040000424DB604000000000000360000002800000017000000100000000100
            1800000000008004000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0000000080000080000080000080000080000080000080000080B0D0B0000080
            000080000080000080000080B0D0B00000800000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008000
            0080026B0371AA71000080000080000080000080026B0371AA71000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            800000800000800000800D801907820C418D41F0F6F00000800000800D801907
            820C418D41F0F6F0000080000080000080000080000080000000000080000080
            0000800000800000800000800000800000800D801910A81F098E11227E23D0E3
            D00000800D801910A81F098E11227E23D0E3D000008000008000008000008000
            0000000080288D5113841F11831E0F811B0E811B0D80190B7D140D80191AB232
            10A81F0C9A15127813A0C6A00D80191AB23210A81F0C9A15127813A0C6A00000
            800000800000800000000000802287414DE48043DB763FD77235CD6834CC672C
            C45727BF4E1FB73C1AB23210A81F0CA01502750371AA711FB73C1AB23210A81F
            0CA01502750371AA7100008000008000000000008024894153EA854DE48043DB
            763FD77235CD6834CC672CC45726BE4C1DB5391AB23210A81F0CA415027E0361
            A0611DB5391AB23210A81F0CA415027E0361A061000080000000000080258A41
            5AF28C53EA854DE48043DB763FD77235CD6834CC672CC45726BE4C1DB5391AB2
            3210A41D03730690BD9026BE4C1DB5391AB23210A41D03730690BD9000008000
            0000000080278C4130AE492EAC4728A64227A54021A03B1F9D3827B34E34CC67
            2CC45726BE4C18A72F036F11B0D0B034CC672CC45726BE4C18A72F036F11B0D0
            B000008000008000000000008000008000008000008000008000008000008000
            00801F9D3835CD6834CC671CA1372A8836D0E3D01F9D3835CD6834CC671CA137
            2A8836D0E3D00000800000800000800000000000800000800000800000800000
            8000008000008000008021A03B3FD77217932E298641D0E3D000008021A03B3F
            D77217932E298641D0E3D0000080000080000080000080000000000080000080
            000080000080000080000080000080000080229D3811831E5AA971F0F6F00000
            80000080229D3811831E5AA971F0F6F000008000008000008000008000008000
            00000000800000800000800000800000800000800000800000800F71118AC69F
            0000800000800000800000800F71118AC69F0000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008000
            0080B0D0B0000080000080000080000080000080B0D0B0000080000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0080000080000080000080000080000080000080000080000000}
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 8
          Top = 96
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            76030000424D7603000000000000360000002800000011000000100000000100
            1800000000004003000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000000080000080000080000080000080000080
            000080000080B0D0B00000800000800000800000800000800000800000800000
            8000000080000080000080000080000080000080000080000080026B0371AA71
            0000800000800000800000800000800000800000800000008000008000008000
            00800000800000800000800000800D801907820C418D41F0F6F0000080000080
            0000800000800000800000008000008000008000008000008000008000008000
            00800D801910A81F098E11227E23D0E3D0000080000080000080000080000000
            80288D5113841F11831E0F811B0E811B0D80190B7D140D80191AB23210A81F0C
            9A15127813A0C6A0000080000080000080000000802287414DE48043DB763FD7
            7235CD6834CC672CC45727BF4E1FB73C1AB23210A81F0CA01502750371AA7100
            00800000800000008024894153EA854DE48043DB763FD77235CD6834CC672CC4
            5726BE4C1DB5391AB23210A81F0CA415027E0361A06100008000000080258A41
            5AF28C53EA854DE48043DB763FD77235CD6834CC672CC45726BE4C1DB5391AB2
            3210A41D03730690BD9000008000000080278C4130AE492EAC4728A64227A540
            21A03B1F9D3827B34E34CC672CC45726BE4C18A72F036F11B0D0B00000800000
            80000000800000800000800000800000800000800000800000801F9D3835CD68
            34CC671CA1372A8836D0E3D00000800000800000800000008000008000008000
            008000008000008000008000008021A03B3FD77217932E298641D0E3D0000080
            0000800000800000800000008000008000008000008000008000008000008000
            0080229D3811831E5AA971F0F6F0000080000080000080000080000080000000
            800000800000800000800000800000800000800000800F71118AC69F00008000
            0080000080000080000080000080000080000000800000800000800000800000
            80000080000080000080B0D0B000008000008000008000008000008000008000
            0080000080000000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000}
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 8
          Top = 136
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            76030000424D7603000000000000360000002800000011000000100000000100
            1800000000004003000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000000080000080000080000080000080000080
            000080000080B0D0B00000800000800000800000800000800000800000800000
            800000008000008000008000008000008000008000008071AA71026B03000080
            0000800000800000800000800000800000800000800000008000008000008000
            0080000080F0F6F0418D4107820C0D8019000080000080000080000080000080
            00008000008000008000000080000080000080000080D0E3D0227E23098E1110
            A81F0D8019000080000080000080000080000080000080000080000080000000
            80000080000080A0C6A01278130C9A1510A81F1AB2320D80190B7D140D80190E
            811B0F811B11831E13841F288D510000800000008000008071AA710275030CA0
            1510A81F1AB2321FB73C27BF4E2CC45734CC6735CD683FD77243DB764DE48022
            87410000800000008061A061027E030CA41510A81F1AB2321DB53926BE4C2CC4
            5734CC6735CD683FD77243DB764DE48053EA852489410000800000008090BD90
            03730610A41D1AB2321DB53926BE4C2CC45734CC6735CD683FD77243DB764DE4
            8053EA855AF28C258A4100008000000080000080B0D0B0036F1118A72F26BE4C
            2CC45734CC6727B34E1F9D3821A03B27A54028A6422EAC4730AE49278C410000
            8000000080000080000080D0E3D02A88361CA13734CC6735CD681F9D38000080
            0000800000800000800000800000800000800000800000008000008000008000
            0080D0E3D029864117932E3FD77221A03B000080000080000080000080000080
            00008000008000008000000080000080000080000080000080F0F6F05AA97111
            831E229D38000080000080000080000080000080000080000080000080000000
            800000800000800000800000800000800000808AC69F0F711100008000008000
            0080000080000080000080000080000080000000800000800000800000800000
            80000080000080000080B0D0B000008000008000008000008000008000008000
            0080000080000000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000}
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 8
          Top = 176
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            B6040000424DB604000000000000360000002800000017000000100000000100
            1800000000008004000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0000000080000080000080000080000080000080000080000080B0D0B0000080
            000080000080000080000080B0D0B00000800000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008071
            AA71026B0300008000008000008000008071AA71026B03000080000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            80F0F6F0418D4107820C0D8019000080000080F0F6F0418D4107820C0D801900
            0080000080000080000080000080000080000080000080000000000080000080
            000080000080D0E3D0227E23098E1110A81F0D8019000080D0E3D0227E23098E
            1110A81F0D801900008000008000008000008000008000008000008000008000
            0000000080000080000080A0C6A01278130C9A1510A81F1AB2320D8019A0C6A0
            1278130C9A1510A81F1AB2320D80190B7D140D80190E811B0F811B11831E1384
            1F288D5100008000000000008000008071AA710275030CA01510A81F1AB2321F
            B73C71AA710275030CA01510A81F1AB2321FB73C27BF4E2CC45734CC6735CD68
            3FD77243DB764DE48022874100008000000000008061A061027E030CA41510A8
            1F1AB2321DB53961A061027E030CA41510A81F1AB2321DB53926BE4C2CC45734
            CC6735CD683FD77243DB764DE48053EA8524894100008000000000008090BD90
            03730610A41D1AB2321DB53926BE4C90BD9003730610A41D1AB2321DB53926BE
            4C2CC45734CC6735CD683FD77243DB764DE48053EA855AF28C258A4100008000
            0000000080000080B0D0B0036F1118A72F26BE4C2CC45734CC67B0D0B0036F11
            18A72F26BE4C2CC45734CC6727B34E1F9D3821A03B27A54028A6422EAC4730AE
            49278C41000080000000000080000080000080D0E3D02A88361CA13734CC6735
            CD681F9D38D0E3D02A88361CA13734CC6735CD681F9D38000080000080000080
            000080000080000080000080000080000000000080000080000080000080D0E3
            D029864117932E3FD77221A03B000080D0E3D029864117932E3FD77221A03B00
            0080000080000080000080000080000080000080000080000000000080000080
            000080000080000080F0F6F05AA97111831E229D38000080000080F0F6F05AA9
            7111831E229D3800008000008000008000008000008000008000008000008000
            00000000800000800000800000800000800000800000808AC69F0F7111000080
            0000800000800000808AC69F0F71110000800000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008000
            0080B0D0B0000080000080000080000080000080B0D0B0000080000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0080000080000080000080000080000080000080000080000000}
          OnClick = SpeedButton4Click
        end
      end
      object PageControl2: TPageControl
        Left = 445
        Top = 0
        Width = 276
        Height = 318
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 2
        object TabSheet8: TTabSheet
          Caption = 'Categorias da Entidade'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 268
            Height = 290
            Align = alClient
            DataSource = dmEF.dsEntidadeGrupo
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'L_DESCRICAO'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Dados de Classifica'#231#227'o '
      ImageIndex = 4
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 187
        Align = alTop
        Caption = 'Dados de Sistemas'
        TabOrder = 0
        object Label38: TLabel
          Left = 8
          Top = 20
          Width = 29
          Height = 13
          Caption = 'Cargo'
        end
        object Label39: TLabel
          Left = 8
          Top = 44
          Width = 33
          Height = 13
          Caption = 'Filial Id'
        end
        object Label40: TLabel
          Left = 8
          Top = 68
          Width = 69
          Height = 13
          Caption = 'Departamento'
        end
        object Label41: TLabel
          Left = 480
          Top = 16
          Width = 57
          Height = 29
          AutoSize = False
          Caption = 'Conta Cont'#225'bil ID'
          WordWrap = True
        end
        object Label42: TLabel
          Left = 8
          Top = 92
          Width = 64
          Height = 39
          Caption = 'Classifica'#231#227'o da Natureza Jur'#237'dica'
          WordWrap = True
        end
        object Label56: TLabel
          Left = 8
          Top = 137
          Width = 73
          Height = 13
          Caption = 'Horas Cfg Trab'
        end
        object wwDBComboDlg1: TwwDBComboDlg
          Left = 80
          Top = 19
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg1CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CARGOID'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit32: TDBEdit
          Left = 152
          Top = 20
          Width = 321
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRICAOCARGO'
          DataSource = dmEF.dsEntidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 80
          Top = 43
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg2CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'FILIALID'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit35: TDBEdit
          Left = 152
          Top = 44
          Width = 321
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOMEFANTASIA'
          DataSource = dmEF.dsEntidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 80
          Top = 67
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg3CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'DEPARTAMENTOID'
          DataSource = dmEF.dsEntidade
          TabOrder = 4
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit36: TDBEdit
          Left = 152
          Top = 68
          Width = 321
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRICAODEPTO'
          DataSource = dmEF.dsEntidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit2: TDBEdit
          Left = 561
          Top = 18
          Width = 120
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTACONTABILID'
          DataSource = dmEF.dsEntidade
          TabOrder = 6
        end
        object wwDBComboDlg6: TwwDBComboDlg
          Left = 80
          Top = 91
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg6CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'NATUREZAJURIDICAID'
          DataSource = dmEF.dsEntidade
          TabOrder = 7
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit9: TDBEdit
          Left = 152
          Top = 92
          Width = 321
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NATUREZAJURIDICA'
          DataSource = dmEF.dsEntidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit37: TDBEdit
          Left = 152
          Top = 116
          Width = 321
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_CATEGJURIDICA'
          DataSource = dmEF.dsEntidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object wwDBComboDlg8: TwwDBComboDlg
          Left = 80
          Top = 136
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg8CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'HORASCFGTRABID'
          DataSource = dmEF.dsEntidade
          TabOrder = 10
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit49: TDBEdit
          Left = 152
          Top = 137
          Width = 321
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRICAOHORASCFGTRAB'
          DataSource = dmEF.dsEntidade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 187
        Width = 721
        Height = 131
        Align = alClient
        Caption = 'Pessoa F'#237'sica'
        TabOrder = 1
        object Label32: TLabel
          Left = 8
          Top = 23
          Width = 14
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit29
        end
        object Label33: TLabel
          Left = 280
          Top = 16
          Width = 86
          Height = 13
          Caption = 'RG Org'#227'o Emissor'
          FocusControl = DBEdit30
        end
        object Label34: TLabel
          Left = 8
          Top = 48
          Width = 52
          Height = 13
          Caption = 'Habilita'#231#227'o'
          FocusControl = DBEdit31
        end
        object Label35: TLabel
          Left = 280
          Top = 40
          Width = 95
          Height = 13
          Caption = 'Validade Habilita'#231#227'o'
        end
        object Label36: TLabel
          Left = 8
          Top = 72
          Width = 22
          Height = 13
          Caption = 'CRM'
          FocusControl = DBEdit33
        end
        object Label37: TLabel
          Left = 8
          Top = 96
          Width = 86
          Height = 13
          Caption = 'CR Org'#227'o Emissor'
          FocusControl = DBEdit34
        end
        object DBEdit29: TDBEdit
          Left = 107
          Top = 16
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = dmEF.dsEntidade
          TabOrder = 0
        end
        object DBEdit30: TDBEdit
          Left = 379
          Top = 17
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RGORGAOEMISSOR'
          DataSource = dmEF.dsEntidade
          TabOrder = 1
        end
        object DBEdit31: TDBEdit
          Left = 107
          Top = 42
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HABILITACAO'
          DataSource = dmEF.dsEntidade
          TabOrder = 2
        end
        object DBEdit33: TDBEdit
          Left = 107
          Top = 68
          Width = 199
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CRM'
          DataSource = dmEF.dsEntidade
          TabOrder = 4
        end
        object DBEdit34: TDBEdit
          Left = 107
          Top = 94
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CRMORGAOEMISSOR'
          DataSource = dmEF.dsEntidade
          TabOrder = 5
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 379
          Top = 43
          Width = 89
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'VALIDADEHABILITACAO'
          DataSource = dmEF.dsEntidade
          Epoch = 1950
          ShowButton = True
          TabOrder = 3
        end
      end
    end
    object tbshtVisoesDepto: TTabSheet
      Caption = 'Vis'#245'es dos Departamentos'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 401
        Height = 318
        ActivePage = TabSheet4
        Align = alLeft
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Departamentos Dispon'#237'veis'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 393
            Height = 290
            Align = alClient
            DataSource = dmEF.dsDepartamento
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = sbUmDeptoClick
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Visible = True
              end>
          end
        end
      end
      object Panel2: TPanel
        Left = 401
        Top = 0
        Width = 44
        Height = 318
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 1
        object sbTodosDepto: TSpeedButton
          Left = 8
          Top = 56
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            B6040000424DB604000000000000360000002800000017000000100000000100
            1800000000008004000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0000000080000080000080000080000080000080000080000080B0D0B0000080
            000080000080000080000080B0D0B00000800000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008000
            0080026B0371AA71000080000080000080000080026B0371AA71000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            800000800000800000800D801907820C418D41F0F6F00000800000800D801907
            820C418D41F0F6F0000080000080000080000080000080000000000080000080
            0000800000800000800000800000800000800D801910A81F098E11227E23D0E3
            D00000800D801910A81F098E11227E23D0E3D000008000008000008000008000
            0000000080288D5113841F11831E0F811B0E811B0D80190B7D140D80191AB232
            10A81F0C9A15127813A0C6A00D80191AB23210A81F0C9A15127813A0C6A00000
            800000800000800000000000802287414DE48043DB763FD77235CD6834CC672C
            C45727BF4E1FB73C1AB23210A81F0CA01502750371AA711FB73C1AB23210A81F
            0CA01502750371AA7100008000008000000000008024894153EA854DE48043DB
            763FD77235CD6834CC672CC45726BE4C1DB5391AB23210A81F0CA415027E0361
            A0611DB5391AB23210A81F0CA415027E0361A061000080000000000080258A41
            5AF28C53EA854DE48043DB763FD77235CD6834CC672CC45726BE4C1DB5391AB2
            3210A41D03730690BD9026BE4C1DB5391AB23210A41D03730690BD9000008000
            0000000080278C4130AE492EAC4728A64227A54021A03B1F9D3827B34E34CC67
            2CC45726BE4C18A72F036F11B0D0B034CC672CC45726BE4C18A72F036F11B0D0
            B000008000008000000000008000008000008000008000008000008000008000
            00801F9D3835CD6834CC671CA1372A8836D0E3D01F9D3835CD6834CC671CA137
            2A8836D0E3D00000800000800000800000000000800000800000800000800000
            8000008000008000008021A03B3FD77217932E298641D0E3D000008021A03B3F
            D77217932E298641D0E3D0000080000080000080000080000000000080000080
            000080000080000080000080000080000080229D3811831E5AA971F0F6F00000
            80000080229D3811831E5AA971F0F6F000008000008000008000008000008000
            00000000800000800000800000800000800000800000800000800F71118AC69F
            0000800000800000800000800F71118AC69F0000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008000
            0080B0D0B0000080000080000080000080000080B0D0B0000080000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0080000080000080000080000080000080000080000080000000}
          OnClick = sbTodosDeptoClick
        end
        object sbUmDepto: TSpeedButton
          Left = 8
          Top = 96
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            76030000424D7603000000000000360000002800000011000000100000000100
            1800000000004003000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000000080000080000080000080000080000080
            000080000080B0D0B00000800000800000800000800000800000800000800000
            8000000080000080000080000080000080000080000080000080026B0371AA71
            0000800000800000800000800000800000800000800000008000008000008000
            00800000800000800000800000800D801907820C418D41F0F6F0000080000080
            0000800000800000800000008000008000008000008000008000008000008000
            00800D801910A81F098E11227E23D0E3D0000080000080000080000080000000
            80288D5113841F11831E0F811B0E811B0D80190B7D140D80191AB23210A81F0C
            9A15127813A0C6A0000080000080000080000000802287414DE48043DB763FD7
            7235CD6834CC672CC45727BF4E1FB73C1AB23210A81F0CA01502750371AA7100
            00800000800000008024894153EA854DE48043DB763FD77235CD6834CC672CC4
            5726BE4C1DB5391AB23210A81F0CA415027E0361A06100008000000080258A41
            5AF28C53EA854DE48043DB763FD77235CD6834CC672CC45726BE4C1DB5391AB2
            3210A41D03730690BD9000008000000080278C4130AE492EAC4728A64227A540
            21A03B1F9D3827B34E34CC672CC45726BE4C18A72F036F11B0D0B00000800000
            80000000800000800000800000800000800000800000800000801F9D3835CD68
            34CC671CA1372A8836D0E3D00000800000800000800000008000008000008000
            008000008000008000008000008021A03B3FD77217932E298641D0E3D0000080
            0000800000800000800000008000008000008000008000008000008000008000
            0080229D3811831E5AA971F0F6F0000080000080000080000080000080000000
            800000800000800000800000800000800000800000800F71118AC69F00008000
            0080000080000080000080000080000080000000800000800000800000800000
            80000080000080000080B0D0B000008000008000008000008000008000008000
            0080000080000000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000}
          OnClick = sbUmDeptoClick
        end
        object sbRetornaUmDepto: TSpeedButton
          Left = 8
          Top = 136
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            76030000424D7603000000000000360000002800000011000000100000000100
            1800000000004003000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000000080000080000080000080000080000080
            000080000080B0D0B00000800000800000800000800000800000800000800000
            800000008000008000008000008000008000008000008071AA71026B03000080
            0000800000800000800000800000800000800000800000008000008000008000
            0080000080F0F6F0418D4107820C0D8019000080000080000080000080000080
            00008000008000008000000080000080000080000080D0E3D0227E23098E1110
            A81F0D8019000080000080000080000080000080000080000080000080000000
            80000080000080A0C6A01278130C9A1510A81F1AB2320D80190B7D140D80190E
            811B0F811B11831E13841F288D510000800000008000008071AA710275030CA0
            1510A81F1AB2321FB73C27BF4E2CC45734CC6735CD683FD77243DB764DE48022
            87410000800000008061A061027E030CA41510A81F1AB2321DB53926BE4C2CC4
            5734CC6735CD683FD77243DB764DE48053EA852489410000800000008090BD90
            03730610A41D1AB2321DB53926BE4C2CC45734CC6735CD683FD77243DB764DE4
            8053EA855AF28C258A4100008000000080000080B0D0B0036F1118A72F26BE4C
            2CC45734CC6727B34E1F9D3821A03B27A54028A6422EAC4730AE49278C410000
            8000000080000080000080D0E3D02A88361CA13734CC6735CD681F9D38000080
            0000800000800000800000800000800000800000800000008000008000008000
            0080D0E3D029864117932E3FD77221A03B000080000080000080000080000080
            00008000008000008000000080000080000080000080000080F0F6F05AA97111
            831E229D38000080000080000080000080000080000080000080000080000000
            800000800000800000800000800000800000808AC69F0F711100008000008000
            0080000080000080000080000080000080000000800000800000800000800000
            80000080000080000080B0D0B000008000008000008000008000008000008000
            0080000080000000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000}
          OnClick = sbRetornaUmDeptoClick
        end
        object sbRetornarTodosDepto: TSpeedButton
          Left = 8
          Top = 176
          Width = 29
          Height = 29
          Flat = True
          Glyph.Data = {
            B6040000424DB604000000000000360000002800000017000000100000000100
            1800000000008004000000000000000000000000000000000000000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0000000080000080000080000080000080000080000080000080B0D0B0000080
            000080000080000080000080B0D0B00000800000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008071
            AA71026B0300008000008000008000008071AA71026B03000080000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            80F0F6F0418D4107820C0D8019000080000080F0F6F0418D4107820C0D801900
            0080000080000080000080000080000080000080000080000000000080000080
            000080000080D0E3D0227E23098E1110A81F0D8019000080D0E3D0227E23098E
            1110A81F0D801900008000008000008000008000008000008000008000008000
            0000000080000080000080A0C6A01278130C9A1510A81F1AB2320D8019A0C6A0
            1278130C9A1510A81F1AB2320D80190B7D140D80190E811B0F811B11831E1384
            1F288D5100008000000000008000008071AA710275030CA01510A81F1AB2321F
            B73C71AA710275030CA01510A81F1AB2321FB73C27BF4E2CC45734CC6735CD68
            3FD77243DB764DE48022874100008000000000008061A061027E030CA41510A8
            1F1AB2321DB53961A061027E030CA41510A81F1AB2321DB53926BE4C2CC45734
            CC6735CD683FD77243DB764DE48053EA8524894100008000000000008090BD90
            03730610A41D1AB2321DB53926BE4C90BD9003730610A41D1AB2321DB53926BE
            4C2CC45734CC6735CD683FD77243DB764DE48053EA855AF28C258A4100008000
            0000000080000080B0D0B0036F1118A72F26BE4C2CC45734CC67B0D0B0036F11
            18A72F26BE4C2CC45734CC6727B34E1F9D3821A03B27A54028A6422EAC4730AE
            49278C41000080000000000080000080000080D0E3D02A88361CA13734CC6735
            CD681F9D38D0E3D02A88361CA13734CC6735CD681F9D38000080000080000080
            000080000080000080000080000080000000000080000080000080000080D0E3
            D029864117932E3FD77221A03B000080D0E3D029864117932E3FD77221A03B00
            0080000080000080000080000080000080000080000080000000000080000080
            000080000080000080F0F6F05AA97111831E229D38000080000080F0F6F05AA9
            7111831E229D3800008000008000008000008000008000008000008000008000
            00000000800000800000800000800000800000800000808AC69F0F7111000080
            0000800000800000808AC69F0F71110000800000800000800000800000800000
            8000008000008000000000008000008000008000008000008000008000008000
            0080B0D0B0000080000080000080000080000080B0D0B0000080000080000080
            0000800000800000800000800000800000000000800000800000800000800000
            8000008000008000008000008000008000008000008000008000008000008000
            0080000080000080000080000080000080000080000080000000}
          OnClick = sbRetornarTodosDeptoClick
        end
      end
      object PageControl5: TPageControl
        Left = 445
        Top = 0
        Width = 276
        Height = 318
        ActivePage = TabSheet9
        Align = alClient
        TabOrder = 2
        object TabSheet9: TTabSheet
          Caption = 'Departamentos Vis'#237'veis'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 268
            Height = 290
            Align = alClient
            DataSource = dmEF.dsEntidadeDepto
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_DEPTO'
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 29
    Width = 729
    Height = 85
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label14: TLabel
      Left = 9
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Entidade Id'
    end
    object Label16: TLabel
      Left = 84
      Top = 2
      Width = 50
      Height = 13
      Caption = 'CPF_CNPJ'
    end
    object Label5: TLabel
      Left = 214
      Top = 36
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit5
    end
    object Label1: TLabel
      Left = 6
      Top = 36
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      FocusControl = DBEdit4
    end
    object Label43: TLabel
      Left = 214
      Top = 2
      Width = 72
      Height = 13
      Caption = 'Inscr. Estadual'
      WordWrap = True
    end
    object Label44: TLabel
      Left = 358
      Top = 2
      Width = 74
      Height = 13
      Caption = 'Inscr. Municipal'
      WordWrap = True
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
      DataField = 'CPFCNPJ'
      DataSource = dmEF.dsEntidade
      TabOrder = 1
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 501
      Top = 3
      Width = 87
      Height = 44
      Caption = 'Tipo de Pessoa'
      Color = clBtnFace
      DataField = 'FISICAJURIDICA'
      DataSource = dmEF.dsEntidade
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      ParentBackground = True
      ParentColor = False
      TabOrder = 3
      Values.Strings = (
        'F'
        'J')
    end
    object DBEdit5: TDBEdit
      Left = 214
      Top = 48
      Width = 371
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dmEF.dsEntidade
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 6
      Top = 48
      Width = 203
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEFANTASIA'
      DataSource = dmEF.dsEntidade
      TabOrder = 2
    end
    object GroupBox3: TGroupBox
      Left = 589
      Top = 2
      Width = 132
      Height = 81
      Caption = 'Checks de Controle'
      TabOrder = 5
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 12
        Width = 119
        Height = 17
        Caption = 'Bloqueado Comercial'
        DataField = 'STATUSCOMERCIAL'
        DataSource = dmEF.dsEntidade
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 7
        Top = 28
        Width = 110
        Height = 17
        Caption = 'Bloqueado Financeiro'
        DataField = 'STATUSFINANCEIRO'
        DataSource = dmEF.dsEntidade
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 7
        Top = 45
        Width = 110
        Height = 17
        Caption = 'Contribuinte ICMS'
        DataField = 'CONTRIBUINTEICMS'
        DataSource = dmEF.dsEntidade
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 7
        Top = 62
        Width = 97
        Height = 17
        Caption = 'Desligado'
        DataField = 'DESLIGADO'
        DataSource = dmEF.dsEntidade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object DBEdit38: TDBEdit
      Left = 214
      Top = 15
      Width = 139
      Height = 21
      DataField = 'INSCRESTADUAL'
      DataSource = dmEF.dsEntidade
      TabOrder = 6
    end
    object DBEdit39: TDBEdit
      Left = 358
      Top = 15
      Width = 131
      Height = 21
      DataField = 'INSCRMUNICIPAL'
      DataSource = dmEF.dsEntidade
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 460
    Width = 729
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 729
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
          Width = 478
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 93
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsEntidade
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 492
    Width = 729
    Height = 19
    Panels = <>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 729
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 517
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 210
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 504
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 528
      Top = 0
      Width = 197
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 197
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        ContextItems.SmallIcons = False
        ContextItems = <>
        Items.CaptionOptions = coAll
        Items = <>
      end
      item
        Items = <
          item
            Caption = '&Ferramentas'
          end>
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = actImpEtiqueta
            Caption = 'I&mpress'#227'o Etiqueta'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 600
    Top = 148
    StyleName = 'XP Style'
    object actImpEtiqueta: TAction
      Category = 'Ferramentas'
      Caption = 'Impress'#227'o Etiqueta'
      Hint = 'Impress'#227'o da Etiqueta ANVISA'
      ImageIndex = 0
      OnExecute = actImpEtiquetaExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 596
    Top = 100
    Bitmap = {
      494C010101000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001002000000000000013
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000C0070000000000008003000000000000
      0001000000000000000100000000000000010000000000000000000000000000
      00000000000000008000000000000000C000000000000000E001000000000000
      E007000000000000F007000000000000F003000000000000F803000000000000
      FFFF00000000000000000000000000000000000000000000000000000000}
  end
  object cdsEtiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 104
  end
  object dsEtiqueta: TDataSource
    DataSet = cdsEtiqueta
    Left = 528
    Top = 149
  end
end
