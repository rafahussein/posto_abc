object frm_quadros_apoio: Tfrm_quadros_apoio
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frm_quadros_apoio'
  ClientHeight = 453
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnl_buscar: TPanel
    Left = 59
    Top = 56
    Width = 337
    Height = 289
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 337
      Height = 41
      Align = alTop
      TabOrder = 0
      object bb_confirmar_buscar: TBitBtn
        Left = 4
        Top = 6
        Width = 75
        Height = 30
        Caption = 'Confirmar'
        ModalResult = 1
        TabOrder = 0
      end
      object bb_cancelar_buscar: TBitBtn
        Left = 255
        Top = 6
        Width = 75
        Height = 30
        Caption = 'Cancelar'
        ModalResult = 2
        TabOrder = 1
      end
    end
    object dbg_buscar: TDBGrid
      Left = 0
      Top = 41
      Width = 337
      Height = 248
      Align = alClient
      DataSource = ds_buscar
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object ds_buscar: TDataSource
    AutoEdit = False
    DataSet = cds_buscar
    Left = 312
    Top = 364
  end
  object cds_buscar: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 386
    Top = 366
  end
  object dsp_buscar: TDataSetProvider
    DataSet = cds_buscar
    Left = 467
    Top = 358
  end
end
