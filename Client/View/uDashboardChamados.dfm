object frmDashboardChamados: TfrmDashboardChamados
  Left = 0
  Top = 0
  Caption = 'Chamados'
  ClientHeight = 801
  ClientWidth = 1278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1278
    Height = 719
    ActivePage = ts1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Atendimentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1270
        Height = 323
        Align = alTop
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Chart1: TChart
          Left = 1
          Top = 1
          Width = 400
          Height = 321
          AllowPanning = pmNone
          BackWall.Pen.Visible = False
          BottomWall.Brush.Gradient.EndColor = clSilver
          BottomWall.Brush.Gradient.StartColor = clGray
          BottomWall.Brush.Gradient.Visible = True
          BottomWall.Pen.Color = clGray
          BottomWall.Size = 4
          Gradient.Direction = gdFromTopLeft
          Gradient.EndColor = clWhite
          Gradient.StartColor = clSilver
          Gradient.Visible = True
          LeftWall.Brush.Gradient.EndColor = clSilver
          LeftWall.Brush.Gradient.StartColor = clGray
          LeftWall.Brush.Gradient.Visible = True
          LeftWall.Color = clWhite
          LeftWall.Pen.Color = clGray
          LeftWall.Size = 4
          Legend.CheckBoxesStyle = cbsRadio
          Legend.Font.Height = -25
          Legend.LegendStyle = lsValues
          Legend.TextStyle = ltsPlain
          Legend.Title.Font.Height = -25
          Title.Font.Color = clBlack
          Title.Font.Height = -24
          Title.Font.Style = [fsBold]
          Title.Font.Shadow.Color = clGray
          Title.Font.Shadow.HorizSize = 1
          Title.Font.Shadow.SmoothBlur = 2
          Title.Font.Shadow.VertSize = 1
          Title.Text.Strings = (
            'Tempo M'#233'dio para In'#237'cio do Atendimento')
          BottomAxis.Grid.Color = 14540253
          BottomAxis.LabelsFormat.Font.Color = clGray
          BottomAxis.LabelsFormat.Font.Height = -9
          BottomAxis.LabelsFormat.TextAlignment = taCenter
          BottomAxis.LabelStyle = talValue
          Chart3DPercent = 100
          ClipPoints = False
          DepthAxis.LabelsFormat.TextAlignment = taCenter
          DepthTopAxis.LabelsFormat.TextAlignment = taCenter
          Frame.Visible = False
          LeftAxis.Grid.Color = 14540253
          LeftAxis.LabelsFormat.Font.Color = clGray
          LeftAxis.LabelsFormat.Font.Height = -9
          LeftAxis.LabelsFormat.TextAlignment = taCenter
          LeftAxis.LabelStyle = talValue
          RightAxis.LabelsFormat.TextAlignment = taCenter
          TopAxis.LabelsFormat.TextAlignment = taCenter
          View3DOptions.Elevation = 350
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 55
          View3DOptions.Zoom = 90
          Zoom.Animated = True
          Zoom.Pen.Mode = pmNotXor
          Align = alLeft
          BevelWidth = 2
          Color = clWhite
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            30
            15
            30)
          ColorPaletteIndex = 6
          object Series2: TBarSeries
            ColorEachPoint = True
            Marks.Visible = True
            MultiBar = mbStacked
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            Left = 24
            Top = 280
            Data = {
              04060000000000000000E06F40FF060000004E6976656C310000000000806640
              FF060000004E6976656C320000000000506440FF060000004E6976656C330000
              000000D06640FF000000000000000000706C40FF000000000000000000E06540
              FF00000000}
          end
        end
        object Panel3: TPanel
          Left = 401
          Top = 1
          Width = 868
          Height = 321
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Panel4: TPanel
            Left = 1
            Top = 249
            Width = 866
            Height = 71
            Align = alBottom
            BevelOuter = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 32
              Top = 24
              Width = 196
              Height = 39
              Caption = 'Total Horas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 424
              Top = 24
              Width = 211
              Height = 39
              Caption = 'M'#233'dia Horas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtTotalHorasInicio: TEdit
              Left = 234
              Top = 16
              Width = 160
              Height = 47
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = '00:00'
            end
            object edtMediaHoraInicio: TEdit
              Left = 626
              Top = 16
              Width = 160
              Height = 47
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              Text = '00:00'
            end
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 866
            Height = 248
            Align = alClient
            DataSource = dsChamado
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Perfil'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -27
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QtdeChamados'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -27
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Horas'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -27
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
                Visible = True
              end>
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 323
        Width = 1270
        Height = 368
        Align = alClient
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Panel6: TPanel
          Left = 401
          Top = 1
          Width = 868
          Height = 366
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Panel7: TPanel
            Left = 1
            Top = 292
            Width = 866
            Height = 73
            Align = alBottom
            BevelOuter = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label2: TLabel
              Left = 32
              Top = 20
              Width = 196
              Height = 39
              Caption = 'Total Horas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 424
              Top = 20
              Width = 211
              Height = 39
              Caption = 'M'#233'dia Horas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtTotalHorasAtendimento: TEdit
              Left = 234
              Top = 12
              Width = 160
              Height = 47
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = '00:00'
            end
            object edtMediaHorasAtendimento: TEdit
              Left = 626
              Top = 12
              Width = 160
              Height = 47
              Alignment = taCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              Text = '00:00'
            end
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 866
            Height = 291
            Align = alClient
            DataSource = dsAtendimento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Perfil'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -27
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'QtdeChamados'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -27
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Horas'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -27
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 300
                Visible = True
              end>
          end
        end
        object Chart2: TChart
          Left = 1
          Top = 1
          Width = 400
          Height = 366
          AllowPanning = pmNone
          BackWall.Pen.Visible = False
          BottomWall.Brush.Gradient.EndColor = clSilver
          BottomWall.Brush.Gradient.StartColor = clGray
          BottomWall.Brush.Gradient.Visible = True
          BottomWall.Pen.Color = clGray
          BottomWall.Size = 4
          Gradient.Direction = gdFromTopLeft
          Gradient.EndColor = clWhite
          Gradient.StartColor = clSilver
          Gradient.Visible = True
          LeftWall.Brush.Gradient.EndColor = clSilver
          LeftWall.Brush.Gradient.StartColor = clGray
          LeftWall.Brush.Gradient.Visible = True
          LeftWall.Color = clWhite
          LeftWall.Pen.Color = clGray
          LeftWall.Size = 4
          Legend.CheckBoxesStyle = cbsRadio
          Legend.Font.Height = -25
          Legend.LegendStyle = lsValues
          Legend.TextStyle = ltsPlain
          Legend.Title.Font.Height = -25
          Title.Font.Color = clBlack
          Title.Font.Height = -24
          Title.Font.Style = [fsBold]
          Title.Font.Shadow.Color = clGray
          Title.Font.Shadow.HorizSize = 1
          Title.Font.Shadow.SmoothBlur = 2
          Title.Font.Shadow.VertSize = 1
          Title.Text.Strings = (
            'Tempo M'#233'dio Em Atendimento')
          BottomAxis.Grid.Color = 14540253
          BottomAxis.LabelsFormat.Font.Color = clGray
          BottomAxis.LabelsFormat.Font.Height = -9
          BottomAxis.LabelsFormat.TextAlignment = taCenter
          BottomAxis.LabelStyle = talValue
          Chart3DPercent = 100
          ClipPoints = False
          DepthAxis.LabelsFormat.TextAlignment = taCenter
          DepthTopAxis.LabelsFormat.TextAlignment = taCenter
          Frame.Visible = False
          LeftAxis.Grid.Color = 14540253
          LeftAxis.LabelsFormat.Font.Color = clGray
          LeftAxis.LabelsFormat.Font.Height = -9
          LeftAxis.LabelsFormat.TextAlignment = taCenter
          LeftAxis.LabelStyle = talValue
          RightAxis.LabelsFormat.TextAlignment = taCenter
          TopAxis.LabelsFormat.TextAlignment = taCenter
          View3DOptions.Elevation = 350
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 55
          View3DOptions.Zoom = 90
          Zoom.Animated = True
          Zoom.Pen.Mode = pmNotXor
          Align = alLeft
          BevelWidth = 2
          Color = clWhite
          TabOrder = 1
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            30
            15
            30)
          ColorPaletteIndex = 6
          object BarSeries1: TBarSeries
            ColorEachPoint = True
            Marks.Visible = True
            MultiBar = mbStacked
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            Left = 24
            Top = 280
            Data = {
              04060000000000000000E06F40FF060000004E6976656C310000000000806640
              FF060000004E6976656C320000000000506440FF060000004E6976656C330000
              000000D06640FF000000000000000000706C40FF000000000000000000E06540
              FF00000000}
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 760
    Width = 1278
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 1278
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label5: TLabel
      Left = 416
      Top = 14
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object edtData: TMaskEdit
      Left = 445
      Top = 11
      Width = 84
      Height = 21
      EditMask = '##/##/####'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = edtDataExit
    end
    object btnPesquisar: TBitBtn
      Left = 535
      Top = 10
      Width = 114
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
  end
  object cdsInicioAtendimento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 72
    object cdsInicioAtendimentoNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object cdsInicioAtendimentoMedia: TFloatField
      FieldName = 'Media'
    end
    object cdsInicioAtendimentoHoras: TStringField
      FieldName = 'Horas'
      Size = 10
    end
  end
  object dsInicioAtendimento: TDataSource
    DataSet = cdsInicioAtendimento
    Left = 96
    Top = 72
  end
  object dsChamado: TDataSource
    DataSet = cdsChamado
    Left = 832
    Top = 112
  end
  object cdsChamado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    Left = 776
    Top = 112
    object cdsChamadoNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object cdsChamadoQtde: TFloatField
      FieldName = 'Qtde'
    end
    object cdsChamadoHoras: TStringField
      FieldName = 'Horas'
      Size = 10
    end
    object cdsChamadoQtdeChamados: TFloatField
      FieldName = 'QtdeChamados'
    end
    object cdsChamadoPerfil: TStringField
      FieldName = 'Perfil'
      Size = 10
    end
  end
  object cdsAtendimento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 120
    object cdsAtendimentoNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object cdsAtendimentoQtde: TFloatField
      FieldName = 'Qtde'
    end
    object cdsAtendimentoHoras: TStringField
      FieldName = 'Horas'
      Size = 10
    end
    object cdsAtendimentoQtdeChamados: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QtdeChamados'
    end
    object cdsAtendimentoPerfil: TStringField
      FieldName = 'Perfil'
      Size = 10
    end
  end
  object dsAtendimento: TDataSource
    DataSet = cdsAtendimento
    Left = 632
    Top = 120
  end
end
