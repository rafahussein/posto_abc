object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Posto ABC'
  ClientHeight = 626
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object pc_menus: TPageControl
    Left = 200
    Top = 42
    Width = 865
    Height = 584
    ActivePage = ts_abastecimento
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    ExplicitWidth = 861
    ExplicitHeight = 583
    object ts_abastecimento: TTabSheet
      Caption = 'Abastecimento'
      OnShow = ts_abastecimentoShow
      object gp_abastecimento: TGridPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 551
        Align = alClient
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = pnl_top_abastecimento
            Row = 0
          end
          item
            Column = 0
            Control = pnl_bottom_abastecimento
            Row = 1
          end>
        RowCollection = <
          item
            Value = 35.613474811991350000
          end
          item
            Value = 64.386525188008660000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        ExplicitWidth = 853
        ExplicitHeight = 550
        object pnl_top_abastecimento: TPanel
          Left = 1
          Top = 1
          Width = 855
          Height = 196
          Margins.Top = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 851
          ExplicitHeight = 195
          object pnl_menu_superior_abastecimento: TPanel
            Left = 0
            Top = 0
            Width = 855
            Height = 38
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 851
            object dbn_abastecimento: TDBNavigator
              Left = 7
              Top = 2
              Width = 280
              Height = 33
              DataSource = ds_abastecimento
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel]
              TabOrder = 0
              OnClick = dbn_abastecimentoClick
            end
          end
          object gb_abastecimento: TGroupBox
            Left = 0
            Top = 38
            Width = 855
            Height = 158
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 851
            ExplicitHeight = 157
            object Label1: TLabel
              Left = 320
              Top = 9
              Width = 68
              Height = 15
              Caption = 'Valor a pagar'
            end
            object Label2: TLabel
              Left = 320
              Top = 57
              Width = 29
              Height = 15
              Caption = 'Litros'
            end
            object Label3: TLabel
              Left = 320
              Top = 112
              Width = 74
              Height = 15
              Caption = 'Pre'#231'o do Litro'
            end
            object sp_pesquisar_bomba: TSpeedButton
              Left = 89
              Top = 24
              Width = 23
              Height = 24
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCBEBAB88F8480887D77887D77887D
                77887D77887D77887D77887D77887D77887D77887D77887D77887D77908681C0
                BCBAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE8E7E660544C92735ABD926DC79972C79972C799
                72C79972C79972C79972C79972C79972C79972C79972C79972C79972BD926D91
                725A62554EE9E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFDFCFC60544CC1946FBE9A7DA99D94B7B1AEC4C0BCC4C0
                BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCB7B1AEA99D94BE
                9A7DC1946E62554EFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFBDB9B793745BBE9A7DC6C3C0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5
                C2BFBE9A7D91725ABFBBB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF8D837FBD926DAEA198FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFF
                FFFFA99D94BD926D8D847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871B8B3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0F179849D6D7A94FAFAFAFF
                FFFFB4AEACC59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0F17886A271A1E979859DFDFDFDFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED79869F71A1E97886A2EFEEEFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFFFFFFFFDFC
                FCD2CCC6CDC6C1F9F8F7FFFFFF7D83945873A07886A2F1F0F1FFFFFFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFB1AEA67792
                8D5EA5AD5DA7AE7598949390885B59607E8595ECEBECFFFFFFFFFFFFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFB6B4AD6AA8A9849C
                96D0C2AED6C6B28F9F965FA4A9939088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFF7E958F7F9C98F1DF
                C7F1DFC7F1DFC7F1DFC78F9F97759894F9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFECEAE8C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFF6F4F26D9C9BAEAC9EF1DF
                C7F1DFC7F1DFC7F1DFC7D6C7B35DA6AECBC5BFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBDB8B7C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFF8F6F5709D9BA7A99BF1DF
                C7F1DFC7F1DFC7F1DFC7CFC1AE5EA6ACD1CBC5FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFDDDAD9C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFF82928B769C9BF0DE
                C6F1DFC7F1DFC7F1DFC7849B9677928DFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFCCC9C7C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFCAC5BF6F9B9A769C
                9BA7A89BAEAC9E7F9D9869A7A9B1AEA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF8F6F5C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871B8B3AFFFFFFFFFFFFFFFFFFFCAC5BF8292
                8B709D9B6C9A997E958FB5B3ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFCF9F6C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF8D837FBD926DADA097FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9F8F7F6F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF2E5D9BD926D8E8580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFBCB8B793745BBC9A7CC6C3C1FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
                FCFADAB28F92735ABEBAB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFDFCFC5F514BC1946FBC9A7CAEA198BCB6B2C4C0BCC4C0
                BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCD2CCC9F1E3D6DA
                B28FC1946E60544CFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE7E6E65F514B94735BBE936EC79972C79972C799
                72C79972C79972C79972C79972C79972C79972C79972C79972C79972BD926D93
                745B60544CE8E7E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCBCB8B78E8580887D77887D77887D
                77887D77887D77887D77887D77887D77887D77887D77887D77887D778E8580BD
                B9B7FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = sp_pesquisar_bombaClick
            end
            object edt_desc_bomba_abastecimento: TLabeledEdit
              Left = 113
              Top = 25
              Width = 185
              Height = 23
              EditLabel.Width = 38
              EditLabel.Height = 15
              EditLabel.Caption = 'Bomba'
              Enabled = False
              TabOrder = 0
              Text = ''
            end
            object edt_id_bomba_abastecimento: TLabeledEdit
              Left = 16
              Top = 25
              Width = 73
              Height = 23
              EditLabel.Width = 67
              EditLabel.Height = 15
              EditLabel.Caption = 'Identificador'
              Enabled = False
              TabOrder = 1
              Text = ''
            end
            object rg_tipo_de_abastecimento: TRadioGroup
              Left = 16
              Top = 97
              Width = 282
              Height = 54
              Caption = 'Tipo de abastecimento'
              Columns = 2
              Enabled = False
              Items.Strings = (
                'Litros'
                'Valor')
              TabOrder = 2
              OnClick = rg_tipo_de_abastecimentoClick
            end
            object edt_valor_a_pagar: TEdit
              Left = 320
              Top = 25
              Width = 121
              Height = 23
              Alignment = taRightJustify
              Enabled = False
              TabOrder = 3
              Text = '0,00'
              OnChange = edt_valor_a_pagarChange
              OnKeyPress = edt_valor_a_pagarKeyPress
            end
            object edt_litros: TEdit
              Left = 320
              Top = 74
              Width = 121
              Height = 23
              Alignment = taRightJustify
              Enabled = False
              TabOrder = 4
              Text = '0,00'
              OnChange = edt_litrosChange
              OnKeyPress = edt_litrosKeyPress
            end
            object edt_preco_litro: TEdit
              Left = 320
              Top = 128
              Width = 121
              Height = 23
              Alignment = taRightJustify
              Enabled = False
              TabOrder = 5
              Text = '0,00'
            end
            object edt_tipo_combustivel: TLabeledEdit
              Left = 16
              Top = 68
              Width = 282
              Height = 23
              EditLabel.Width = 102
              EditLabel.Height = 15
              EditLabel.Caption = 'Tipo de combutivel'
              Enabled = False
              TabOrder = 6
              Text = ''
            end
          end
        end
        object pnl_bottom_abastecimento: TPanel
          Left = 1
          Top = 197
          Width = 855
          Height = 353
          Margins.Top = 0
          Align = alClient
          TabOrder = 1
          ExplicitTop = 196
          ExplicitWidth = 851
          object dbg_abastecimento: TDBGrid
            Left = 1
            Top = 1
            Width = 853
            Height = 351
            Align = alClient
            DataSource = ds_abastecimento
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
      end
    end
    object ts_tanques: TTabSheet
      Caption = 'Tanques'
      ImageIndex = 1
      OnShow = ts_tanquesShow
      object gp_tanques: TGridPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 551
        Align = alClient
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = pnl_top
            Row = 0
          end
          item
            Column = 0
            Control = pnl_bottom
            Row = 1
          end>
        RowCollection = <
          item
            Value = 35.613474811991350000
          end
          item
            Value = 64.386525188008660000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        object pnl_top: TPanel
          Left = 1
          Top = 1
          Width = 855
          Height = 196
          Margins.Top = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnl_menu_superior: TPanel
            Left = 0
            Top = 0
            Width = 855
            Height = 38
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object dbn_tanque: TDBNavigator
              Left = 8
              Top = 3
              Width = 291
              Height = 33
              DataSource = ds_tanque
              VisibleButtons = [nbInsert, nbPost, nbCancel]
              TabOrder = 0
              OnClick = dbn_tanqueClick
            end
          end
          object gb_tanque_campos: TGroupBox
            Left = 0
            Top = 38
            Width = 855
            Height = 158
            Align = alClient
            TabOrder = 1
            object edt_descricao_tanque: TLabeledEdit
              Left = 8
              Top = 34
              Width = 365
              Height = 23
              EditLabel.Width = 51
              EditLabel.Height = 15
              EditLabel.Caption = 'Descri'#231#227'o'
              Enabled = False
              TabOrder = 0
              Text = ''
            end
            object rg_tipo_de_combustivel: TRadioGroup
              Left = 8
              Top = 75
              Width = 365
              Height = 54
              Caption = 'Tipo de combustivel'
              Columns = 2
              Enabled = False
              ItemIndex = 0
              Items.Strings = (
                'Gasolina'
                'Ol'#233'o Diesel')
              TabOrder = 1
            end
          end
        end
        object pnl_bottom: TPanel
          Left = 1
          Top = 197
          Width = 855
          Height = 353
          Margins.Top = 0
          Align = alClient
          TabOrder = 1
          object dbg_tanque: TDBGrid
            Left = 1
            Top = 1
            Width = 853
            Height = 351
            Align = alClient
            DataSource = ds_tanque
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
      end
    end
    object ts_bombas: TTabSheet
      Caption = 'Bombas'
      ImageIndex = 2
      OnShow = ts_bombasShow
      object gp_bomba: TGridPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 551
        Align = alClient
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = pnl_bottom_bomba
            Row = 0
          end
          item
            Column = 0
            Control = pnl_top_bomba
            Row = 1
          end>
        RowCollection = <
          item
            Value = 35.613474811991350000
          end
          item
            Value = 64.386525188008660000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        object pnl_bottom_bomba: TPanel
          Left = 1
          Top = 1
          Width = 855
          Height = 196
          Margins.Top = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnl_menu_superior_bomba: TPanel
            Left = 0
            Top = 0
            Width = 855
            Height = 38
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object dbn_bomba: TDBNavigator
              Left = 10
              Top = 3
              Width = 291
              Height = 33
              DataSource = ds_bomba
              VisibleButtons = [nbInsert, nbPost, nbCancel]
              TabOrder = 0
              OnClick = dbn_bombaClick
            end
          end
          object gb_bomba_campos: TGroupBox
            Left = 0
            Top = 38
            Width = 855
            Height = 158
            Align = alClient
            TabOrder = 1
            object sb_pesquisar_tanque: TSpeedButton
              Left = 88
              Top = 92
              Width = 23
              Height = 24
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCBEBAB88F8480887D77887D77887D
                77887D77887D77887D77887D77887D77887D77887D77887D77887D77908681C0
                BCBAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE8E7E660544C92735ABD926DC79972C79972C799
                72C79972C79972C79972C79972C79972C79972C79972C79972C79972BD926D91
                725A62554EE9E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFDFCFC60544CC1946FBE9A7DA99D94B7B1AEC4C0BCC4C0
                BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCB7B1AEA99D94BE
                9A7DC1946E62554EFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFBDB9B793745BBE9A7DC6C3C0FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5
                C2BFBE9A7D91725ABFBBB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF8D837FBD926DAEA198FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFF
                FFFFA99D94BD926D8D847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871B8B3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0F179849D6D7A94FAFAFAFF
                FFFFB4AEACC59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0F17886A271A1E979859DFDFDFDFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED79869F71A1E97886A2EFEEEFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFFFFFFFFDFC
                FCD2CCC6CDC6C1F9F8F7FFFFFF7D83945873A07886A2F1F0F1FFFFFFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFFFFFFFB1AEA67792
                8D5EA5AD5DA7AE7598949390885B59607E8595ECEBECFFFFFFFFFFFFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFB6B4AD6AA8A9849C
                96D0C2AED6C6B28F9F965FA4A9939088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBAB5B4C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFF7E958F7F9C98F1DF
                C7F1DFC7F1DFC7F1DFC78F9F97759894F9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFECEAE8C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFF6F4F26D9C9BAEAC9EF1DF
                C7F1DFC7F1DFC7F1DFC7D6C7B35DA6AECBC5BFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFBDB8B7C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFF8F6F5709D9BA7A99BF1DF
                C7F1DFC7F1DFC7F1DFC7CFC1AE5EA6ACD1CBC5FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFDDDAD9C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFF82928B769C9BF0DE
                C6F1DFC7F1DFC7F1DFC7849B9677928DFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFCCC9C7C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871BAB5B4FFFFFFFFFFFFCAC5BF6F9B9A769C
                9BA7A89BAEAC9E7F9D9869A7A9B1AEA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF8F6F5C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF847874C59871B8B3AFFFFFFFFFFFFFFFFFFFCAC5BF8292
                8B709D9B6C9A997E958FB5B3ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFCF9F6C59871847874FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF8D837FBD926DADA097FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF9F8F7F6F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF2E5D9BD926D8E8580FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFBCB8B793745BBC9A7CC6C3C1FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
                FCFADAB28F92735ABEBAB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFDFCFC5F514BC1946FBC9A7CAEA198BCB6B2C4C0BCC4C0
                BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCC4C0BCD2CCC9F1E3D6DA
                B28FC1946E60544CFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE7E6E65F514B94735BBE936EC79972C79972C799
                72C79972C79972C79972C79972C79972C79972C79972C79972C79972BD926D93
                745B60544CE8E7E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCBCB8B78E8580887D77887D77887D
                77887D77887D77887D77887D77887D77887D77887D77887D77887D778E8580BD
                B9B7FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = sb_pesquisar_tanqueClick
            end
            object edt_descricao_bomba: TLabeledEdit
              Left = 16
              Top = 43
              Width = 365
              Height = 23
              EditLabel.Width = 51
              EditLabel.Height = 15
              EditLabel.Caption = 'Descri'#231#227'o'
              Enabled = False
              TabOrder = 0
              Text = ''
            end
            object edt_decricao_tanque: TLabeledEdit
              Left = 111
              Top = 94
              Width = 268
              Height = 23
              EditLabel.Width = 38
              EditLabel.Height = 15
              EditLabel.Caption = 'Tanque'
              Enabled = False
              ReadOnly = True
              TabOrder = 1
              Text = ''
            end
            object edt_id_tanque: TLabeledEdit
              Left = 16
              Top = 94
              Width = 73
              Height = 23
              EditLabel.Width = 67
              EditLabel.Height = 15
              EditLabel.Caption = 'Identificador'
              Enabled = False
              ReadOnly = True
              TabOrder = 2
              Text = ''
            end
          end
        end
        object pnl_top_bomba: TPanel
          Left = 1
          Top = 197
          Width = 855
          Height = 353
          Margins.Top = 0
          Align = alClient
          TabOrder = 1
          object dbg_bomba: TDBGrid
            Left = 1
            Top = 1
            Width = 853
            Height = 351
            Align = alClient
            DataSource = ds_bomba
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
      end
    end
    object ts_relatorio: TTabSheet
      Cursor = crHandPoint
      Caption = 'Relat'#243'rio'
      ImageIndex = 3
      OnShow = ts_relatorioShow
      object GroupBox1: TGroupBox
        Left = 3
        Top = 0
        Width = 285
        Height = 136
        Caption = 'Defina o periodo'
        TabOrder = 0
        object LabelDataInicial: TLabel
          Left = 46
          Top = 26
          Width = 58
          Height = 15
          Caption = 'Data Inicial'
        end
        object LabelDataFinal: TLabel
          Left = 180
          Top = 26
          Width = 52
          Height = 15
          Caption = 'Data Final'
        end
        object Label4: TLabel
          Left = 135
          Top = 47
          Width = 18
          Height = 15
          Caption = 'At'#233
        end
        object img_impressao_relatorio: TImage
          Left = 112
          Top = 82
          Width = 46
          Height = 48
          Cursor = crHandPoint
          Hint = 'Gerar Relat'#243'rio'
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
            003008060000005702F987000000097048597300000B1300000B1301009A9C18
            0000028B4944415478DAEDD74F68D3501C07F06FB7B6B6D15585767F7473EEA2
            132F3AB4073DB89B0E4F2213F1A017110419C2702AA8E041C493C2F0A428E861
            BD280E075B3DB86E93A9038716FC030EB7AE6BB5B66AED9FA46DD2D6BC0D8476
            B1CDD6DA97C1FBDEF2F2F2924F782FEF171D567874B41F80018A75B83591CCFE
            A77BDF386B5F7561450238A30E7C2A5B160415C0812D7A8CCDA4112F03820AE0
            D0760304315B160435004939105401E5405007948AD004A014846600CB45680A
            B01C84E600F9081950F019699612AAC2000CC0000CB0348027C0E3E35C147321
            1E1141C2871DC710D7D7C36FDA85A9D51DF099EDDA04FC8AA530F42680D9209F
            D33ED37638E7D86FB263D876151143937600E46D3F1AF723914A2F3A970F2049
            54ADC3507D2FBE9A76D20784E3221E3C9F85909414CF2B0116106BF178631F7E
            1B36D1053846BCF0E44D1B350012BF7937FA1BEED30378BEF3708C7A0B5E5F08
            40D2BFE1DEFCBAA002189417AD7B3A5C12E0BDE50846AD57E800EE38A7F1339A
            2A091036B6A0AFF1291DC0CD279F9192322501C42A0E77374F68177031EAC0C1
            17D781ACF23092D982C1DB413A00355388A42B3E80CEB14BD0651663630D5B31
            7CCD4D07E09C0CE0ED9770B121E67322E9C2495737746931A7DDD37E0AEEE3BD
            7400E4FB4FF601B5E9145FE18CAB0BD562E26FDB78CF33FC68DD47074042F601
            B21FA84D87F40EE7474E439F8C21B4AD1D2FCF390BF6AF4829F1502E25F87F94
            124AD99B99C2E5C91EBCEE1E006F6BA10B20F18504B998F3415028E694623656
            E3E89E3AD45A6B8AF6AD60392DCA8BFA5BD1E9D45CCB617F5B1DD6AF31AAC256
            FE872628E0933702AFBCC0A3C2C2B4B2707A345A39B436D5A0D9C62D6538F64B
            C9000CC0000C4019A0F53000EDFC01D8CCDB407D07B3000000000049454E44AE
            426082}
          OnClick = img_impressao_relatorioClick
        end
        object dpd_data_inicio: TDateTimePicker
          Left = 14
          Top = 43
          Width = 107
          Height = 24
          Date = 45621.000000000000000000
          Time = 0.517110393520852100
          TabOrder = 0
        end
        object dpd_data_final: TDateTimePicker
          Left = 164
          Top = 43
          Width = 107
          Height = 24
          Date = 45621.000000000000000000
          Time = 0.517110393520852100
          TabOrder = 1
        end
      end
    end
    object ts_configuracao: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 4
      OnShow = ts_configuracaoShow
      object gp_configuracao: TGridPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 551
        Align = alClient
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = pnl_top_configuracao
            Row = 0
          end
          item
            Column = 0
            Control = pnl_bottom_configuracao
            Row = 1
          end>
        RowCollection = <
          item
            Value = 35.613474811991350000
          end
          item
            Value = 64.386525188008660000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        object pnl_top_configuracao: TPanel
          Left = 1
          Top = 1
          Width = 855
          Height = 196
          Margins.Top = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnl_menu_superior_configuracao: TPanel
            Left = 0
            Top = 0
            Width = 855
            Height = 38
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object dbn_configuracao: TDBNavigator
              Left = 10
              Top = 3
              Width = 288
              Height = 33
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
            end
          end
          object gb_configuracao: TGroupBox
            Left = 0
            Top = 38
            Width = 855
            Height = 158
            Align = alClient
            Caption = 'Valor litro do '#243'leo diesel'
            TabOrder = 1
            object LabeledEdit1: TLabeledEdit
              Left = 10
              Top = 51
              Width = 121
              Height = 23
              EditLabel.Width = 113
              EditLabel.Height = 15
              EditLabel.Caption = 'Valor litro da gasolina'
              Enabled = False
              TabOrder = 0
              Text = '0,00'
            end
            object LabeledEdit2: TLabeledEdit
              Left = 162
              Top = 51
              Width = 121
              Height = 23
              EditLabel.Width = 113
              EditLabel.Height = 15
              EditLabel.Caption = 'Valor litro da gasolina'
              Enabled = False
              TabOrder = 1
              Text = '0,00'
            end
            object LabeledEdit3: TLabeledEdit
              Left = 314
              Top = 51
              Width = 121
              Height = 23
              EditLabel.Width = 90
              EditLabel.Height = 15
              EditLabel.Caption = 'Valor do imposto'
              Enabled = False
              TabOrder = 2
              Text = '0,00'
            end
          end
        end
        object pnl_bottom_configuracao: TPanel
          Left = 1
          Top = 197
          Width = 855
          Height = 353
          Margins.Top = 0
          Align = alClient
          TabOrder = 1
          object dbg_configuracao: TDBGrid
            Left = 1
            Top = 1
            Width = 853
            Height = 351
            Align = alClient
            DataSource = ds_configuracacao
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = 12477460
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1061
    object imgMenu: TImage
      Left = 10
      Top = 4
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF40000002B744558744372656174696F6E2054696D65
        0053756E20322041756720323031352031373A30353A3430202D30363030AB9D
        78EE0000000774494D4507DF0802160936B3167602000000097048597300002E
        2300002E230178A53F760000000467414D410000B18F0BFC61050000003B4944
        415478DAEDD3310100200C0341EA5F3454020BA1C3BD81DC925A9F2B00809180
        DD3D19EB00AE00C9000066BE00201900C0CC1700240300003859BE2421B37CDF
        370000000049454E44AE426082}
      OnClick = imgMenuClick
    end
    object lblTitle: TLabel
      Left = 68
      Top = 9
      Width = 78
      Height = 21
      Caption = 'Posto ABC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object sv_menu_lateral: TSplitView
    Left = 0
    Top = 42
    Width = 200
    Height = 584
    CloseStyle = svcCompact
    Color = 5855577
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 2
    ExplicitHeight = 583
    object cat_menu: TCategoryButtons
      Left = 0
      Top = -20
      Width = 194
      Height = 229
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 40
      ButtonWidth = 100
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Color = clNone
          Collapsed = False
          Items = <
            item
              Caption = '      Abastecimento'
              ImageIndex = 2
              OnClick = cat_menuCategories0Items0Click
            end
            item
              Caption = '     Tanques'
              ImageIndex = 3
              OnClick = cat_menuCategories0Items1Click
            end
            item
              Caption = '     Bombas'
              ImageIndex = 1
              OnClick = cat_menuCategories0Items2Click
            end
            item
              Caption = '     Relat'#243'rio'
              ImageIndex = 4
              OnClick = cat_menuCategories0Items3Click
            end
            item
              Caption = '     Configura'#231#245'es'
              ImageIndex = 5
              OnClick = cat_menuCategories0Items4Click
            end>
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      HotButtonColor = 12477460
      Images = imgIcons
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
    end
  end
  object imgIcons: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 64
    Top = 276
    Bitmap = {
      494C010106008000040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
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
      0000000000000000000002020219181919542B2C2C6F2B2C2C6F2B2C2C6F2B2C
      2C6F2B2C2C6F2B2C2C6F2B2C2C6F2B2C2C6F2B2C2C6F2B2C2C6F2B2C2C6F2B2C
      2C6F2B2C2C6F2B2C2C6F2B2C2C6F2B2C2C6F1718185301020218000000000000
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
      0000000000000D0D0E3E8C9090C8999D9ED1999D9ED1999D9ED1999D9ED1999D
      9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D
      9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED18B8F8FC70D0D0D3D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202021D1717175121222262212222622122226221222262212222622122
      2262212222622122226221222262212222622122226221222262212222622122
      2262212222622122226221222262212222622122226221222262171717510202
      021D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006828586C15D6060A30202021A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202021A5E6060A4818485C00000
      0005000000000000000000000000000000000000000000000000000000001A1B
      1B58929698CD7D8081BD737576B5737576B5737576B5737576B5737576B57375
      76B5737576B5737576B5737576B5737576B5737576B5737576B5737576B57375
      76B5737576B5737576B5737576B5737576B5737576B5737576B57D8081BD9296
      98CD191A1A560000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005060629999D9ED10E0E0E40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0F41999D9ED10505
      05280000000000000000000000000000000000000000000000000303031E9296
      98CD171818530000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001819
      1954929698CD0202021D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001718185321222262000000000000
      000008090933999D9ED108090933000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090934999D9ED10909
      093400000000000000000000000000000000000000000000000016171750797E
      7EBB000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D0A0B0B380A0B0B380000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7F7FBC1616165000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021222262999D9ED1212222620000
      0000000000092122226200000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090934999D9ED10909
      09340000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000393A3B80999D9ED1999D9ED1393A3B80000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021222262171818520000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090934999D9ED10909
      09340000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000000000000000000003000000000000
      00000000000000000000686A6BAC2728286B2728286B686A6BAC000000000000
      0000000000000000000000000003000000000000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000009090934999D9ED10909
      09340000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF0000000000000000000000000000000001010112686A6BAC636566A80505
      05260000000000000007949899CE0C0C0C3C0C0C0C3C949899CE000000070000
      000005050526636566A8696C6CAD010101130000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636667A92A2C2C6F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090934999D9ED10909
      09340000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF00000000000000000000000000000003686A6BAC666868AA4D4F4F949296
      98CD3537377C656868AA919596CC0001011100010111919596CC666868AA3537
      377C929698CD4D505095656868AA686A6BAC0000000200000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002A2B2B6E999D9ED12E2F2F73000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000060000000500000000000000000000000008090933999D9ED10909
      09340000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF00000000000000000000000000000001636667A94B4E4E93000000001415
      154D6C7070B02728286A020202190000000000000000020202192728286A6C70
      70B01415154D000000004B4C4D92656868AA0000000100000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D2E2E72999D9ED12E2F2F730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002425
      2566919596CC919495CB212222620000000000000000000000082829296B0000
      00090000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF0000000000000000000000000000000005050527929698CD121313490000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012131349949899CE0606062A0000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002D2E2E72999D9ED12E2F2F7300000000000000000000
      00000000000000000000000000000000000000000000000000002D2E2E72999D
      9ED14042428840424288999D9ED12A2B2B6E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF00000000000000000000000000000000000000003638387D696C6CAD0000
      00000000000000000006232424655D6060A35D6060A322232364000000050000
      000000000000696C6CAD3739397E000000000000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A2B2B6E999D9ED12F303074000000000000
      00000000000000000000000000000000000000000000292A2B6D999D9ED13638
      387D000000010000000130313276999D9ED12D2E2E7200000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF0000000000000000000000000000000000000005666868AA262727690000
      000000000006606363A67D8081BD2C2D2D712C2D2D717E8183BE5F6161A50000
      00050000000026272769666868AA000000050000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2B2B6E999D9ED12F3030740000
      000000000000000000000000000000000000292A2B6D999D9ED13638387D0000
      000100000000000000000000000130313276999D9ED12D2E2E72000000000000
      00000000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF000000000000000B3436367B636566A8919596CC929698CD020202190000
      0000242525667D8081BD010101130000000000000000010101137E8183BE2223
      23640000000002020219929698CD919596CC636566A83537377C0000000B0000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000B2728286A0000000900000000000000002D2E2E72999D9ED12E2F
      2F730000000000000000000000002D2E2E72999D9ED132333478000000010000
      0000000000000000000000000000000000012F313175999D9ED12B2D2D700000
      00000000000000000000181919541718185300000000000000001E1E1F5D6B6E
      6FAF0000000008080832999D9ED128292A6C0E0E0E4001010114000000000000
      00005E6060A42C2D2D71000000000000000000000000000000002C2D2D715D60
      60A30000000000000000010101140E0E0E4028292A6C999D9ED1080909330000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10A0B0B380000000000000000000000002D2E2E72999D
      9ED12E2F2F73000000022D2E2E72999D9ED13233347800000001000000000000
      000000000000000000000000000000000000000000002F303074999D9ED12C2D
      2D7100000000000000005658599D5658599D00000000000000001E1E1F5D6B6E
      6FAF0000000008080832999D9ED1242525660C0C0C3B01010112000000000000
      00005E6060A42C2D2D71000000000000000000000000000000002C2D2D715D60
      60A30000000000000000000000100B0B0B3924252566999D9ED1080909330000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000002D2E
      2E72999D9ED1888D8DC6999D9ED1323334780000000100000000000000000000
      00000000000000000000000000000000000000000000000000002E303074999D
      9ED12D2E2E72000000005658599D5658599D00000000000000001E1E1F5D6B6E
      6FAF000000000000000E3D3F3F856B6E6EAF949899CE8E9292CA010101120000
      0000242525667D8081BD010101120000000000000000010101137D8081BD2324
      24650000000005050527949899CE959A9BCF6A6D6DAE3A3B3C810000000D0000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000101011453234347811121247000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E30
      3074999D9ED12E2F2F735759599D5658599D00000000000000001E1E1F5D6B6E
      6FAF0000000000000000000000000000000000000007717474B31E1F1F5E0000
      000000000006626565A77D8081BD2C2D2D712C2D2D717D8081BD606363A60000
      000600000000333434795557589C000000090000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002E2F2F73999D9ED1929698CD5658599D00000000000000001E1E1F5D6B6E
      6FAF0000000000000000000000000000000000000000404242885C5E5FA20000
      00000000000000000006242525665F6161A55E6060A424252566000000060000
      000000000000838688C224252566000000000000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018191954525455995254
      559952545599919596CC999D9ED15658599D00000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000000707072E979A9BCF0F0F0F420000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024252566878C8CC5010101170000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018191954525455995254
      55995254559952545599525455991819195400000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000036D7070B140424288000000011819
      19546B6E6FAF2223236301010116000000000000000001020218262727695D60
      60A3090A0A3500000004656868AA484A4A8F0000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000076F7374B35E6060A45456579B8F92
      94CA333434796A6D6DAE8E9191C90000000A0303031F949899CE66696AAB4446
      468C979A9BCF3739397E6C7070B05B5D5DA10000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF00000000000000000000000000000000010101176E7272B25C5E5FA20303
      0321000000000000000F979C9CD0080808311314144B858A8BC4000000010000
      00000C0C0C3B777A7AB8626565A70000000E0000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090934999D9ED10B0B0B39000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000103F4141870000
      00100000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000000000000000000003000000000000
      00000000000000000000747678B62021216131323377585A5A9E000000000000
      0000000000000000000500000004000000000000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005060629999D9ED110101145000000000000000000000000000000000000
      00000606062B40424288525455995254559952545599525455994346468B0808
      083100000000000000000000000000000000000000000E0E0F41999D9ED10505
      05280000000000000000000000000000000000000000000000001E1E1F5D6B6E
      6FAF000000000000000000000000000000000000000000000000000000000000
      000000000000000000004344468B999D9ED1999D9ED12F303074000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6E6FAF1E1E1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000006838687C1606364A60202021B0000000000000000000000000202
      02198C9090C8797E7EBB525455995254559952545599525455997B7F7FBC9194
      95CB04040422000000000000000000000000020202195D6060A3828586C10000
      000500000000000000000000000000000000000000000000000016171750797E
      7EBB000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000100A0B0B380A0A0A370000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7F7FBC1616165000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0E0E3F8C9090C8999D9ED1999D9ED1999D9ED1999D9ED1999D
      9ED1999D9ED1010101140000000000000000000000000000000001010114999D
      9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED18C9090C80D0D0E3E0000
      00000000000000000000000000000000000000000000000000000303031E9498
      99CE171818520000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001718
      1853929698CD0202021D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000202021918191954212222622122226221222262383A
      3A7F999D9ED1222323630A0B0B380A0B0B380A0B0B380A0B0B3822232364999D
      9ED13739397E2122226221222262212222621819195402020219000000000000
      0000000000000000000000000000000000000000000000000000000000001B1C
      1C59949899CE7D8080BD737576B5737576B5737576B5737576B5737576B57375
      76B5737576B5737576B5737576B5737576B5737576B5737576B5737576B57375
      76B5737576B5737576B5737576B5737576B5737576B5737576B57D8080BD9296
      98CD1A1B1B580000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00044B4C4D92999D9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED14849
      4A8F000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303031E1717175121222262212222622122226221222262212222622122
      2262212222622122226221222262212222622122226221222262212222622122
      2262212222622122226221222262212222622122226221222262171717510303
      031E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040404220A0B0B380A0B0B380A0B0B380A0B0B38030404220000
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
      0000000000010F0F0F42515354980707072D0000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000202
      021B5557589C999D9ED1999D9ED12728286A0000000000000000000000000000
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
      00000000000000000000000000000000000000000000717474B39A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD1717474B300000000000000000000
      0000000000000000000000000000000000000000000000000000050505277D80
      81BD999D9ED1717474B311121247000000050000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000009A9E
      9FD1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9E9FD1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010114797E7EBB999D
      9ED13F4141870000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707072D4D505095626565A7626565A7626565A7626565A7626565A76265
      65A7626565A7626565A7626565A7626565A7626565A7626565A7626565A76265
      65A7626565A7626565A7626565A7626565A7626565A7626565A75D6060A32A2C
      2C6F000000070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9E
      9FD100000000717474B3000000001B1C1C591B1C1C5900000000717474B30000
      00001B1C1C591B1C1C5900000000717474B3000000001B1C1C591B1C1C590000
      0000717474B3000000009A9E9FD1000000000000000000000000000000000000
      000000000000000000000000000000000000000000004346468B999D9ED14648
      498E000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006828586C14D50509521222262212222622122226221222262212222622122
      2262212222622122226221222262212222622122226221222262414343893B3C
      3C822122226221222262636667A9212222622122226221222262252626677D80
      81BD2A2C2C6F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9E
      9FD100000000717474B3000000001B1C1C591B1C1C5900000000717474B30000
      00001B1C1C591B1C1C5900000000717474B3000000001B1C1C591B1C1C590000
      0000717474B3000000009A9E9FD1000000000C0D0D3C797D7DB9797D7DB90C0C
      0C3B0000000000000000000000000000000005050528999D9ED1828586C10000
      000D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0116999D9ED10A0B0B3800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0B0B381516
      164F00000000000000003E404086000000000000000000000000000000002C2D
      2D715759599D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E92
      93C90000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000010939899CD00000000797E7FBA0808083108080932797D
      7DB90000000000000000000000000000000032333478999D9ED1232424650000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004548488D959A9BCF6F7374B34346468B5557589C717576B4393B3B816A6D
      6DAE383A3A7F5456579B4B4E4E934346468B4346468B4243448A4548488D6568
      68AA4346468B393B3B81767A7AB83E40408610101044000000022D2E2E72888C
      8DC6212222620000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000002325
      25659A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD124252666000000009A9E9FD100000000000000009A9E
      9FD100000000000000000000000000000000696C6CAD999D9ED1040404230000
      00000000000000000000000000000000000000000002171818534446468C383A
      3A7F080909330000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000023E4040867D8081BD2728286B0101011425262667101011450D0D
      0D3D0B0B0B39000000101B1C1C590000000000000000000000000202021C2728
      286A00000000000000003739397E000000080000000001010115999D9ED12021
      2161000000010000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD100000000000000009A9E9FD100000000000000009A9E
      9FD1000000000000000000000000000000008E9191C9949899CE000000050000
      00000000000000000000000000000000000A5456579B878C8CC53638387D4A4B
      4C91979A9BCF2425256600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000333434794344468B050606291212124800000000000000000000
      0000000000000000000000000000000000000000000000000000010101144A4B
      4C9110111146101111464F5152960000000F000000000303031E999D9ED10202
      021C000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD100000000000000009A9E9FD100000000000000009A9E
      9FD1000000000000000000000000000000008B8F8FC78E9191C9000000000000
      000000000000000000000000000A585B5B9F777A7AB80202021D000000000000
      000011121247949899CE26272769000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003537377C666868AA101011450101011500000000000000000000
      00030000000000000000000000000000000200000002000000000000000E494B
      4B900A0B0B380A0B0B384344468B010101140000000005050528999D9ED10101
      0113000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD100000000000000009A9E9FD100000000000000009A9E
      9FD1000000000000000000000000000000006C7070B0999D9ED1010101170000
      0000000000000000000A585B5B9F777A7AB80202021C09090934404242882F30
      30740001011110111146949899CE262727690000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003638387D51535398101010441011114600000000000000000B0B
      0B390000000000000000000000000202021D0202021D00000000000000084042
      42880202021C0202021C333434790202021A0000000005060629999D9ED10101
      0114000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD100000000000000009A9E9FD100000000000000009A9E
      9FD10000000000000000000000000000000033343479999D9ED11C1D1D5B0000
      00000000000B595C5CA0777A7AB80202021B1314144B959A9BCF4548488D686A
      6BAC737576B50102021810101145929698CD2627276900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003335357A6D7070B11C1D1D5A0202021900000000000000000000
      0000000000000000000000000000000000000000000000000000000000026A6D
      6DAE2B2C2C6F2B2C2C6F585A5A9E03030320000000000303031E999D9ED10202
      021D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD100000000000000009A9E9FD100000000000000009A9E
      9FD1000000000000000000000000000000000606062A979C9CD07B7F7FBC0202
      021A5B5D5DA1767A7AB80202021B1414144C959A9BCF20212161000000000000
      000B5B5D5DA1737576B50102021810101145929698CD26272769000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D2E2E725759599D0607072C02020219000000000C0D0D3D0000
      0000000000000000000000000000000000000000000000000000000000003E40
      4086000000000000000020212160050505260000000002020219999D9ED10404
      0423000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD10000000008080831797D7DB900000000000000009A9E
      9FD100000000000000000000000000000000000000003D3F3F85999D9ED18E92
      92CA767A7AB80202021A11111146959A9BCF2021216100000000000000000F0F
      0F420000000C5B5D5DA1737576B50102021810101044929698CD262727690000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002728286B595C5CA0000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000686A
      6BAC3638387D3638387D656868AA0606062B0000000001010114999D9ED10606
      062A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD19A9E9FD1797E7FBA0C0D0D3C00000000000000009A9E
      9FD10000000000000000000000000000000000000000000000096B6E6FAF797E
      7EBB0202021A00000000696C6CAD3335357A000000000000000001010113999D
      9ED1040404240000000B5B5D5DA1717576B40000000E10101044929698CD2C2D
      2D713637387D393B3B810202021C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021222262818485C03638387D3638387D3638387D3638387D3638
      387D3638387D3638387D3638387D3638387D3638387D3638387D010101134243
      448A0000000E0000000218191954080808312C2D2D713C3E3E84999D9ED10606
      062A000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD100000000000000000000000000000000000000009A9E
      9FD1000000000000000000000000000000000000000000000000323334787476
      78B60101011400000000383A3A7F828586C10505052600000000000000049194
      95CB0F0F0F42000000000000000D8C9090C8121313490000000018191954999D
      9ED1686A6BAC5D6060A37D8080BD010101140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1C1C59838687C1090A0A350303031E4F5252970A0A0A373334
      34790F1010430B0C0C3A333434790000000E0000000E0000000D000000005153
      549810111146101111463637387D090909340000000A0202021D999D9ED10505
      0528000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD1000000000000000000000000292B2B6D939798CC9A9E
      9FD1939798CC282A2A6C00000000000000000000000000000000000000106669
      6AAB6C7070B001010114000000064C4F4F94828586C105050526000000004F52
      52974344468B000000023F414187858989C301020218010101146C7070B06063
      64A60000000D000000066B6E6FAF2B2D2D700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000016161650858A8BC42829296B1C1D1D5A000000070202021B0000
      0001000000050000000000000001000000000000000000000000000000005153
      539810111146101111463436367B0A0A0A370000000000010111999D9ED10505
      0527000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000717474B39A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD1717474B300000000717474B39A9E9FD1717474B30000
      0000000000009A9E9FD1000000000000000000000000939798CC000000100000
      000000000010919696CB00000000000000000000000000000000000000000000
      001066696AAB6C7070B001010114000000064B4E4E93828586C10606062B0808
      0832979C9CD05759599D858A8BC40606062B010101146C7070B0606364A60000
      000D00000000000000004446468C3D3F3F850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101111468C9090C8000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3F
      3F8500000000000000001515154E0B0B0B390000000001010113999D9ED10505
      0526000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9E9FD10000000000000000000000009A9E9FD1000000007174
      74B3000000009A9E9FD100000000000000000000000000000000000000000000
      000000000010666868AA6C7070B001010114000000053F414187949899CE6668
      68AA929698CD818485C00606062B010101146C7070B0606364A60000000D0000
      00000000000000000000636667A9252727680000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0E0E3F979C9CD03B3D3D831C1D1D5A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5E
      5FA23638387D3638387D5557589C0C0C0C3C0000000001010115999D9ED10404
      0424000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000838787C19A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD1838787C10000
      0000000000009A9E9FD10000000000000000000000009A9E9FD1000000007174
      74B30001011185898BC300000000000000000000000000000000000000000000
      00000000000000000010666868AA6C7070B00101011400000000090909342122
      2262171717510000000C010101146C7070B0606364A60000000D000000000000
      00000000000000000000888C8DC61314144B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0D0D3D999D9ED1020202190000000000000000000000000000
      000000000000000000000000000B00000000000000010C0C0C3C000000003B3D
      3D8300000000000000001313134A0D0D0E3E0000000001010117999D9ED10404
      0422000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD100000000000000009A9E9FD10000000000000000000000000000
      00000000000B777A7AB80B0B0B390000000000000000000000009A9E9FD10000
      0000000000009A9E9FD10000000000000000000000009A9E9FD1000000000000
      00044A4D4D912F30317400000000000000000000000000000000000000000000
      000000000000000000000000000E606364A66E7272B201010115000000000000
      000000000000010101136A6D6DAE636667A90000000F00000000000000000000
      00000000000000010111999D9ED10707072F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0C0C3A999D9ED12E2F2F730808083000000000000000000000
      0000000000000000000008080831000000080000000700000000000000005557
      589C2B2C2C6F2B2C2C6F4A4B4C910E0E0F410000000002020219999D9ED10303
      0321000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD100000000000000009A9E9FD10000000000000000000000000000
      0000000000000B0B0B39777A7AB80000000B00000000000000009A9E9FD10000
      0000000000009A9E9FD100000000000000000A0A0A37797E7FBA00000004484A
      4A8F484A4A8F0000000400000000000000000000000000000000000000000000
      000000000000000000000000000000000010656868AA6C7070B0010101140000
      0000010101146C7070B0606364A60000000D0000000000000000000000000000
      00000000000005050528999D9ED1000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A37999D9ED1000000050000000000000000000000000000
      0000000000000000000000000000010101170101011600000000000000004143
      43890202021C0202021C1B1C1C590F101043000000000202021B999D9ED10303
      031F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD100000000000000009A9E9FD10000000000000000000000000000
      00000000000000000000333535791516164F00000000000000009A9E9FD10000
      0000000000009A9E9FD10000000008080831818485BF0A0B0B38484A4A8F484A
      4A8F000000040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010656868AA6C7070B00505
      05286C7070B0606364A60000000D000000000000000000000000000000000000
      0000000000003436367B717474B3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202021B999D9ED10A0B0B380000000000000000000000000000
      000000000000000000000000000000000000000000010000000E0000000E4344
      468B0202021C0202021C1A1B1B581A1B1B580202021C242525668E9292CA0000
      0007000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD100000000000000009A9E9FD10000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9E9FD10000
      0000000000009A9E9FD1000000006E7272B10E0E0E3F484A4A8F484A4A8F0000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000010636667A9979C
      9CD0606364A60000000D00000000000000000000000000000000000000000000
      00000C0C0C3C999D9ED10B0C0C3A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003436367B949899CE737576B5737576B56C7070B07375
      76B57B7F7FBC858989C3888D8DC6999D9ED1999D9ED1999D9ED1999D9ED1999D
      9ED1999D9ED1999D9ED1999D9ED1999D9ED1999D9ED1919495CB161616500000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD100000000000000009A9E9FD10000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9E9FD10000
      0000000000009A9E9FD100000000989C9CCF484A4A8F484A4A8F000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090A0A35979A
      9BCF010101120000000000000000000000000000000000000000000000000000
      00000000000E919596CC0C0C0C3C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A37636667A9212222622A2C2C6F4D4F
      4F941819195452545599171717510D0E0E3F5356569A080808300606062A494B
      4B900202021C0202021C181919541C1D1D5A1E1F1F5E0D0E0E3F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9E9FD10000000000000000939798CC0000000F00000000000000000000
      0000000000000000000000000000000000000000000000000010919696CB0000
      0000000000009A9E9FD1000000002D2E2E713335357900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000F8386
      87C13D3F3F850000000200000000000000000000000000000000000000000000
      00000303031E8C9090C80F101043000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004243448A00000000020202192829
      2A6C000000002F30307400010111000000003E40408600000000000000003D3F
      3F8500000000000000000F0F0F421718185228292A6C0707072E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000939798CC00000005000000002A2B2B6E939798CC9A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD1939798CC292B2B6D0000
      000000000005919696CB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      072E888C8DC63E4040860000000200000000000000000707072D000000030303
      031E797E7EBB959A9BCF03040422000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252626674346468B4446468C4B4E
      4E93414343895456579B3B3C3C823B3D3D8352545599606364A63638387D7578
      79B76F7374B33E4040864D5050955456579B1A1B1B5700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000616465A60A0A0A3700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B39606363A500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707072F888D8DC64648498E0707072D3436367B999D9ED1828586C18386
      87C1828586C1999D9ED17B7F7FBC0303031E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000083F414187000000024548
      488D2728286B040404251516164F0F0F0F420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D0E0E3E777A7AB80A0A0A37000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000050A0B
      0B38777A7AB80D0D0D3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000606062B6B6E6EAF999D9ED1767A7AB80F0F0F42171818521A1B
      1B57000000084346468B999D9ED17B7F7FBC0303031E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1C1C59484A4A8F0A0A
      0A3601010115404242883537377C000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0E0E3E606464A6939798CC9A9E9FD19A9E9FD19A9E9FD19A9E
      9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD19A9E9FD1939798CC6064
      64A60D0D0D3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A0000000000000000000000000000
      000000000000000000044548488D999D9ED1797E7EBB09090934000000000000
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
      000000000000000000000000000441434389999D9ED1999D9ED1888D8DC68589
      89C3858989C3858989C3858989C3858989C30000000000000000000000000000
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
      000000000000000000000000000000000000181919546D7070B1979C9CD0999D
      9ED1999D9ED1999D9ED1999D9ED1999D9ED10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  object ds_tanque: TDataSource
    AutoEdit = False
    DataSet = cdsTanque
    OnStateChange = ds_tanqueStateChange
    Left = 360
    Top = 508
  end
  object ds_bomba: TDataSource
    AutoEdit = False
    DataSet = cdsBomba
    OnStateChange = ds_bombaStateChange
    Left = 360
    Top = 442
  end
  object ds_abastecimento: TDataSource
    AutoEdit = False
    DataSet = cdsAbastecimento
    OnStateChange = ds_abastecimentoStateChange
    Left = 728
    Top = 565
  end
  object ds_configuracacao: TDataSource
    AutoEdit = False
    DataSet = cdsConfiguracao
    Left = 362
    Top = 566
  end
  object cdsTanque: TClientDataSet
    PersistDataPacket.Data = {
      5D0000009619E0BD0100000018000000030000000000030000005D000D496465
      6E746966696361646F7204000100000000000B446573637269C3A7C3A36F0100
      490000000100055749445448020002003C00045469706F040001000000000000
      00}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 434
    Top = 506
    object cdsTanqueIdentificador: TIntegerField
      DisplayWidth = 16
      FieldName = 'Identificador'
    end
    object cdsTanqueDescrição: TStringField
      DisplayWidth = 60
      FieldName = 'Descri'#231#227'o'
      Size = 60
    end
    object cdsTanqueTipo: TIntegerField
      DisplayWidth = 10
      FieldName = 'Tipo'
    end
  end
  object dsp_tanque: TDataSetProvider
    DataSet = cdsTanque
    Left = 515
    Top = 506
  end
  object dsp_bomba: TDataSetProvider
    DataSet = cdsBomba
    Left = 534
    Top = 442
  end
  object cdsBomba: TClientDataSet
    PersistDataPacket.Data = {
      5F0000009619E0BD0100000018000000030000000000030000005F000D496465
      6E746966696361646F7204000100000000000B446573637269C3A7C3A36F0100
      490000000100055749445448020002003C000654616E71756504000100000000
      000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 437
    Top = 444
    object cdsBombaIdentificador: TIntegerField
      DisplayWidth = 14
      FieldName = 'Identificador'
    end
    object cdsBombaDescrição: TStringField
      DisplayWidth = 60
      FieldName = 'Descri'#231#227'o'
      Size = 60
    end
    object cdsBombaTanque: TIntegerField
      DisplayWidth = 10
      FieldName = 'Tanque'
    end
  end
  object cdsConfiguracao: TClientDataSet
    PersistDataPacket.Data = {
      AC0000009619E0BD010000001800000003000000000003000000AC001476616C
      6F725F6C6974726F5F6761736F6C696E61080004000000010007535542545950
      450200490006004D6F6E6579001776616C6F725F6C6974726F5F6F6C656F5F64
      696573656C080004000000010007535542545950450200490006004D6F6E6579
      001076616C6F725F646F5F696D706F73746F0800040000000100075355425459
      50450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 471
    Top = 566
    object cdsConfiguracaovalor_litro_gasolina: TCurrencyField
      DisplayWidth = 21
      FieldName = 'valor_litro_gasolina'
    end
    object cdsConfiguracaovalor_litro_oleo_diesel: TCurrencyField
      DisplayWidth = 24
      FieldName = 'valor_litro_oleo_diesel'
    end
    object cdsConfiguracaovalor_do_imposto: TCurrencyField
      DisplayWidth = 18
      FieldName = 'valor_do_imposto'
    end
  end
  object dsp_configuracao: TDataSetProvider
    DataSet = cdsConfiguracao
    Left = 574
    Top = 566
  end
  object cdsAbastecimento: TClientDataSet
    PersistDataPacket.Data = {
      B40000009619E0BD010000001800000006000000000003000000B4000D496465
      6E746966696361646F7204000100000000000444617461040006000000000005
      426F6D62610400010000000000064C6974726F73080004000000010007535542
      545950450200490006004D6F6E6579000556616C6F7208000400000001000753
      5542545950450200490006004D6F6E65790007496D706F73746F080004000000
      010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 839
    Top = 565
    object cdsAbastecimentoIdentificador: TIntegerField
      DisplayWidth = 12
      FieldName = 'Identificador'
    end
    object cdsAbastecimentoData: TDateField
      DisplayWidth = 15
      FieldName = 'Data'
    end
    object cdsAbastecimentoBomba: TIntegerField
      DisplayWidth = 14
      FieldName = 'Bomba'
    end
    object cdsAbastecimentoLitros: TCurrencyField
      DisplayWidth = 18
      FieldName = 'Litros'
      DisplayFormat = '#,##0.00'
    end
    object cdsAbastecimentoValor: TCurrencyField
      DisplayWidth = 14
      FieldName = 'Valor'
    end
    object cdsAbastecimentoImposto: TCurrencyField
      DisplayWidth = 16
      FieldName = 'Imposto'
    end
  end
  object dsp_abastecimento: TDataSetProvider
    DataSet = cdsAbastecimento
    Left = 953
    Top = 565
  end
end
