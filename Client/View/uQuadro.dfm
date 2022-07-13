object frmQuadro: TfrmQuadro
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Quadro'
  ClientHeight = 630
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1018
    Height = 630
    ActivePage = tsChamados
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tsChamados: TTabSheet
      Caption = 'Chamados'
      OnShow = tsChamadosShow
      object Panel13: TPanel
        Left = 0
        Top = 561
        Width = 1010
        Height = 41
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 2
        object btnSolucoes: TBitBtn
          Left = 7
          Top = 6
          Width = 121
          Height = 25
          Caption = 'Solu'#231#245'es'
          TabOrder = 0
          OnClick = btnSolucoesClick
        end
        object btnBuscarCliente: TBitBtn
          Left = 131
          Top = 6
          Width = 121
          Height = 25
          Caption = 'Clientes'
          TabOrder = 1
          TabStop = False
          OnClick = btnBuscarClienteClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 512
        Height = 561
        Align = alLeft
        TabOrder = 0
        object pnlCha1: TPanel
          Left = 1
          Top = 1
          Width = 510
          Height = 171
          Align = alTop
          TabOrder = 0
          object lblTitulo1: TLabel
            Left = 135
            Top = 1
            Width = 370
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chamados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbQuadro1: TDBGrid
            Left = 1
            Top = 32
            Width = 508
            Height = 138
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dsQuadro1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmQuadro1
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadro1DrawColumnCell
            OnDblClick = dbQuadro1DblClick
            OnTitleClick = dbQuadro1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Cha_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_DataAbertura'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_HoraAbertura'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nivel'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tip_Nome'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 113
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CTempo'
                Title.Caption = 'Tempo'
                Width = 47
                Visible = True
              end>
          end
          object btnAbrirChamado: TBitBtn
            Left = 8
            Top = 1
            Width = 121
            Height = 25
            Caption = 'Abrir Chamado'
            TabOrder = 0
            OnClick = btnAbrirChamadoClick
          end
        end
        object pnlCha3: TPanel
          Left = 1
          Top = 172
          Width = 510
          Height = 185
          Align = alTop
          TabOrder = 1
          object lblTitulo3: TLabel
            Left = 1
            Top = 1
            Width = 508
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chamados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 5
            ExplicitTop = 12
            ExplicitWidth = 512
          end
          object dbQuadro3: TDBGrid
            Left = 1
            Top = 15
            Width = 508
            Height = 169
            Align = alClient
            DataSource = dsQuadro3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmQuadro3
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadro3DrawColumnCell
            OnDblClick = dbQuadro1DblClick
            OnTitleClick = dbQuadro3TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Cha_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_DataAbertura'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_HoraAbertura'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nivel'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tip_Nome'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTempo'
                Width = 47
                Visible = True
              end>
          end
        end
        object pnlCha5: TPanel
          Left = 1
          Top = 357
          Width = 510
          Height = 203
          Align = alClient
          TabOrder = 2
          object lblTitulo5: TLabel
            Left = 1
            Top = 1
            Width = 508
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chamados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 5
            ExplicitTop = 12
            ExplicitWidth = 512
          end
          object dbQuadro5: TDBGrid
            Left = 1
            Top = 15
            Width = 508
            Height = 187
            Align = alClient
            DataSource = dsQuadro5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmQuadro5
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadro5DrawColumnCell
            OnDblClick = dbQuadro1DblClick
            OnTitleClick = dbQuadro5TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Cha_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_DataAbertura'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_HoraAbertura'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nivel'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tip_Nome'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTempo'
                Width = 47
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 512
        Top = 0
        Width = 498
        Height = 561
        Align = alClient
        TabOrder = 1
        object pnlCha2: TPanel
          Left = 1
          Top = 1
          Width = 496
          Height = 170
          Align = alTop
          TabOrder = 0
          object lblTitulo2: TLabel
            Left = 1
            Top = 1
            Width = 494
            Height = 32
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chamados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 5
          end
          object dbQuadro2: TDBGrid
            Left = 1
            Top = 33
            Width = 494
            Height = 136
            Align = alClient
            DataSource = dsQuadro2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmQuadro2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadro2DrawColumnCell
            OnDblClick = dbQuadro1DblClick
            OnTitleClick = dbQuadro2TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Cha_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_DataAbertura'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_HoraAbertura'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nivel'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tip_Nome'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 113
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CTempo'
                Width = 47
                Visible = True
              end>
          end
        end
        object pnlCha4: TPanel
          Left = 1
          Top = 171
          Width = 496
          Height = 185
          Align = alTop
          TabOrder = 1
          object lblTitulo4: TLabel
            Left = 1
            Top = 1
            Width = 494
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chamados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 5
            ExplicitTop = 12
            ExplicitWidth = 512
          end
          object dbQuadro4: TDBGrid
            Left = 1
            Top = 15
            Width = 494
            Height = 169
            Align = alClient
            DataSource = dsQuadro4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmQuadro4
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadro4DrawColumnCell
            OnDblClick = dbQuadro1DblClick
            OnTitleClick = dbQuadro4TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Cha_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_DataAbertura'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_HoraAbertura'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nivel'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tip_Nome'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTempo'
                Width = 47
                Visible = True
              end>
          end
        end
        object pnlCha6: TPanel
          Left = 1
          Top = 356
          Width = 496
          Height = 204
          Align = alClient
          TabOrder = 2
          object lblTitulo6: TLabel
            Left = 1
            Top = 1
            Width = 494
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Chamados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 12
            ExplicitWidth = 512
          end
          object dbQuadro6: TDBGrid
            Left = 1
            Top = 15
            Width = 494
            Height = 188
            Align = alClient
            DataSource = dsQuadro6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmQuadro6
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadro6DrawColumnCell
            OnDblClick = dbQuadro1DblClick
            OnTitleClick = dbQuadro6TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Cha_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_DataAbertura'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cha_HoraAbertura'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nivel'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tip_Nome'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CTempo'
                Width = 47
                Visible = True
              end>
          end
        end
      end
    end
    object tsSolicitacao: TTabSheet
      Caption = 'Solicita'#231#245'es'
      ImageIndex = 1
      OnShow = tsSolicitacaoShow
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 340
        Height = 602
        Align = alLeft
        TabOrder = 0
        object pnlSol1: TPanel
          Left = 1
          Top = 1
          Width = 338
          Height = 150
          Align = alTop
          TabOrder = 0
          object dbQuadroSol1: TDBGrid
            Left = 1
            Top = 42
            Width = 336
            Height = 107
            Align = alClient
            DataSource = dsQuadroSol1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 336
            Height = 41
            Align = alTop
            TabOrder = 1
            object lblTitSolicitacao1: TLabel
              Left = 133
              Top = 0
              Width = 201
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Solicitacao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnAbrirSolicitacao: TBitBtn
              Left = 7
              Top = 5
              Width = 121
              Height = 25
              Caption = 'Abrir Solicita'#231#227'o'
              TabOrder = 0
              OnClick = btnAbrirSolicitacaoClick
            end
          end
        end
        object pnlSol4: TPanel
          Left = 1
          Top = 151
          Width = 338
          Height = 150
          Align = alTop
          TabOrder = 1
          object lblTitSolicitacao4: TLabel
            Left = 1
            Top = 1
            Width = 336
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol4: TDBGrid
            Left = 1
            Top = 15
            Width = 336
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao4
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol7: TPanel
          Left = 1
          Top = 301
          Width = 338
          Height = 150
          Align = alTop
          TabOrder = 2
          object lblTitSolicitacao7: TLabel
            Left = 1
            Top = 1
            Width = 336
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol7: TDBGrid
            Left = 1
            Top = 15
            Width = 336
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao7
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol10: TPanel
          Left = 1
          Top = 451
          Width = 338
          Height = 150
          Align = alClient
          TabOrder = 3
          object lblTitSolicitacao10: TLabel
            Left = 1
            Top = 1
            Width = 336
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol10: TDBGrid
            Left = 1
            Top = 15
            Width = 336
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao10
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
      end
      object Panel11: TPanel
        Left = 340
        Top = 0
        Width = 340
        Height = 602
        Align = alLeft
        TabOrder = 1
        object pnlSol2: TPanel
          Left = 1
          Top = 1
          Width = 338
          Height = 150
          Align = alTop
          Caption = 'Panel14'
          TabOrder = 0
          object dbQuadroSol2: TDBGrid
            Left = 1
            Top = 42
            Width = 336
            Height = 107
            Align = alClient
            DataSource = dsQuadroSol2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 336
            Height = 41
            Align = alTop
            TabOrder = 1
            object lblTitSolicitacao2: TLabel
              Left = 1
              Top = 1
              Width = 334
              Height = 14
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Solicitacao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 2
              ExplicitTop = 9
            end
          end
        end
        object pnlSol5: TPanel
          Left = 1
          Top = 151
          Width = 338
          Height = 150
          Align = alTop
          TabOrder = 1
          object lblTitSolicitacao5: TLabel
            Left = 1
            Top = 1
            Width = 336
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = -9
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol5: TDBGrid
            Left = 1
            Top = 15
            Width = 336
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao5
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol8: TPanel
          Left = 1
          Top = 301
          Width = 338
          Height = 150
          Align = alTop
          TabOrder = 2
          object lblTitSolicitacao8: TLabel
            Left = 1
            Top = 1
            Width = 336
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol8: TDBGrid
            Left = 1
            Top = 15
            Width = 336
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao8
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol11: TPanel
          Left = 1
          Top = 451
          Width = 338
          Height = 150
          Align = alClient
          TabOrder = 3
          object lblTitSolicitacao11: TLabel
            Left = 1
            Top = 1
            Width = 336
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol11: TDBGrid
            Left = 1
            Top = 15
            Width = 336
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao11
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
      end
      object Panel9: TPanel
        Left = 680
        Top = 0
        Width = 330
        Height = 602
        Align = alClient
        TabOrder = 2
        object pnlSol6: TPanel
          Left = 1
          Top = 151
          Width = 328
          Height = 150
          Align = alTop
          TabOrder = 1
          object lblTitSolicitacao6: TLabel
            Left = 1
            Top = 1
            Width = 326
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 3
            ExplicitTop = 5
            ExplicitWidth = 328
          end
          object dbQuadroSol6: TDBGrid
            Left = 1
            Top = 15
            Width = 326
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao6
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol12: TPanel
          Left = 1
          Top = 451
          Width = 328
          Height = 150
          Align = alClient
          TabOrder = 3
          object lblTitSolicitacao12: TLabel
            Left = 1
            Top = 1
            Width = 326
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol12: TDBGrid
            Left = 1
            Top = 15
            Width = 326
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao12
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol9: TPanel
          Left = 1
          Top = 301
          Width = 328
          Height = 150
          Align = alTop
          TabOrder = 2
          object lblTitSolicitacao9: TLabel
            Left = 1
            Top = 1
            Width = 326
            Height = 14
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 8
            ExplicitTop = 12
            ExplicitWidth = 328
          end
          object dbQuadroSol9: TDBGrid
            Left = 1
            Top = 15
            Width = 326
            Height = 134
            Align = alClient
            DataSource = dsQuadroSol9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao9
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
        end
        object pnlSol3: TPanel
          Left = 1
          Top = 1
          Width = 328
          Height = 150
          Align = alTop
          TabOrder = 0
          object dbQuadroSol3: TDBGrid
            Left = 1
            Top = 42
            Width = 326
            Height = 107
            Align = alClient
            DataSource = dsQuadroSol3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = pmSolicitacao3
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbQuadroSol1DrawColumnCell
            OnDblClick = dbQuadroSol1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Sol_Id'
                Title.Alignment = taCenter
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cli_Nome'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sol_Titulo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usu_Nome'
                Width = 60
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 326
            Height = 41
            Align = alTop
            TabOrder = 1
            object lblTitSolicitacao3: TLabel
              Left = 1
              Top = 1
              Width = 324
              Height = 14
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Solicitacao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 2
              ExplicitTop = 9
            end
          end
        end
      end
    end
    object tsCodigos: TTabSheet
      Caption = 'tsCodigos'
      ImageIndex = 2
      object edtChaCodigo1: TEdit
        Left = 24
        Top = 32
        Width = 65
        Height = 21
        TabOrder = 0
        Text = 'edtChaCodigo1'
      end
      object edtChaCodigo2: TEdit
        Left = 24
        Top = 59
        Width = 65
        Height = 21
        TabOrder = 4
        Text = 'edtChaCodigo2'
      end
      object edtChaCodigo3: TEdit
        Left = 24
        Top = 86
        Width = 65
        Height = 21
        TabOrder = 8
        Text = 'edtChaCodigo3'
      end
      object edtChaCodigo4: TEdit
        Left = 24
        Top = 113
        Width = 65
        Height = 21
        TabOrder = 12
        Text = 'edtChaCodigo4'
      end
      object edtChaCodigo5: TEdit
        Left = 24
        Top = 140
        Width = 65
        Height = 21
        TabOrder = 16
        Text = 'edtChaCodigo5'
      end
      object edtChaCodigo6: TEdit
        Left = 24
        Top = 167
        Width = 65
        Height = 21
        TabOrder = 20
        Text = 'edtChaCodigo6'
      end
      object edtSolCodigo1: TEdit
        Left = 184
        Top = 32
        Width = 65
        Height = 21
        TabOrder = 1
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo2: TEdit
        Left = 184
        Top = 59
        Width = 65
        Height = 21
        TabOrder = 5
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo3: TEdit
        Left = 184
        Top = 86
        Width = 65
        Height = 21
        TabOrder = 9
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo4: TEdit
        Left = 184
        Top = 113
        Width = 65
        Height = 21
        TabOrder = 13
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo5: TEdit
        Left = 184
        Top = 140
        Width = 65
        Height = 21
        TabOrder = 17
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo6: TEdit
        Left = 184
        Top = 167
        Width = 65
        Height = 21
        TabOrder = 21
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo7: TEdit
        Left = 255
        Top = 32
        Width = 65
        Height = 21
        TabOrder = 2
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo8: TEdit
        Left = 255
        Top = 59
        Width = 65
        Height = 21
        TabOrder = 6
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo9: TEdit
        Left = 255
        Top = 86
        Width = 65
        Height = 21
        TabOrder = 10
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo10: TEdit
        Left = 255
        Top = 113
        Width = 65
        Height = 21
        TabOrder = 14
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo11: TEdit
        Left = 255
        Top = 140
        Width = 65
        Height = 21
        TabOrder = 18
        Text = 'edtChaCodigo1'
      end
      object edtSolCodigo12: TEdit
        Left = 255
        Top = 167
        Width = 65
        Height = 21
        TabOrder = 22
        Text = 'edtChaCodigo1'
      end
      object edtAtivCodigo1: TEdit
        Left = 384
        Top = 32
        Width = 65
        Height = 21
        TabOrder = 3
        Text = 'edtChaCodigo1'
      end
      object edtAtivCodigo2: TEdit
        Left = 384
        Top = 59
        Width = 65
        Height = 21
        TabOrder = 7
        Text = 'edtChaCodigo2'
      end
      object edtAtivCodigo3: TEdit
        Left = 384
        Top = 86
        Width = 65
        Height = 21
        TabOrder = 11
        Text = 'edtChaCodigo3'
      end
      object edtAtivCodigo4: TEdit
        Left = 384
        Top = 113
        Width = 65
        Height = 21
        TabOrder = 15
        Text = 'edtChaCodigo4'
      end
      object edtAtivCodigo5: TEdit
        Left = 384
        Top = 140
        Width = 65
        Height = 21
        TabOrder = 19
        Text = 'edtChaCodigo5'
      end
      object edtAtivCodigo6: TEdit
        Left = 384
        Top = 167
        Width = 65
        Height = 21
        TabOrder = 23
        Text = 'edtChaCodigo6'
      end
    end
    object tsAtividades: TTabSheet
      Caption = 'Atividades'
      ImageIndex = 3
      OnShow = tsAtividadesShow
      object Panel25: TPanel
        Left = 0
        Top = 0
        Width = 1010
        Height = 602
        Align = alClient
        TabOrder = 0
        object Panel26: TPanel
          Left = 1
          Top = 1
          Width = 512
          Height = 559
          Align = alLeft
          TabOrder = 0
          object pnlAtiv1: TPanel
            Left = 1
            Top = 1
            Width = 510
            Height = 185
            Align = alTop
            TabOrder = 0
            object lblTitAtiv1: TLabel
              Left = 135
              Top = 1
              Width = 370
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chamados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbAtivQuadro1: TDBGrid
              Left = 1
              Top = 33
              Width = 508
              Height = 151
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = dsAtivQuadro1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = pmAtivQuadro1
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbAtivQuadro1DrawColumnCell
              OnDblClick = dbAtivQuadro1DblClick
              OnTitleClick = dbQuadro1TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cha_Id'
                  Title.Alignment = taCenter
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_DataAbertura'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_HoraAbertura'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cli_Nome'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nivel'
                  Title.Alignment = taCenter
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tip_Nome'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Usu_Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CTempo'
                  Width = 47
                  Visible = True
                end>
            end
            object btnAbrirAtividade: TBitBtn
              Left = 8
              Top = 1
              Width = 121
              Height = 25
              Caption = 'Abrir Atividade'
              TabOrder = 0
              OnClick = btnAbrirAtividadeClick
            end
          end
          object pnlAtiv3: TPanel
            Left = 1
            Top = 186
            Width = 510
            Height = 185
            Align = alTop
            TabOrder = 1
            object lblTitAtiv3: TLabel
              Left = 1
              Top = 1
              Width = 508
              Height = 14
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chamados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 5
              ExplicitTop = 12
              ExplicitWidth = 512
            end
            object dbAtivQuadro3: TDBGrid
              Left = 1
              Top = 15
              Width = 508
              Height = 169
              Align = alClient
              DataSource = dsAtivQuadro3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = pmAtivQuadro3
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbAtivQuadro1DrawColumnCell
              OnDblClick = dbAtivQuadro1DblClick
              OnTitleClick = dbQuadro3TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cha_Id'
                  Title.Alignment = taCenter
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_DataAbertura'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_HoraAbertura'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cli_Nome'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nivel'
                  Title.Alignment = taCenter
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tip_Nome'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Usu_Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CTempo'
                  Width = 47
                  Visible = True
                end>
            end
          end
          object pnlAtiv5: TPanel
            Left = 1
            Top = 371
            Width = 510
            Height = 187
            Align = alClient
            TabOrder = 2
            object lblTitAtiv5: TLabel
              Left = 1
              Top = 1
              Width = 508
              Height = 14
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chamados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 5
              ExplicitTop = 12
              ExplicitWidth = 512
            end
            object dbAtivQuadro5: TDBGrid
              Left = 1
              Top = 15
              Width = 508
              Height = 171
              Align = alClient
              DataSource = dsAtivQuadro5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = pmAtivQuadro5
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbAtivQuadro1DrawColumnCell
              OnDblClick = dbAtivQuadro1DblClick
              OnTitleClick = dbQuadro5TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cha_Id'
                  Title.Alignment = taCenter
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_DataAbertura'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_HoraAbertura'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cli_Nome'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nivel'
                  Title.Alignment = taCenter
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tip_Nome'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Usu_Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CTempo'
                  Width = 47
                  Visible = True
                end>
            end
          end
        end
        object Panel30: TPanel
          Left = 513
          Top = 1
          Width = 496
          Height = 559
          Align = alClient
          TabOrder = 1
          object pnlAtiv2: TPanel
            Left = 1
            Top = 1
            Width = 494
            Height = 185
            Align = alTop
            TabOrder = 0
            object lblTitAtiv2: TLabel
              Left = 1
              Top = 1
              Width = 492
              Height = 32
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chamados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 4
              ExplicitTop = 5
              ExplicitWidth = 494
            end
            object dbAtivQuadro2: TDBGrid
              Left = 1
              Top = 33
              Width = 492
              Height = 151
              Align = alClient
              DataSource = dsAtivQuadro2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = pmAtivQuadro2
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbAtivQuadro1DrawColumnCell
              OnDblClick = dbAtivQuadro1DblClick
              OnTitleClick = dbQuadro2TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cha_Id'
                  Title.Alignment = taCenter
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_DataAbertura'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_HoraAbertura'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cli_Nome'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nivel'
                  Title.Alignment = taCenter
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tip_Nome'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Usu_Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CTempo'
                  Width = 47
                  Visible = True
                end>
            end
          end
          object pnlAtiv4: TPanel
            Left = 1
            Top = 186
            Width = 494
            Height = 185
            Align = alTop
            TabOrder = 1
            object lblTitAtiv4: TLabel
              Left = 1
              Top = 1
              Width = 492
              Height = 14
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chamados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 5
              ExplicitTop = 12
              ExplicitWidth = 512
            end
            object dbAtivQuadro4: TDBGrid
              Left = 1
              Top = 15
              Width = 492
              Height = 169
              Align = alClient
              DataSource = dsAtivQuadro4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = pmAtivQuadro4
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbAtivQuadro1DrawColumnCell
              OnDblClick = dbAtivQuadro1DblClick
              OnTitleClick = dbQuadro4TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cha_Id'
                  Title.Alignment = taCenter
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_DataAbertura'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_HoraAbertura'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cli_Nome'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nivel'
                  Title.Alignment = taCenter
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tip_Nome'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Usu_Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CTempo'
                  Width = 47
                  Visible = True
                end>
            end
          end
          object pnlAtiv6: TPanel
            Left = 1
            Top = 371
            Width = 494
            Height = 187
            Align = alClient
            TabOrder = 2
            object lblTitAtiv6: TLabel
              Left = 1
              Top = 1
              Width = 492
              Height = 14
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chamados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 0
              ExplicitTop = 12
              ExplicitWidth = 512
            end
            object dbAtivQuadro6: TDBGrid
              Left = 1
              Top = 15
              Width = 492
              Height = 171
              Align = alClient
              DataSource = dsAtivQuadro6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              PopupMenu = pmAtivQuadro6
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbAtivQuadro1DrawColumnCell
              OnDblClick = dbAtivQuadro1DblClick
              OnTitleClick = dbQuadro6TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cha_Id'
                  Title.Alignment = taCenter
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_DataAbertura'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cha_HoraAbertura'
                  Width = 37
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cli_Nome'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nivel'
                  Title.Alignment = taCenter
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Tip_Nome'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Usu_Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CTempo'
                  Width = 47
                  Visible = True
                end>
            end
          end
        end
        object Panel34: TPanel
          Left = 1
          Top = 560
          Width = 1008
          Height = 41
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 2
          object btnSolucoes2: TBitBtn
            Left = 7
            Top = 6
            Width = 121
            Height = 25
            Caption = 'Solu'#231#245'es'
            TabOrder = 0
            OnClick = btnSolucoes2Click
          end
          object btnBuscarCliente2: TBitBtn
            Left = 131
            Top = 6
            Width = 121
            Height = 25
            Caption = 'Clientes'
            TabOrder = 1
            TabStop = False
            OnClick = btnBuscarClienteClick
          end
        end
      end
    end
    object tsAgendamento: TTabSheet
      Caption = 'Agendamento'
      ImageIndex = 4
      OnShow = tsAgendamentoShow
      object pnlAgendaColuna2: TPanel
        Left = 337
        Top = 33
        Width = 337
        Height = 569
        Align = alLeft
        TabOrder = 2
        object pnlAge8: TPanel
          Left = 1
          Top = 221
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 2
          object lblAgenda8: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 5
            ExplicitTop = 10
            ExplicitWidth = 325
          end
          object dbAgenda8: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda8
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge8
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 88
                Visible = True
              end>
          end
        end
        object pnlAge5: TPanel
          Left = 1
          Top = 111
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 1
          object lblAgenda5: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 330
          end
          object dbAgenda5: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda5
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge5
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge2: TPanel
          Left = 1
          Top = 1
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 0
          object lblAgenda2: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 330
          end
          object dbAgenda2: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge11: TPanel
          Left = 1
          Top = 331
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 3
          object lblAgenda11: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 10
            ExplicitWidth = 326
          end
          object dbAgenda11: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda11
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge11
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge14: TPanel
          Left = 1
          Top = 441
          Width = 335
          Height = 127
          Align = alClient
          TabOrder = 4
          object lblAgenda14: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 10
            ExplicitWidth = 326
          end
          object dbAgenda14: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 109
            Align = alClient
            DataSource = dsAgenda14
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge14
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
      end
      object Panel37: TPanel
        Left = 0
        Top = 0
        Width = 1010
        Height = 33
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1010
          33)
        object Label1: TLabel
          Left = 518
          Top = 12
          Width = 47
          Height = 14
          Anchors = [akRight]
          Caption = 'Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 670
          Top = 12
          Width = 22
          Height = 14
          Anchors = [akRight]
          Caption = 'At'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnAgendamento: TBitBtn
          Left = 2
          Top = 2
          Width = 143
          Height = 25
          Caption = 'Novo Agendamento'
          TabOrder = 0
          OnClick = btnAgendamentoClick
        end
        object edtDataInicial: TMaskEdit
          Left = 571
          Top = 5
          Width = 86
          Height = 22
          Anchors = [akRight]
          EditMask = '##/##/####'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
        object edtDataFinal: TMaskEdit
          Left = 707
          Top = 5
          Width = 86
          Height = 22
          Anchors = [akRight]
          EditMask = '##/##/####'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
          Text = '  /  /    '
        end
        object btnOk: TBitBtn
          Left = 798
          Top = 4
          Width = 90
          Height = 25
          Anchors = [akRight]
          Caption = 'Ok'
          TabOrder = 3
          OnClick = btnOkClick
        end
        object btnAnterior: TBitBtn
          Left = 911
          Top = 4
          Width = 43
          Height = 25
          Hint = '15 dias Anteriores'
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = btnAnteriorClick
        end
        object btnProximo: TBitBtn
          Left = 954
          Top = 4
          Width = 43
          Height = 25
          Hint = 'Pr'#243'ximos 15 dias'
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TabStop = False
          OnClick = btnProximoClick
        end
      end
      object pnlAgendaColuna1: TPanel
        Left = 0
        Top = 33
        Width = 337
        Height = 569
        Align = alLeft
        TabOrder = 1
        object pnlAge10: TPanel
          Left = 1
          Top = 331
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 3
          object lblAgenda10: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 10
            ExplicitWidth = 326
          end
          object dbAgenda10: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda10
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge10
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge4: TPanel
          Left = 1
          Top = 111
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 1
          object lblAgenda4: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 330
          end
          object dbAgenda4: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda4
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge4
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge1: TPanel
          Left = 1
          Top = 1
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 0
          object lblAgenda1: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 329
          end
          object dbAgenda1: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge7: TPanel
          Left = 1
          Top = 221
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 2
          object lblAgenda7: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 330
          end
          object dbAgenda7: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda7
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge7
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge13: TPanel
          Left = 1
          Top = 441
          Width = 335
          Height = 127
          Align = alClient
          TabOrder = 4
          object lblAgenda13: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = -1
            ExplicitTop = 3
          end
          object dbAgenda13: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 109
            Align = alClient
            DataSource = dsAgenda13
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge13
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
      end
      object pnlAgendaColuna3: TPanel
        Left = 674
        Top = 33
        Width = 337
        Height = 569
        Align = alLeft
        TabOrder = 3
        object pnlAge9: TPanel
          Left = 1
          Top = 221
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 2
          object lblAgenda9: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 5
            ExplicitTop = 10
            ExplicitWidth = 324
          end
          object dbAgenda9: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda9
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge9
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 65
                Visible = True
              end>
          end
        end
        object pnlAge6: TPanel
          Left = 1
          Top = 111
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 1
          object lblAgenda6: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 329
          end
          object dbAgenda6: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda6
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge6
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge3: TPanel
          Left = 1
          Top = 1
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 0
          object lblAgenda3: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 10
            ExplicitWidth = 329
          end
          object dbAgenda3: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda3
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge3
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge12: TPanel
          Left = 1
          Top = 331
          Width = 335
          Height = 110
          Align = alTop
          TabOrder = 3
          object lblAgenda12: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 10
            ExplicitWidth = 317
          end
          object dbAgenda12: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 92
            Align = alClient
            DataSource = dsAgenda12
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge12
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
        object pnlAge15: TPanel
          Left = 1
          Top = 441
          Width = 335
          Height = 127
          Align = alClient
          TabOrder = 4
          object lblAgenda15: TLabel
            Left = 1
            Top = 1
            Width = 333
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '01/10/2015'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 10
            ExplicitWidth = 326
          end
          object dbAgenda15: TDBGrid
            Left = 1
            Top = 17
            Width = 333
            Height = 109
            Align = alClient
            DataSource = dsAgenda15
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = pmAge15
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbAgenda1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Hora'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Width = 70
                Visible = True
              end>
          end
        end
      end
    end
  end
  object dsQuadro1: TDataSource
    Left = 404
    Top = 531
  end
  object dsQuadro2: TDataSource
    Left = 444
    Top = 531
  end
  object dsQuadro3: TDataSource
    Left = 484
    Top = 531
  end
  object dsQuadro4: TDataSource
    Left = 516
    Top = 531
  end
  object dsQuadro5: TDataSource
    Left = 552
    Top = 531
  end
  object dsQuadro6: TDataSource
    Left = 612
    Top = 531
  end
  object dsQuadroSol1: TDataSource
    Left = 60
    Top = 531
  end
  object dsQuadroSol2: TDataSource
    Left = 100
    Top = 531
  end
  object dsQuadroSol3: TDataSource
    Left = 140
    Top = 531
  end
  object dsQuadroSol4: TDataSource
    Left = 180
    Top = 531
  end
  object dsQuadroSol5: TDataSource
    Left = 220
    Top = 531
  end
  object dsQuadroSol6: TDataSource
    Left = 252
    Top = 531
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 255
    Top = 457
  end
  object pmSolicitacao1: TPopupMenu
    Left = 796
    Top = 315
    object pmAnalise1: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral1: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica1: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object pmDetalhes1: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao2: TPopupMenu
    Left = 828
    Top = 315
    object pmAnalise2: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral2: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica2: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object pmDetalhes2: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object dsQuadroSol7: TDataSource
    Left = 284
    Top = 531
  end
  object dsQuadroSol8: TDataSource
    Left = 316
    Top = 531
  end
  object dsQuadroSol9: TDataSource
    Left = 348
    Top = 531
  end
  object dsQuadroSol10: TDataSource
    Left = 388
    Top = 523
  end
  object dsQuadroSol11: TDataSource
    Left = 420
    Top = 523
  end
  object dsQuadroSol12: TDataSource
    Left = 452
    Top = 523
  end
  object pmSolicitacao3: TPopupMenu
    Left = 868
    Top = 315
    object pmAnalise3: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral3: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica3: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object pmDetalhes3: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao4: TPopupMenu
    Left = 908
    Top = 315
    object pmAnalise4: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral4: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica4: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object pmDetalhes4: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao5: TPopupMenu
    Left = 940
    Top = 315
    object pmAnalise5: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral5: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica5: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object pmDetalhes5: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao6: TPopupMenu
    Left = 972
    Top = 315
    object pmAnalise6: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral6: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica6: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object pmDetalhes6: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao7: TPopupMenu
    Left = 796
    Top = 355
    object pmAnalise7: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral7: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica7: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object pmDetalhes7: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao8: TPopupMenu
    Left = 828
    Top = 355
    object pmAnalise8: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral8: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica8: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object pmDetalhes8: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao9: TPopupMenu
    Left = 868
    Top = 355
    object pmAnalise9: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral9: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica9: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object pmDetalhes9: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao10: TPopupMenu
    Left = 908
    Top = 355
    object pmAnalise10: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral10: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica10: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object pmDetalhes10: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao11: TPopupMenu
    Left = 940
    Top = 355
    object pmAnalise11: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral11: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica11: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object pmDetalhes11: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmSolicitacao12: TPopupMenu
    Left = 972
    Top = 355
    object pmAnalise12: TMenuItem
      Caption = 'An'#225'lise'
      OnClick = pmAnalise1Click
    end
    object pmGeral12: TMenuItem
      Caption = 'Ocorr'#234'ncia Geral'
      OnClick = pmGeral1Click
    end
    object pmTecnica12: TMenuItem
      Caption = 'Ocorr'#234'ncia T'#233'cnica'
      OnClick = pmTecnica1Click
    end
    object N27: TMenuItem
      Caption = '-'
    end
    object pmDetalhes12: TMenuItem
      Caption = 'Detalhes'
      OnClick = pmDetalhes1Click
    end
  end
  object pmQuadro1: TPopupMenu
    Left = 21
    Top = 482
    object Detalhes1: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes1Click
    end
  end
  object pmQuadro2: TPopupMenu
    Left = 61
    Top = 482
    object Detalhes2: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes2Click
    end
  end
  object pmQuadro3: TPopupMenu
    Left = 93
    Top = 482
    object Detalhes3: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes3Click
    end
  end
  object pmQuadro4: TPopupMenu
    Left = 125
    Top = 482
    object Detalhes4: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes4Click
    end
  end
  object pmQuadro5: TPopupMenu
    Left = 157
    Top = 482
    object Detalhes5: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes5Click
    end
  end
  object pmQuadro6: TPopupMenu
    Left = 189
    Top = 482
    object Detalhes6: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes6Click
    end
  end
  object dsAtivQuadro1: TDataSource
    Left = 38
    Top = 315
  end
  object dsAtivQuadro2: TDataSource
    Left = 102
    Top = 315
  end
  object dsAtivQuadro3: TDataSource
    Left = 166
    Top = 315
  end
  object dsAtivQuadro4: TDataSource
    Left = 222
    Top = 315
  end
  object dsAtivQuadro5: TDataSource
    Left = 286
    Top = 315
  end
  object dsAtivQuadro6: TDataSource
    Left = 318
    Top = 307
  end
  object pmAtivQuadro1: TPopupMenu
    Left = 573
    Top = 330
    object Detalhes7: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes7Click
    end
  end
  object pmAtivQuadro2: TPopupMenu
    Left = 637
    Top = 330
    object Detalhes8: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes8Click
    end
  end
  object pmAtivQuadro3: TPopupMenu
    Left = 685
    Top = 362
    object Detalhes9: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes9Click
    end
  end
  object pmAtivQuadro4: TPopupMenu
    Left = 573
    Top = 378
    object Detalhes10: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes10Click
    end
  end
  object pmAtivQuadro5: TPopupMenu
    Left = 637
    Top = 378
    object Detalhes11: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes11Click
    end
  end
  object pmAtivQuadro6: TPopupMenu
    Left = 685
    Top = 378
    object Detalhes12: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes12Click
    end
  end
  object cdsAgenda1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 240
    object cdsAgenda1Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda1Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda1Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda1Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda1Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda1Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda1: TDataSource
    DataSet = cdsAgenda1
    Left = 544
    Top = 240
  end
  object cdsAgenda2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 510
    Top = 82
    object cdsAgenda2Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda2Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda2Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda2Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda2Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda2Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda2: TDataSource
    DataSet = cdsAgenda2
    Left = 550
    Top = 82
  end
  object cdsAgenda3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 96
    object cdsAgenda3Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda3Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda3Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda3Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda3Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda3Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda3: TDataSource
    DataSet = cdsAgenda3
    Left = 542
    Top = 98
  end
  object cdsAgenda4: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 502
    Top = 138
    object cdsAgenda4Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda4Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda4Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda4Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda4Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda4Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda4: TDataSource
    DataSet = cdsAgenda4
    Left = 542
    Top = 138
  end
  object cdsAgenda5: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 518
    Top = 296
    object cdsAgenda5Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda5Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda5Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda5Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda5Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda5Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda5: TDataSource
    DataSet = cdsAgenda5
    Left = 558
    Top = 296
  end
  object cdsAgenda6: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 240
    object cdsAgenda6Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda6Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda6Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda6Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda6Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda6Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda6: TDataSource
    DataSet = cdsAgenda6
    Left = 640
    Top = 240
  end
  object cdsAgenda7: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 606
    Top = 82
    object cdsAgenda7Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda7Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda7Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda7Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda7Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda7Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda7: TDataSource
    DataSet = cdsAgenda7
    Left = 646
    Top = 82
  end
  object cdsAgenda8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 598
    Top = 98
    object cdsAgenda8Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda8Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda8Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda8Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda8Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda8Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda8: TDataSource
    DataSet = cdsAgenda8
    Left = 638
    Top = 98
  end
  object cdsAgenda9: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 598
    Top = 146
    object cdsAgenda9Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda9Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda9Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda9Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda9Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda9Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda9: TDataSource
    DataSet = cdsAgenda9
    Left = 638
    Top = 146
  end
  object cdsAgenda10: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 614
    Top = 296
    object cdsAgenda10Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda10Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda10Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda10Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda10Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda10Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda10: TDataSource
    DataSet = cdsAgenda10
    Left = 654
    Top = 296
  end
  object cdsAgenda11: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 687
    Top = 240
    object cdsAgenda11Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda11Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda11Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda11Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda11Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda11Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda11: TDataSource
    DataSet = cdsAgenda11
    Left = 728
    Top = 240
  end
  object cdsAgenda12: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 695
    Top = 90
    object cdsAgenda12Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda12Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda12Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda12Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda12Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda12Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda12: TDataSource
    DataSet = cdsAgenda12
    Left = 735
    Top = 90
  end
  object cdsAgenda13: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 687
    Top = 106
    object cdsAgenda13Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda13Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda13Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda13Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda13Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda13Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda13: TDataSource
    DataSet = cdsAgenda13
    Left = 727
    Top = 106
  end
  object cdsAgenda14: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 687
    Top = 146
    object cdsAgenda14Hora: TTimeField
      FieldName = 'Hora'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgenda14Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda14Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda14Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda14Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda14Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda14: TDataSource
    DataSet = cdsAgenda14
    Left = 727
    Top = 146
  end
  object cdsAgenda15: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 703
    Top = 296
    object cdsAgenda15Hora: TTimeField
      FieldName = 'Hora'
    end
    object cdsAgenda15Cliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsAgenda15Usuario: TStringField
      FieldName = 'Usuario'
      Size = 60
    end
    object cdsAgenda15Status: TStringField
      FieldName = 'Status'
      Size = 60
    end
    object cdsAgenda15Data: TDateField
      FieldName = 'Data'
    end
    object cdsAgenda15Id: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsAgenda15: TDataSource
    DataSet = cdsAgenda15
    Left = 743
    Top = 296
  end
  object pmAge1: TPopupMenu
    Left = 253
    Top = 122
    object Reagendamento1: TMenuItem
      Caption = 'Reagendar'
      OnClick = Reagendamento1Click
    end
    object Cancelamento1: TMenuItem
      Caption = 'Cancelar'
      OnClick = Cancelamento1Click
    end
    object Encerrar1: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Detalhes13: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes13Click
    end
  end
  object pmAge2: TPopupMenu
    Left = 285
    Top = 122
    object MenuItem1: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem2Click
    end
    object Encerrar2: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Detalhes14: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes14Click
    end
  end
  object pmAge3: TPopupMenu
    Left = 325
    Top = 122
    object MenuItem3: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem4Click
    end
    object Encerrar3: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar3Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Detalhes15: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes15Click
    end
  end
  object pmAge4: TPopupMenu
    Left = 357
    Top = 122
    object MenuItem5: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem6Click
    end
    object Encerrar4: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar4Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Detalhes16: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes16Click
    end
  end
  object pmAge5: TPopupMenu
    Left = 389
    Top = 122
    object MenuItem7: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem8Click
    end
    object Encerrar5: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar5Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Detalhes17: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes17Click
    end
  end
  object pmAge6: TPopupMenu
    Left = 77
    Top = 138
    object MenuItem9: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem9Click
    end
    object MenuItem10: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem10Click
    end
    object Encerrar6: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar6Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Detalhes18: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes18Click
    end
  end
  object pmAge7: TPopupMenu
    Left = 109
    Top = 138
    object MenuItem11: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem11Click
    end
    object MenuItem12: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem12Click
    end
    object Encerrar7: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar7Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Detalhes19: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes19Click
    end
  end
  object pmAge8: TPopupMenu
    Left = 149
    Top = 138
    object MenuItem13: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem13Click
    end
    object MenuItem14: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem14Click
    end
    object Encerrar8: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar8Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Detalhes20: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes20Click
    end
  end
  object pmAge9: TPopupMenu
    Left = 181
    Top = 138
    object MenuItem15: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem15Click
    end
    object MenuItem16: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem16Click
    end
    object Encerrar9: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar9Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Detalhes21: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes21Click
    end
  end
  object pmAge10: TPopupMenu
    Left = 213
    Top = 138
    object MenuItem17: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem17Click
    end
    object MenuItem18: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem18Click
    end
    object Encerrar10: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar10Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Detalhes22: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes22Click
    end
  end
  object pmAge11: TPopupMenu
    Left = 77
    Top = 186
    object MenuItem19: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem19Click
    end
    object MenuItem20: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem20Click
    end
    object Encerrar11: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar11Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Detalhes23: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes23Click
    end
  end
  object pmAge12: TPopupMenu
    Left = 109
    Top = 186
    object MenuItem21: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem21Click
    end
    object MenuItem22: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem22Click
    end
    object Encerrar12: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar12Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object Detalhes24: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes24Click
    end
  end
  object pmAge13: TPopupMenu
    Left = 149
    Top = 186
    object MenuItem23: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem23Click
    end
    object MenuItem24: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem24Click
    end
    object Encerrar13: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar13Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object Detalhes25: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes25Click
    end
  end
  object pmAge14: TPopupMenu
    Left = 181
    Top = 186
    object MenuItem25: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem25Click
    end
    object MenuItem26: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem26Click
    end
    object Encerrar14: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar14Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object Detalhes26: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes26Click
    end
  end
  object pmAge15: TPopupMenu
    Left = 213
    Top = 186
    object MenuItem27: TMenuItem
      Caption = 'Reagendar'
      OnClick = MenuItem27Click
    end
    object MenuItem28: TMenuItem
      Caption = 'Cancelar'
      OnClick = MenuItem28Click
    end
    object Encerrar15: TMenuItem
      Caption = 'Encerrar'
      OnClick = Encerrar15Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object Detalhes27: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes27Click
    end
  end
end
