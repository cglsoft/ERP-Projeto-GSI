object frmNaturezaOp: TfrmNaturezaOp
  Left = 72
  Top = 51
  Caption = 'Natureza de Opera'#231#227'o'
  ClientHeight = 550
  ClientWidth = 787
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 78
    Width = 787
    Height = 421
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados da Natureza de Opera'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 779
        Height = 393
        Align = alClient
        Caption = 'Dados da Natureza de Opera'#231#227'o'
        TabOrder = 0
        object Label3: TLabel
          Left = 7
          Top = 13
          Width = 85
          Height = 13
          Caption = 'Descr. do Usu'#225'rio'
        end
        object Label4: TLabel
          Left = 7
          Top = 37
          Width = 72
          Height = 13
          Caption = 'Descr. da Nota'
        end
        object Label5: TLabel
          Left = 7
          Top = 61
          Width = 76
          Height = 13
          Caption = 'Descr.Completa'
        end
        object Label6: TLabel
          Left = 7
          Top = 120
          Width = 78
          Height = 13
          Caption = 'Nat.Op.Retorno'
        end
        object Label7: TLabel
          Left = 7
          Top = 142
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object Label8: TLabel
          Left = 7
          Top = 206
          Width = 60
          Height = 13
          Caption = 'Sigla Nat.Op'
        end
        object Label10: TLabel
          Left = 8
          Top = 256
          Width = 74
          Height = 13
          Caption = 'Numero Padr'#227'o'
          FocusControl = DBEdit7
        end
        object DBEdit3: TDBEdit
          Left = 101
          Top = 13
          Width = 350
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAOOPERACAOUSUARIO'
          DataSource = dmEF.dsNaturezaOp
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 101
          Top = 37
          Width = 351
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAOOPERACAONOTA'
          DataSource = dmEF.dsNaturezaOp
          TabOrder = 1
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 101
          Top = 119
          Width = 59
          Height = 20
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'NATUREZAOPRETORNOID'
          DataSource = dmEF.dsNaturezaOp
          TabOrder = 3
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit8: TDBEdit
          Left = 163
          Top = 120
          Width = 288
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRNATRETORNO'
          DataSource = dmEF.dsNaturezaOp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object GroupBox4: TGroupBox
          Left = 454
          Top = 88
          Width = 167
          Height = 218
          Caption = 'Controles Internos'
          TabOrder = 11
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 11
            Width = 121
            Height = 17
            Caption = 'Venda Definitiva'
            DataField = 'VENDADEFINITIVA'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 36
            Width = 165
            Height = 17
            Caption = 'Custo M'#233'dio Unit'#225'rio (Venda)'
            DataField = 'CALCULAPRECOMEDIO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 49
            Width = 129
            Height = 17
            Caption = 'Util. Pe'#231'a em Empenho'
            DataField = 'UTILIZAEMPENHO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 7
            Top = 62
            Width = 97
            Height = 17
            Caption = 'Gera Duplicata'
            DataField = 'GERARDUPLICATA'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 7
            Top = 75
            Width = 123
            Height = 17
            Caption = 'Transf.para Consumo'
            DataField = 'TRANSFCONSUMO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox14: TDBCheckBox
            Left = 7
            Top = 88
            Width = 123
            Height = 17
            Caption = 'Cobertura Contratual'
            DataField = 'COBERTURACONTRATUAL'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox22: TDBCheckBox
            Left = 7
            Top = 101
            Width = 156
            Height = 17
            Caption = 'Entrada Pre'#231'o Transfer'#234'ncia'
            DataField = 'ENTRADAPRECOTRANSF'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox23: TDBCheckBox
            Left = 7
            Top = 113
            Width = 123
            Height = 17
            Caption = 'Entrada DIPJ'
            DataField = 'ENTRADADIPJ'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox24: TDBCheckBox
            Left = 7
            Top = 126
            Width = 123
            Height = 17
            Caption = 'Sa'#237'da DIPJ'
            DataField = 'SAIDADIPJ'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox17: TDBCheckBox
            Left = 7
            Top = 153
            Width = 123
            Height = 17
            Caption = 'Desmembr. Custo'
            DataField = 'DESMEMBRCUSTO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox30: TDBCheckBox
            Left = 7
            Top = 139
            Width = 97
            Height = 17
            Caption = 'Doc. Interno'
            DataField = 'DOCINTERNO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 10
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox32: TDBCheckBox
            Left = 7
            Top = 166
            Width = 145
            Height = 17
            Caption = 'Isento Inscri'#231#227'o Estadual'
            DataField = 'ISENTOINSCRICAOESTADUAL'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 11
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox33: TDBCheckBox
            Left = 7
            Top = 23
            Width = 89
            Height = 17
            Caption = 'Outras Sa'#237'das'
            DataField = 'OUTRASSAIDA'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 12
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox34: TDBCheckBox
            Left = 7
            Top = 179
            Width = 145
            Height = 17
            Caption = 'Contribuinte do ICMS'
            DataField = 'CONTRIBUINTEICMS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 13
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox35: TDBCheckBox
            Left = 7
            Top = 192
            Width = 145
            Height = 17
            Caption = 'Natureza de Servi'#231'os'
            DataField = 'NATUREZASERVICO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 14
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object wwDBComboDlg1: TwwDBComboDlg
          Left = 101
          Top = 143
          Width = 59
          Height = 20
          OnCustomDlg = wwDBComboDlg1CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'OBSERVACAOID'
          DataSource = dmEF.dsNaturezaOp
          TabOrder = 5
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBMemo1: TDBMemo
          Left = 163
          Top = 144
          Width = 288
          Height = 58
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRICAOOBSERVACAO'
          DataSource = dmEF.dsNaturezaOp
          ScrollBars = ssVertical
          TabOrder = 6
        end
        object DBEdit5: TDBEdit
          Left = 164
          Top = 206
          Width = 188
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRICAORESUMIDA'
          DataSource = dmEF.dsNaturezaOp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 101
          Top = 207
          Width = 59
          Height = 20
          OnCustomDlg = wwDBComboDlg2CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'SIGLANATUREZAID'
          DataSource = dmEF.dsNaturezaOp
          TabOrder = 7
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit6: TDBEdit
          Left = 164
          Top = 230
          Width = 286
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRICAOSIGLA'
          DataSource = dmEF.dsNaturezaOp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object GroupBox2: TGroupBox
          Left = 624
          Top = 0
          Width = 151
          Height = 239
          Caption = 'Imposto Federal'
          TabOrder = 14
          object DBCheckBox6: TDBCheckBox
            Left = 8
            Top = 16
            Width = 121
            Height = 17
            Caption = 'C'#225'lculo do PIS'
            DataField = 'CALCULOPIS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 8
            Top = 31
            Width = 129
            Height = 17
            Caption = 'C'#225'lculo COFINS'
            DataField = 'CALCULOCOFINS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 8
            Top = 79
            Width = 137
            Height = 17
            Caption = 'C'#225'lculo IPI'
            DataField = 'CALCULOIPI'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 8
            Top = 95
            Width = 97
            Height = 17
            Caption = 'Cr'#233'dito IPI'
            DataField = 'CREDITOIPI'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox10: TDBCheckBox
            Left = 8
            Top = 111
            Width = 141
            Height = 17
            Caption = 'IPI Base de C'#225'lc.do ICMS'
            DataField = 'IPIBASE'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 8
            Top = 127
            Width = 129
            Height = 17
            Caption = 'Frete IPI'
            DataField = 'FRETEIPI'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox12: TDBCheckBox
            Left = 8
            Top = 142
            Width = 82
            Height = 17
            Caption = 'Destaca IPI'
            DataField = 'DESTACAIPI'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox13: TDBCheckBox
            Left = 8
            Top = 158
            Width = 82
            Height = 17
            Caption = 'C'#225'lculo IRPJ'
            DataField = 'CALCULOIRPJ'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox15: TDBCheckBox
            Left = 8
            Top = 174
            Width = 125
            Height = 17
            Caption = 'Gera Mov.no Estoque'
            DataField = 'GERAMOVIMENTO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox16: TDBCheckBox
            Left = 8
            Top = 190
            Width = 138
            Height = 17
            Caption = 'Venda Fatur.Antecipado '
            DataField = 'VENDAFATANTECIPADO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox25: TDBCheckBox
            Left = 8
            Top = 47
            Width = 129
            Height = 17
            Caption = 'Cr'#233'dito do PIS'
            DataField = 'CREDITOPIS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 10
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox26: TDBCheckBox
            Left = 8
            Top = 63
            Width = 129
            Height = 17
            Caption = 'Cr'#233'dito do COFINS'
            DataField = 'CREDITOCOFINS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 11
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox31: TDBCheckBox
            Left = 8
            Top = 206
            Width = 138
            Height = 17
            Caption = 'Desp.Acess.Base ICMS'
            DataField = 'DESPACESSORIABASEICMS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 12
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 453
          Top = 0
          Width = 168
          Height = 89
          Caption = 'Movimento do Estoque'
          DataField = 'MOVIMENTOESTOQUE'
          DataSource = dmEF.dsNaturezaOp
          Items.Strings = (
            'Normal '
            'Em Terceiros'
            'De Terceiros'
            'Devolu'#231#227'o'
            'Quarentena')
          ParentBackground = True
          TabOrder = 10
          Values.Strings = (
            'N'
            'E'
            'D'
            'V'
            'Q')
        end
        object GroupBox3: TGroupBox
          Left = 624
          Top = 278
          Width = 149
          Height = 101
          Caption = 'Imposto Estadual'
          TabOrder = 12
          object Label9: TLabel
            Left = 7
            Top = 16
            Width = 85
            Height = 13
            Caption = 'Sit. Trib. Estadual'
          end
          object DBCheckBox18: TDBCheckBox
            Left = 8
            Top = 32
            Width = 84
            Height = 17
            Caption = 'C'#225'lculo ICMS'
            DataField = 'CALCULOICMS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox19: TDBCheckBox
            Left = 8
            Top = 48
            Width = 84
            Height = 17
            Caption = 'Cr'#233'dito ICMS'
            DataField = 'CREDITOICMS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox21: TDBCheckBox
            Left = 8
            Top = 64
            Width = 137
            Height = 17
            Caption = 'Incentivo Icms(Prodepe)'
            DataField = 'INCENTIVOICMS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBComboBox1: TDBComboBox
            Left = 98
            Top = 12
            Width = 45
            Height = 21
            DataField = 'SITTRIBESTADUAL'
            DataSource = dmEF.dsNaturezaOp
            ItemHeight = 13
            Items.Strings = (
              '00'
              '10'
              '20'
              '30'
              '40'
              '41'
              '50'
              '51'
              '60'
              '70'
              '90')
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 624
          Top = 239
          Width = 151
          Height = 40
          Caption = 'Imposto Municipal'
          TabOrder = 13
          object DBCheckBox20: TDBCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = 'C'#225'lculo do ISS'
            DataField = 'CALCULOISS'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object wwDBRichEdit3: TwwDBRichEdit
          Left = 101
          Top = 63
          Width = 351
          Height = 50
          ScrollBars = ssVertical
          AutoURLDetect = False
          Color = clWhite
          DataField = 'DESCRICAOCOMPLETA'
          DataSource = dmEF.dsNaturezaOp
          PrintJobName = 'Delphi 7'
          TabOrder = 2
          EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
          EditorCaption = 'Edit Rich Text'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 0
          EditorPosition.Height = 0
          MeasurementUnits = muInches
          PrintMargins.Top = 1.000000000000000000
          PrintMargins.Bottom = 1.000000000000000000
          PrintMargins.Left = 1.000000000000000000
          PrintMargins.Right = 1.000000000000000000
          PrintHeader.VertMargin = 0.500000000000000000
          PrintHeader.Font.Charset = DEFAULT_CHARSET
          PrintHeader.Font.Color = clWindowText
          PrintHeader.Font.Height = -11
          PrintHeader.Font.Name = 'MS Sans Serif'
          PrintHeader.Font.Style = []
          PrintFooter.VertMargin = 0.500000000000000000
          PrintFooter.Font.Charset = DEFAULT_CHARSET
          PrintFooter.Font.Color = clWindowText
          PrintFooter.Font.Height = -11
          PrintFooter.Font.Name = 'MS Sans Serif'
          PrintFooter.Font.Style = []
          RichEditVersion = 2
          Data = {
            760000007B5C727466315C616E73695C616E7369637067313235325C64656666
            305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C
            666368617273657430205461686F6D613B7D7D0D0A5C766965776B696E64345C
            7563315C706172645C66305C667331365C7061720D0A7D0D0A00}
        end
        object GroupBox9: TGroupBox
          Left = 454
          Top = 312
          Width = 167
          Height = 67
          Caption = ' Situa'#231#227'o Tribut'#225'ria Federal '
          TabOrder = 15
          object DBCheckBox27: TDBCheckBox
            Left = 10
            Top = 16
            Width = 89
            Height = 16
            Caption = 'Tributado'
            DataField = 'TRIBUTADO'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox28: TDBCheckBox
            Left = 10
            Top = 32
            Width = 89
            Height = 16
            Caption = 'Suspens'#227'o IPI'
            DataField = 'SUSPENSAOIPI'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox29: TDBCheckBox
            Left = 10
            Top = 48
            Width = 89
            Height = 16
            Caption = 'Isen'#231#227'o IPI'
            DataField = 'ISENTOIPI'
            DataSource = dmEF.dsNaturezaOp
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object DBEdit7: TDBEdit
          Left = 101
          Top = 256
          Width = 82
          Height = 21
          DataField = 'NUMPADRAO'
          DataSource = dmEF.dsNaturezaOp
          TabOrder = 16
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Empresas'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 401
        Top = 0
        Width = 44
        Height = 393
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
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
        Width = 334
        Height = 393
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'Empresas Ativas'
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 326
            Height = 365
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmEF.dsNaturezaEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = SpeedButton2Click
          end
        end
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 401
        Height = 393
        ActivePage = TabSheet4
        Align = alLeft
        TabOrder = 2
        object TabSheet4: TTabSheet
          Caption = 'Selecione as empresas dispon'#237'veis'
          object dbgrdPadraoPesquisa: TDBGrid
            Left = 0
            Top = 0
            Width = 393
            Height = 365
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmEF.dsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
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
                FieldName = 'EMPRESAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEFANTASIA'
                Width = 182
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPF_CNPJ'
                Width = 64
                Visible = True
              end>
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 32
    Width = 787
    Height = 46
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 71
      Height = 13
      Caption = 'Nat. Opera'#231#227'o'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 94
      Top = 4
      Width = 39
      Height = 13
      Caption = 'C.F.O.P'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 18
      Width = 75
      Height = 21
      Color = clScrollBar
      DataField = 'NATUREZAOPID'
      DataSource = dmEF.dsNaturezaOp
      ReadOnly = True
      TabOrder = 0
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 169
      Top = 3
      Width = 152
      Height = 39
      Caption = 'Tipo de Movimento'
      Columns = 2
      DataField = 'TIPOMOVIMENTO'
      DataSource = dmEF.dsNaturezaOp
      Items.Strings = (
        'Entrada'
        'Sa'#237'da')
      ParentBackground = True
      TabOrder = 1
      Values.Strings = (
        'E'
        'S')
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 18
      Width = 68
      Height = 21
      DataField = 'CFOP'
      DataSource = dmEF.dsNaturezaOp
      TabOrder = 2
    end
  end
  object tmbEdicaoTop1: TtmbEdicaoTop
    Tag = 255
    Left = 0
    Top = 0
    Width = 787
    Height = 32
    AutoSize = True
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 783
      end>
    FixedSize = True
    TtmbCria = True
    TtmbFormulario = Owner
  end
  object Panel1: TPanel
    Left = 0
    Top = 499
    Width = 787
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 787
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
          Width = 538
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 91
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsNaturezaOp
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 531
    Width = 787
    Height = 19
    Panels = <>
  end
end
