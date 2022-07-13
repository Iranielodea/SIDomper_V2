object DMRelVisita: TDMRelVisita
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 368
  Width = 441
  object CDSRelVisitaModelo1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelVisitaModelo1'
    OnCalcFields = CDSRelVisitaModelo1CalcFields
    Left = 48
    Top = 16
    object CDSRelVisitaModelo1Vis_Id: TAutoIncField
      FieldName = 'Vis_Id'
      Origin = 'Vis_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSRelVisitaModelo1Vis_Data: TDateField
      FieldName = 'Vis_Data'
      Origin = 'Vis_Data'
      Required = True
    end
    object CDSRelVisitaModelo1Vis_HoraInicio: TTimeField
      FieldName = 'Vis_HoraInicio'
      Origin = 'Vis_HoraInicio'
      Required = True
    end
    object CDSRelVisitaModelo1Vis_Dcto: TStringField
      FieldName = 'Vis_Dcto'
      Origin = 'Vis_Dcto'
      Size = 25
    end
    object CDSRelVisitaModelo1Vis_HoraFim: TTimeField
      FieldName = 'Vis_HoraFim'
      Origin = 'Vis_HoraFim'
      Required = True
    end
    object CDSRelVisitaModelo1Vis_Contato: TStringField
      FieldName = 'Vis_Contato'
      Origin = 'Vis_Contato'
      Size = 100
    end
    object CDSRelVisitaModelo1Vis_Descricao: TStringField
      FieldName = 'Vis_Descricao'
      Origin = 'Vis_Descricao'
      Required = True
      Size = 2000
    end
    object CDSRelVisitaModelo1Vis_TotalHoras: TFloatField
      FieldName = 'Vis_TotalHoras'
      Origin = 'Vis_TotalHoras'
      Required = True
    end
    object CDSRelVisitaModelo1Vis_FormaPagto: TStringField
      FieldName = 'Vis_FormaPagto'
      Origin = 'Vis_FormaPagto'
      Size = 500
    end
    object CDSRelVisitaModelo1Tip_Nome: TWideStringField
      FieldName = 'Tip_Nome'
      Origin = 'Tip_Nome'
      Required = True
      Size = 50
    end
    object CDSRelVisitaModelo1Sta_Nome: TWideStringField
      FieldName = 'Sta_Nome'
      Origin = 'Sta_Nome'
      Required = True
      Size = 50
    end
    object CDSRelVisitaModelo1Cli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'Cli_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo1Cli_Nome: TWideStringField
      FieldName = 'Cli_Nome'
      Origin = 'Cli_Nome'
      Required = True
      Size = 100
    end
    object CDSRelVisitaModelo1C_TotalHoras: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_TotalHoras'
    end
    object CDSRelVisitaModelo1Vis_Valor: TCurrencyField
      FieldName = 'Vis_Valor'
      Origin = 'Vis_Valor'
      Required = True
    end
    object CDSRelVisitaModelo1Usu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'Usu_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo1Usu_Nome: TWideStringField
      FieldName = 'Usu_Nome'
      Origin = 'Usu_Nome'
      Required = True
      Size = 100
    end
  end
  object CDSRelVisitaModelo2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelVisitaModelo2'
    Left = 48
    Top = 72
    object CDSRelVisitaModelo2Cli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'Cli_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo2Cli_Nome: TWideStringField
      FieldName = 'Cli_Nome'
      Origin = 'Cli_Nome'
      Required = True
      Size = 100
    end
    object CDSRelVisitaModelo2Rev_Codigo: TIntegerField
      FieldName = 'Rev_Codigo'
      Origin = 'Rev_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo2Rev_Nome: TWideStringField
      FieldName = 'Rev_Nome'
      Origin = 'Rev_Nome'
      Required = True
      Size = 100
    end
    object CDSRelVisitaModelo2QtdeChamados: TIntegerField
      FieldName = 'QtdeChamados'
      Origin = 'QtdeChamados'
      ReadOnly = True
    end
    object CDSRelVisitaModelo2TotalHoras: TFloatField
      FieldName = 'TotalHoras'
      Origin = 'TotalHoras'
      ReadOnly = True
    end
    object CDSRelVisitaModelo2TotalValor: TCurrencyField
      FieldName = 'TotalValor'
      Origin = 'TotalValor'
      ReadOnly = True
    end
  end
  object CDSRelVisitaModelo3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelVisitaModelo3'
    Left = 48
    Top = 136
    object CDSRelVisitaModelo3Usu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'Usu_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo3QtdeChamados: TIntegerField
      FieldName = 'QtdeChamados'
      Origin = 'QtdeChamados'
      ReadOnly = True
    end
    object CDSRelVisitaModelo3TotalHoras: TFloatField
      FieldName = 'TotalHoras'
      Origin = 'TotalHoras'
      ReadOnly = True
    end
    object CDSRelVisitaModelo3TotalValor: TCurrencyField
      FieldName = 'TotalValor'
      Origin = 'TotalValor'
      ReadOnly = True
    end
    object CDSRelVisitaModelo3Usu_Nome: TWideStringField
      FieldName = 'Usu_Nome'
      Origin = 'Usu_Nome'
      Required = True
      Size = 100
    end
  end
  object CDSRelVisitaModelo4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelVisitaModelo4'
    Left = 48
    Top = 192
    object CDSRelVisitaModelo4Tip_Codigo: TIntegerField
      FieldName = 'Tip_Codigo'
      Origin = 'Tip_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo4Tip_Nome: TWideStringField
      FieldName = 'Tip_Nome'
      Origin = 'Tip_Nome'
      Required = True
      Size = 50
    end
    object CDSRelVisitaModelo4Rev_Codigo: TIntegerField
      FieldName = 'Rev_Codigo'
      Origin = 'Rev_Codigo'
      Required = True
    end
    object CDSRelVisitaModelo4Rev_Nome: TWideStringField
      FieldName = 'Rev_Nome'
      Origin = 'Rev_Nome'
      Required = True
      Size = 100
    end
    object CDSRelVisitaModelo4QtdeChamados: TIntegerField
      FieldName = 'QtdeChamados'
      Origin = 'QtdeChamados'
      ReadOnly = True
    end
    object CDSRelVisitaModelo4TotalHoras: TFloatField
      FieldName = 'TotalHoras'
      Origin = 'TotalHoras'
      ReadOnly = True
    end
    object CDSRelVisitaModelo4TotalValor: TCurrencyField
      FieldName = 'TotalValor'
      Origin = 'TotalValor'
      ReadOnly = True
    end
  end
  object dsRelVisitaModelo1: TDataSource
    DataSet = CDSRelVisitaModelo1
    Left = 144
    Top = 16
  end
  object dsRelVisitaModelo2: TDataSource
    DataSet = CDSRelVisitaModelo2
    Left = 144
    Top = 72
  end
  object dsRelVisitaModelo3: TDataSource
    DataSet = CDSRelVisitaModelo3
    Left = 144
    Top = 136
  end
  object dsRelVisitaModelo4: TDataSource
    DataSet = CDSRelVisitaModelo4
    Left = 144
    Top = 192
  end
  object dbRelVisitaModelo1: TppDBPipeline
    DataSource = dsRelVisitaModelo1
    UserName = 'dbRelVisitaModelo1'
    Left = 240
    Top = 16
  end
  object dbRelVisitaModelo2: TppDBPipeline
    DataSource = dsRelVisitaModelo2
    UserName = 'dbRelVisitaModelo2'
    Left = 240
    Top = 72
  end
  object dbRelVisitaModelo3: TppDBPipeline
    DataSource = dsRelVisitaModelo3
    UserName = 'dbRelVisitaModelo3'
    Left = 240
    Top = 136
    object dbRelVisitaModelo3ppField1: TppField
      FieldAlias = 'Usu_Codigo'
      FieldName = 'Usu_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo3ppField2: TppField
      FieldAlias = 'QtdeChamados'
      FieldName = 'QtdeChamados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo3ppField3: TppField
      FieldAlias = 'TotalHoras'
      FieldName = 'TotalHoras'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo3ppField4: TppField
      FieldAlias = 'TotalValor'
      FieldName = 'TotalValor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo3ppField5: TppField
      FieldAlias = 'Usu_Nome'
      FieldName = 'Usu_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object dbRelVisitaModelo4: TppDBPipeline
    DataSource = dsRelVisitaModelo4
    UserName = 'dbRelVisitaModelo4'
    Left = 240
    Top = 192
    object dbRelVisitaModelo4ppField1: TppField
      FieldAlias = 'Tip_Codigo'
      FieldName = 'Tip_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo4ppField2: TppField
      FieldAlias = 'Tip_Nome'
      FieldName = 'Tip_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo4ppField3: TppField
      FieldAlias = 'Rev_Codigo'
      FieldName = 'Rev_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo4ppField4: TppField
      FieldAlias = 'Rev_Nome'
      FieldName = 'Rev_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo4ppField5: TppField
      FieldAlias = 'QtdeChamados'
      FieldName = 'QtdeChamados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo4ppField6: TppField
      FieldAlias = 'TotalHoras'
      FieldName = 'TotalHoras'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo4ppField7: TppField
      FieldAlias = 'TotalValor'
      FieldName = 'TotalValor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object RelVisitaModelo1: TppReport
    AutoStop = False
    DataPipeline = dbRelVisitaModelo1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 328
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelVisitaModelo1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Visitas - Relat'#243'rio por Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 80963
        mmTop = 529
        mmWidth = 70644
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 529
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 254530
        mmTop = 529
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground3
      end
      object lblPeriodoModelo1: TppLabel
        UserName = 'lblPeriodoModelo1'
        AutoSize = False
        Caption = 'lblPeriodoModelo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 69850
        mmTop = 6350
        mmWidth = 99484
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 20638
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 39158
        mmTop = 20638
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'H.In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 20638
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'H.Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 20638
        mmWidth = 9261
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'T.Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 20638
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 20638
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 20638
        mmWidth = 7409
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 229923
        mmTop = 20638
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4234
        mmLeft = 0
        mmTop = 25929
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 25929
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 25929
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Vis_Id'
        DataPipeline = dbRelVisitaModelo1
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 1058
        mmTop = 1855
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Vis_Data'
        DataPipeline = dbRelVisitaModelo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 15875
        mmTop = 1855
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Vis_Dcto'
        DataPipeline = dbRelVisitaModelo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 39158
        mmTop = 1590
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Vis_HoraInicio'
        DataPipeline = dbRelVisitaModelo1
        DisplayFormat = 'hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 82550
        mmTop = 1590
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Vis_HoraFim'
        DataPipeline = dbRelVisitaModelo1
        DisplayFormat = 'hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 96838
        mmTop = 1590
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Vis_Contato'
        DataPipeline = dbRelVisitaModelo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 127794
        mmTop = 1588
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'C_TotalHoras'
        DataPipeline = dbRelVisitaModelo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 111919
        mmTop = 1590
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Tip_Nome'
        DataPipeline = dbRelVisitaModelo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 182298
        mmTop = 1590
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Sta_Nome'
        DataPipeline = dbRelVisitaModelo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 229923
        mmTop = 1590
        mmWidth = 46302
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        DataField = 'Vis_Descricao'
        DataPipeline = dbRelVisitaModelo1
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 107950
        BandType = 4
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppDBRichText2: TppDBRichText
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        DataField = 'Vis_FormaPagto'
        DataPipeline = dbRelVisitaModelo1
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 6615
        mmWidth = 94456
        BandType = 4
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 282046
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Vis_Valor'
        DataPipeline = dbRelVisitaModelo1
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo1'
        mmHeight = 4498
        mmLeft = 119592
        mmTop = 6615
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'Cli_Codigo'
      DataPipeline = dbRelVisitaModelo1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbRelVisitaModelo1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          Pen.Style = psClear
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 282046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 1588
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'Cli_Codigo'
          DataPipeline = dbRelVisitaModelo1
          DisplayFormat = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 17727
          mmTop = 1588
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'Cli_Nome'
          DataPipeline = dbRelVisitaModelo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 31750
          mmTop = 1588
          mmWidth = 100277
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 282046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel24: TppLabel
          UserName = 'Label15'
          Caption = 'Consultor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 138907
          mmTop = 1588
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'Usu_Codigo'
          DataPipeline = dbRelVisitaModelo1
          DisplayFormat = '0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 160602
          mmTop = 1588
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          DataField = 'Usu_Nome'
          DataPipeline = dbRelVisitaModelo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 172509
          mmTop = 1588
          mmWidth = 85461
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'Total Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 1852
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Vis_Id'
          DataPipeline = dbRelVisitaModelo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 27781
          mmTop = 1852
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 4762
          mmWidth = 282046
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'Vis_Valor'
          DataPipeline = dbRelVisitaModelo1
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 126207
          mmTop = 1852
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object sumSubTotalHorasModelo1: TppDBCalc
          UserName = 'sumSubTotalHorasModelo1'
          DataField = 'Vis_TotalHoras'
          DataPipeline = dbRelVisitaModelo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'dbRelVisitaModelo1'
          mmHeight = 4498
          mmLeft = 168275
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object lblSubTotalHorasModelo1: TppLabel
          UserName = 'lblSubTotalHorasModelo1'
          AutoSize = False
          Caption = 'lblTotalHorasGeralModelo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 91811
          mmTop = 1852
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object RelVisitaModelo2: TppReport
    AutoStop = False
    DataPipeline = dbRelVisitaModelo2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 328
    Top = 72
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelVisitaModelo2'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169598
        mmTop = 0
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label101'
        Caption = 'Visitas - Resumo por Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 59002
        mmTop = 0
        mmWidth = 68792
        BandType = 0
        LayerName = Foreground
      end
      object lblPeriodoModelo2: TppLabel
        UserName = 'lblPeriodoModelo2'
        AutoSize = False
        Caption = 'lblPeriodoModelo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 6350
        mmWidth = 92869
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12965
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Qtde Visitas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 12965
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Total Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 12965
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 15346
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 12965
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Cli_Codigo'
        DataPipeline = dbRelVisitaModelo2
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'Cli_Nome'
        DataPipeline = dbRelVisitaModelo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 14817
        mmTop = 0
        mmWidth = 103188
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo2
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 154517
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object txtTotalHorasModelo2: TppDBText
        UserName = 'txtTotalHorasModelo2'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 148167
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object lblTotalHorasModelo2: TppLabel
        UserName = 'lblTotalHorasModelo2'
        AutoSize = False
        Caption = 'lblTotalHorasModelo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 174625
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo2
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 119592
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo2
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 119592
        mmTop = 2910
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4234
        mmLeft = 0
        mmTop = 2910
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'Cli_Codigo'
        DataPipeline = dbRelVisitaModelo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 30956
        mmTop = 2910
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo2
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 146844
        mmTop = 2910
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object lblTotalHorasGeralModelo2: TppLabel
        UserName = 'lblTotalHorasGeralModelo2'
        AutoSize = False
        Caption = 'lblTotalHorasGeralModelo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 2910
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
      object sumTotalHorasModelo2: TppDBCalc
        UserName = 'sumTotalHorasModelo2'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo2'
        mmHeight = 4498
        mmLeft = 83608
        mmTop = 2910
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Rev_Codigo'
      DataPipeline = dbRelVisitaModelo2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbRelVisitaModelo2'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 2381
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'Rev_Codigo'
          DataPipeline = dbRelVisitaModelo2
          DisplayFormat = '0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo2'
          mmHeight = 4498
          mmLeft = 16404
          mmTop = 2381
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'Rev_Nome'
          DataPipeline = dbRelVisitaModelo2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo2'
          mmHeight = 4498
          mmLeft = 27252
          mmTop = 2381
          mmWidth = 111919
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Total Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 2646
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Cli_Codigo'
          DataPipeline = dbRelVisitaModelo2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbRelVisitaModelo2'
          mmHeight = 4498
          mmLeft = 30956
          mmTop = 2646
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 5027
          mmWidth = 196321
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'TotalValor'
          DataPipeline = dbRelVisitaModelo2
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo2'
          mmHeight = 4498
          mmLeft = 119592
          mmTop = 2646
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object lblSubTotalHorasModelo2: TppLabel
          UserName = 'lblSubTotalHorasModelo2'
          AutoSize = False
          Caption = 'lblSubTotalHorasModelo2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 174625
          mmTop = 2646
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'QtdeChamados'
          DataPipeline = dbRelVisitaModelo2
          DisplayFormat = ',##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo2'
          mmHeight = 4498
          mmLeft = 148167
          mmTop = 2646
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object sumSubTotalHorasModelo2: TppDBCalc
          UserName = 'sumSubTotalHorasModelo2'
          DataField = 'TotalHoras'
          DataPipeline = dbRelVisitaModelo2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'dbRelVisitaModelo2'
          mmHeight = 4498
          mmLeft = 83608
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object RelVisitaModelo3: TppReport
    AutoStop = False
    DataPipeline = dbRelVisitaModelo3
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 328
    Top = 136
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelVisitaModelo3'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object lblPeriodoModelo3: TppLabel
        UserName = 'lblPeriodoModelo3'
        AutoSize = False
        Caption = 'lblPeriodoModelo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 55033
        mmTop = 6350
        mmWidth = 92869
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        UserName = 'Label201'
        Caption = 'Consultor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12171
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Qtde Visitas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 12171
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Total Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 12171
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 12171
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169598
        mmTop = 0
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Visitas - Resumo por Consultor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 61383
        mmTop = 0
        mmWidth = 76201
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand4: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Usu_Codigo'
        DataPipeline = dbRelVisitaModelo3
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'Usu_Nome'
        DataPipeline = dbRelVisitaModelo3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 9260
        mmTop = 0
        mmWidth = 103452
        BandType = 4
        LayerName = Foreground1
      end
      object lblTotalHorasModelo3: TppLabel
        UserName = 'lblTotalHorasModelo3'
        AutoSize = False
        Caption = 'lblTotalHorasModelo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 171980
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo3
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 153988
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo3
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 124619
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object txtQtdeHorasModelo3: TppDBText
        UserName = 'txtQtdeHorasModelo3'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 114829
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand3: TppSummaryBand
      BeforePrint = ppSummaryBand3BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 3178
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'Rev_Codigo'
        DataPipeline = dbRelVisitaModelo3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 25400
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo3
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 124619
        mmTop = 3178
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo3
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 151342
        mmTop = 3178
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground1
      end
      object lblTotalHorasGeralModelo3: TppLabel
        UserName = 'lblTotalHorasGeralModelo3'
        AutoSize = False
        Caption = 'lblTotalHorasGeralModelo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 174625
        mmTop = 3178
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
      object sumTotalHorasModelo3: TppDBCalc
        UserName = 'sumTotalHorasModelo3'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo3'
        mmHeight = 4498
        mmLeft = 76994
        mmTop = 2384
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object RelVisitaModelo4: TppReport
    AutoStop = False
    DataPipeline = dbRelVisitaModelo4
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 328
    Top = 192
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelVisitaModelo4'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object lblPeriodoModelo4: TppLabel
        UserName = 'lblPeriodoModelo4'
        AutoSize = False
        Caption = 'lblPeriodoModelo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 57150
        mmTop = 6350
        mmWidth = 92869
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 13758
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Qtde Visitas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 13758
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Total Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 13758
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 13758
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 16669
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169598
        mmTop = 0
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Visitas - Resumo por Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 69850
        mmTop = 0
        mmWidth = 62971
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'Tip_Codigo'
        DataPipeline = dbRelVisitaModelo4
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'Tip_Nome'
        DataPipeline = dbRelVisitaModelo4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 12171
        mmTop = 0
        mmWidth = 103717
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 124619
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground2
      end
      object txtQtdeHorasModelo4: TppDBText
        UserName = 'txtQtdeHorasModelo4'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 116681
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground2
      end
      object lblTotalHorasModelo4: TppLabel
        UserName = 'lblTotalHorasModelo4'
        AutoSize = False
        Caption = 'lblTotalHorasModelo4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo4
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 148961
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand4: TppSummaryBand
      BeforePrint = ppSummaryBand4BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Total Revenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4234
        mmLeft = 0
        mmTop = 2381
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'Rev_Codigo'
        DataPipeline = dbRelVisitaModelo4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 28310
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 123031
        mmTop = 2381
        mmWidth = 21960
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo4
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 148961
        mmTop = 2381
        mmWidth = 21960
        BandType = 7
        LayerName = Foreground2
      end
      object lblTotalHorasGeralModelo4: TppLabel
        UserName = 'lblTotalHorasGeralModelo4'
        AutoSize = False
        Caption = 'lblTotalHorasGeralModelo4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 2381
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground2
      end
      object sumTotalHorasModelo4: TppDBCalc
        UserName = 'sumTotalHorasModelo4'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo4'
        mmHeight = 4498
        mmLeft = 88900
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Rev_Codigo'
      DataPipeline = dbRelVisitaModelo4
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbRelVisitaModelo4'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLabel32: TppLabel
          UserName = 'Label32'
          Caption = 'Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 1852
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          DataField = 'Rev_Codigo'
          DataPipeline = dbRelVisitaModelo4
          DisplayFormat = '0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo4'
          mmHeight = 4498
          mmLeft = 16933
          mmTop = 1852
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'Rev_Nome'
          DataPipeline = dbRelVisitaModelo4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo4'
          mmHeight = 4498
          mmLeft = 28310
          mmTop = 1852
          mmWidth = 114300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand4BeforePrint
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLabel38: TppLabel
          UserName = 'Label38'
          Caption = 'Total Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4234
          mmLeft = 0
          mmTop = 2381
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'Rev_Codigo'
          DataPipeline = dbRelVisitaModelo4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbRelVisitaModelo4'
          mmHeight = 4498
          mmLeft = 28310
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 5027
          mmWidth = 196586
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'TotalValor'
          DataPipeline = dbRelVisitaModelo4
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo4'
          mmHeight = 4498
          mmLeft = 123031
          mmTop = 2381
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'QtdeChamados'
          DataPipeline = dbRelVisitaModelo4
          DisplayFormat = ',##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo4'
          mmHeight = 4498
          mmLeft = 148961
          mmTop = 2381
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object lblSubTotalHorasModelo4: TppLabel
          UserName = 'lblSubTotalHorasModelo4'
          AutoSize = False
          Caption = 'lblSubTotalHorasModelo4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 175684
          mmTop = 2381
          mmWidth = 19315
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object sumSubTotalHorasModelo4: TppDBCalc
          UserName = 'sumSubTotalHorasModelo4'
          DataField = 'TotalHoras'
          DataPipeline = dbRelVisitaModelo4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'dbRelVisitaModelo4'
          mmHeight = 4498
          mmLeft = 88900
          mmTop = 1852
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object CDSRelVisitaModelo7: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 248
    object CDSRelVisitaModelo7Rev_Codigo: TIntegerField
      FieldName = 'Rev_Codigo'
    end
    object CDSRelVisitaModelo7Rev_Nome: TStringField
      FieldName = 'Rev_Nome'
      Size = 50
    end
    object CDSRelVisitaModelo7Cli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
    end
    object CDSRelVisitaModelo7Cli_Nome: TStringField
      FieldName = 'Cli_Nome'
      Size = 100
    end
    object CDSRelVisitaModelo7Usu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
    end
    object CDSRelVisitaModelo7Usu_Nome: TStringField
      FieldName = 'Usu_Nome'
      Size = 50
    end
    object CDSRelVisitaModelo7DiasSemVisita: TIntegerField
      FieldName = 'DiasSemVisita'
    end
    object CDSRelVisitaModelo7DiasSemChamado: TIntegerField
      FieldName = 'DiasSemChamado'
    end
    object CDSRelVisitaModelo7DataUltChamado: TStringField
      FieldName = 'DataUltChamado'
      Size = 10
    end
    object CDSRelVisitaModelo7DiasSemVisitaStr: TStringField
      FieldName = 'DiasSemVisitaStr'
    end
    object CDSRelVisitaModelo7Cli_Perfil: TStringField
      FieldName = 'Cli_Perfil'
    end
    object CDSRelVisitaModelo7Cid_Nome: TStringField
      FieldName = 'Cid_Nome'
      Size = 60
    end
  end
  object dsRelVisitaModelo7: TDataSource
    DataSet = CDSRelVisitaModelo7
    Left = 144
    Top = 248
  end
  object dbRelVisitaModelo7: TppDBPipeline
    DataSource = dsRelVisitaModelo7
    UserName = 'dbRelVisitaModelo7'
    Left = 240
    Top = 248
    object dbRelVisitaModelo7ppField1: TppField
      FieldAlias = 'Rev_Codigo'
      FieldName = 'Rev_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField2: TppField
      FieldAlias = 'Rev_Nome'
      FieldName = 'Rev_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField3: TppField
      FieldAlias = 'Cli_Codigo'
      FieldName = 'Cli_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField4: TppField
      FieldAlias = 'Cli_Nome'
      FieldName = 'Cli_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField5: TppField
      FieldAlias = 'Usu_Codigo'
      FieldName = 'Usu_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField6: TppField
      FieldAlias = 'Usu_Nome'
      FieldName = 'Usu_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField7: TppField
      FieldAlias = 'DiasSemVisita'
      FieldName = 'DiasSemVisita'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField8: TppField
      FieldAlias = 'DiasSemChamado'
      FieldName = 'DiasSemChamado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField9: TppField
      FieldAlias = 'DataUltChamado'
      FieldName = 'DataUltChamado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField10: TppField
      FieldAlias = 'DiasSemVisitaStr'
      FieldName = 'DiasSemVisitaStr'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField11: TppField
      FieldAlias = 'Cli_Perfil'
      FieldName = 'Cli_Perfil'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo7ppField12: TppField
      FieldAlias = 'Cid_Nome'
      FieldName = 'Cid_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object RelVisitaModelo7: TppReport
    AutoStop = False
    DataPipeline = dbRelVisitaModelo7
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 328
    Top = 248
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelVisitaModelo7'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object lblPeriodoModelo7: TppLabel
        UserName = 'lblPeriodoModelo7'
        AutoSize = False
        Caption = 'lblPeriodoModelo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 57150
        mmTop = 6350
        mmWidth = 92869
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169598
        mmTop = 0
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Visitas - Clientes sem Visitas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 69850
        mmTop = 0
        mmWidth = 69850
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 17727
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 12171
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 12171
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Consultor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91017
        mmTop = 17727
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Sem Visita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132821
        mmTop = 16669
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 12171
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Sem Chamdo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 154782
        mmTop = 16669
        mmWidth = 18520
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = #218'lt.Chamado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 16669
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 22225
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 17727
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Perfil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 121179
        mmTop = 16669
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'Usu_Nome'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 91017
        mmTop = 0
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'DiasSemVisitaStr'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 134938
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'DiasSemChamado'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 156104
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'DataUltChamado'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 174096
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'Cid_Nome'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 60854
        mmTop = 0
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'Cli_Perfil'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 124619
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Cli_Nome'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 58738
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1323
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'Rev_Codigo'
        DataPipeline = dbRelVisitaModelo7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbRelVisitaModelo7'
        mmHeight = 4498
        mmLeft = 35983
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground4
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Rev_Codigo'
      DataPipeline = dbRelVisitaModelo7
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbRelVisitaModelo7'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLabel48: TppLabel
          UserName = 'Label48'
          Caption = 'Revenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 3440
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          DataField = 'Rev_Codigo'
          DataPipeline = dbRelVisitaModelo7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo7'
          mmHeight = 4498
          mmLeft = 17463
          mmTop = 3440
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBText32: TppDBText
          UserName = 'DBText32'
          DataField = 'Rev_Nome'
          DataPipeline = dbRelVisitaModelo7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbRelVisitaModelo7'
          mmHeight = 4498
          mmLeft = 31485
          mmTop = 3440
          mmWidth = 118534
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 8467
          mmWidth = 196586
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 5820
          mmWidth = 196586
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Total da Revenda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 1323
          mmWidth = 35983
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'Rev_Codigo'
          DataPipeline = dbRelVisitaModelo7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbRelVisitaModelo7'
          mmHeight = 4498
          mmLeft = 35983
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object CDSRelVisitaModelo8: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspRelVisitaModelo8'
    Left = 48
    Top = 296
    object CDSRelVisitaModelo8Cli_Perfil: TStringField
      FieldName = 'Cli_Perfil'
      Origin = 'Cli_Perfil'
    end
    object CDSRelVisitaModelo8QtdeChamados: TIntegerField
      FieldName = 'QtdeChamados'
      Origin = 'QtdeChamados'
      ReadOnly = True
    end
    object CDSRelVisitaModelo8TotalHoras: TFloatField
      FieldName = 'TotalHoras'
      Origin = 'TotalHoras'
      ReadOnly = True
    end
    object CDSRelVisitaModelo8TotalValor: TCurrencyField
      FieldName = 'TotalValor'
      Origin = 'TotalValor'
      ReadOnly = True
    end
    object CDSRelVisitaModelo8Sum_TotalHoras: TAggregateField
      FieldName = 'Sum_TotalHoras'
      Active = True
      DisplayName = ''
      Expression = 'Sum(TotalHoras)'
    end
  end
  object dsRelVisitaModelo8: TDataSource
    DataSet = CDSRelVisitaModelo8
    Left = 144
    Top = 296
  end
  object dbRelVisitaModelo8: TppDBPipeline
    DataSource = dsRelVisitaModelo8
    UserName = 'dbRelVisitaModelo8'
    Left = 240
    Top = 296
    object dbRelVisitaModelo8ppField1: TppField
      FieldAlias = 'Cli_Perfil'
      FieldName = 'Cli_Perfil'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo8ppField2: TppField
      FieldAlias = 'QtdeChamados'
      FieldName = 'QtdeChamados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo8ppField3: TppField
      FieldAlias = 'TotalHoras'
      FieldName = 'TotalHoras'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbRelVisitaModelo8ppField4: TppField
      FieldAlias = 'TotalValor'
      FieldName = 'TotalValor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object RelVisitaModelo8: TppReport
    AutoStop = False
    DataPipeline = dbRelVisitaModelo8
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 328
    Top = 296
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelVisitaModelo8'
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object lblPeriodoModelo8: TppLabel
        UserName = 'lblPeriodoModelo8'
        AutoSize = False
        Caption = 'lblPeriodoModelo3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 57150
        mmTop = 6350
        mmWidth = 92869
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable16'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 169598
        mmTop = 0
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Visitas - Resumo por Perfil de Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 59796
        mmTop = 0
        mmWidth = 90223
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable17'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable18'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Perfil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12171
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Qtde Visitas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 136241
        mmTop = 12171
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Total Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 161905
        mmTop = 12171
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 111899
        mmTop = 12171
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 15875
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Horas(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 12171
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand6: TppDetailBand
      BeforePrint = ppDetailBand6BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'Cli_Perfil'
        DataPipeline = dbRelVisitaModelo8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 794
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground5
      end
      object txtQtdeHorasModelo8: TppDBText
        UserName = 'txtQtdeHorasModelo8'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 102109
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo8
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 111899
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo8
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 141268
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object lblTotalHorasModelo8: TppLabel
        UserName = 'lblTotalHorasModelo8'
        AutoSize = False
        Caption = 'lblTotalHorasModelo8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 159260
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground5
      end
      object lblPerc8: TppLabel
        UserName = 'lblPerc8'
        AutoSize = False
        Caption = 'lblPerc8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 185473
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppSummaryBand6: TppSummaryBand
      BeforePrint = ppSummaryBand6BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 3175
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'Cli_Perfil'
        DataPipeline = dbRelVisitaModelo8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 25400
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'TotalValor'
        DataPipeline = dbRelVisitaModelo8
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 111899
        mmTop = 3175
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'QtdeChamados'
        DataPipeline = dbRelVisitaModelo8
        DisplayFormat = ',##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 138622
        mmTop = 3175
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground5
      end
      object lblTotalHorasGeralModelo8: TppLabel
        UserName = 'lblTotalHorasGeralModelo8'
        AutoSize = False
        Caption = 'lblTotalHorasGeralModelo8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 161905
        mmTop = 3175
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground5
      end
      object sumTotalHorasModelo8: TppDBCalc
        UserName = 'sumTotalHorasModelo8'
        DataField = 'TotalHoras'
        DataPipeline = dbRelVisitaModelo8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbRelVisitaModelo8'
        mmHeight = 4498
        mmLeft = 76994
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground5
      end
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
end
