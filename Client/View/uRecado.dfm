﻿inherited frmRecado: TfrmRecado
  Tag = 119
  Caption = 'Recados'
  ClientHeight = 671
  ClientWidth = 926
  ExplicitTop = -189
  ExplicitWidth = 932
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 14
  inherited pgControl: TPageControl
    Width = 926
    Height = 671
    ActivePage = tsEdicao
    ParentFont = False
    ExplicitWidth = 926
    ExplicitHeight = 671
    inherited tsPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 918
      ExplicitHeight = 642
      inherited Panel1: TPanel
        Width = 918
        Height = 601
        ExplicitWidth = 918
        ExplicitHeight = 601
        inherited GroupBox1: TGroupBox
          Width = 916
          ExplicitWidth = 916
        end
        inherited dbDados: TDBGrid
          Width = 916
          Height = 543
          DataSource = dsPesquisa
          Columns = <
            item
              Expanded = False
              FieldName = 'Rec_Id'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Data'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeUsuarioLcto'
              Title.Alignment = taCenter
              Width = 151
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Nivel'
              Title.Alignment = taCenter
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_RazaoSocial'
              Width = 189
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Telefone'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeUsuarioDest'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sta_Nome'
              Width = 79
              Visible = True
            end>
        end
      end
      inherited Panel2: TPanel
        Top = 601
        Width = 918
        ExplicitTop = 601
        ExplicitWidth = 918
      end
    end
    inherited tsEdicao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 918
      ExplicitHeight = 642
      inherited Panel3: TPanel
        Width = 918
        Height = 601
        ExplicitWidth = 918
        ExplicitHeight = 601
        object PageControl1: TPageControl
          Left = 1
          Top = 1
          Width = 916
          Height = 599
          ActivePage = tsAbertura
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object tsAbertura: TTabSheet
            Caption = 'Abertura'
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              object Label4: TLabel
                Left = 15
                Top = 10
                Width = 13
                Height = 14
                Caption = 'Id'
              end
              object Label6: TLabel
                Left = 78
                Top = 10
                Width = 30
                Height = 14
                Caption = 'Data'
              end
              object Label7: TLabel
                Left = 164
                Top = 10
                Width = 30
                Height = 14
                Caption = 'Hora'
              end
              object Label8: TLabel
                Left = 251
                Top = 10
                Width = 129
                Height = 14
                Caption = 'Usu'#225'rio Lan'#231'amento'
              end
              object Label5: TLabel
                Left = 15
                Top = 104
                Width = 87
                Height = 14
                Caption = 'Raz'#227'o Social*'
              end
              object Label9: TLabel
                Left = 15
                Top = 58
                Width = 44
                Height = 14
                Caption = 'Cliente'
              end
              object btnCliente: TSpeedButton
                Left = 866
                Top = 76
                Width = 23
                Height = 22
                OnClick = btnClienteClick
              end
              object Label10: TLabel
                Left = 15
                Top = 152
                Width = 53
                Height = 14
                Caption = 'Fantasia'
              end
              object Label22: TLabel
                Left = 15
                Top = 200
                Width = 59
                Height = 14
                Caption = 'Endere'#231'o'
              end
              object Label23: TLabel
                Left = 16
                Top = 296
                Width = 53
                Height = 14
                Caption = 'Telefone'
              end
              object Label24: TLabel
                Left = 16
                Top = 341
                Width = 51
                Height = 14
                Caption = 'Contato'
              end
              object btnUsuario: TSpeedButton
                Left = 426
                Top = 444
                Width = 23
                Height = 22
                OnClick = btnUsuarioClick
              end
              object Label11: TLabel
                Left = 17
                Top = 424
                Width = 108
                Height = 14
                Caption = 'Usu'#225'rio Destino*'
              end
              object btnTipo: TSpeedButton
                Left = 426
                Top = 492
                Width = 23
                Height = 22
                OnClick = btnTipoClick
              end
              object Label12: TLabel
                Left = 17
                Top = 472
                Width = 34
                Height = 14
                Caption = 'Tipo*'
              end
              object Label13: TLabel
                Left = 17
                Top = 523
                Width = 49
                Height = 14
                Caption = 'Status*'
              end
              object Label14: TLabel
                Left = 455
                Top = 172
                Width = 68
                Height = 14
                Caption = 'Descri'#231#227'o*'
              end
              object btnStatus: TSpeedButton
                Left = 426
                Top = 539
                Width = 23
                Height = 22
                Visible = False
                OnClick = btnStatusClick
              end
              object edtCodigo: TDBEdit
                Left = 15
                Top = 30
                Width = 57
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Rec_Id'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit1: TDBEdit
                Left = 78
                Top = 30
                Width = 80
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Rec_data'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 164
                Top = 30
                Width = 80
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Rec_Hora'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit3: TDBEdit
                Left = 250
                Top = 30
                Width = 57
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Usu_CodigoLcto'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit4: TDBEdit
                Left = 313
                Top = 30
                Width = 576
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'NomeUsuarioLcto'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 4
              end
              object edtNome: TDBEdit
                Left = 15
                Top = 124
                Width = 434
                Height = 22
                DataField = 'Rec_RazaoSocial'
                DataSource = dsCad
                TabOrder = 7
              end
              object edtCodCliente: TDBEdit
                Left = 15
                Top = 76
                Width = 57
                Height = 22
                Hint = '[F9] - Pesquisar'
                CustomHint = BalloonHint1
                DataField = 'Cli_Codigo'
                DataSource = dsCad
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                OnExit = edtCodClienteExit
                OnKeyDown = edtCodClienteKeyDown
              end
              object DBEdit5: TDBEdit
                Left = 78
                Top = 76
                Width = 782
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Cli_Nome'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 6
              end
              object DBEdit6: TDBEdit
                Left = 15
                Top = 172
                Width = 434
                Height = 22
                DataField = 'Rec_Fantasia'
                DataSource = dsCad
                TabOrder = 8
              end
              object DBEdit10: TDBEdit
                Left = 16
                Top = 316
                Width = 433
                Height = 22
                DataField = 'Rec_Telefone'
                DataSource = dsCad
                TabOrder = 10
              end
              object edtCodUsuario: TDBEdit
                Left = 17
                Top = 444
                Width = 57
                Height = 22
                Hint = '[F9] - Pesquisar'
                CustomHint = BalloonHint1
                DataField = 'Usu_CodigoDest'
                DataSource = dsCad
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
                OnExit = edtCodUsuarioExit
                OnKeyDown = edtCodUsuarioKeyDown
              end
              object DBEdit11: TDBEdit
                Left = 80
                Top = 444
                Width = 340
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'NomeUsuarioDest'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 13
              end
              object edtCodTipo: TDBEdit
                Left = 17
                Top = 492
                Width = 57
                Height = 22
                Hint = '[F9] - Pesquisar'
                CustomHint = BalloonHint1
                DataField = 'Tip_Codigo'
                DataSource = dsCad
                ParentShowHint = False
                ShowHint = True
                TabOrder = 14
                OnExit = edtCodTipoExit
                OnKeyDown = edtCodTipoKeyDown
              end
              object DBEdit12: TDBEdit
                Left = 80
                Top = 492
                Width = 340
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Tip_Nome'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 15
              end
              object edtCodStatus: TDBEdit
                Left = 17
                Top = 540
                Width = 57
                Height = 22
                Hint = 'F9 - Pesquisar'
                CustomHint = BalloonHint1
                TabStop = False
                Color = clSilver
                DataField = 'Sta_Codigo'
                DataSource = dsCad
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 16
                OnExit = edtCodStatusExit
                OnKeyDown = edtCodStatusKeyDown
              end
              object DBEdit13: TDBEdit
                Left = 80
                Top = 540
                Width = 340
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Sta_Nome'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 17
              end
              object DBMemo1: TDBMemo
                Left = 455
                Top = 192
                Width = 434
                Height = 377
                DataField = 'Rec_DescricaoInicial'
                DataSource = dsCad
                ScrollBars = ssVertical
                TabOrder = 19
                OnEnter = DBMemo1Enter
                OnExit = DBMemo1Exit
                OnKeyDown = DBMemo1KeyDown
              end
              object dbmEndereco: TDBMemo
                Left = 16
                Top = 220
                Width = 433
                Height = 70
                DataField = 'Rec_Endereco'
                DataSource = dsCad
                ScrollBars = ssVertical
                TabOrder = 9
                OnEnter = dbmEnderecoEnter
                OnExit = dbmEnderecoExit
                OnKeyDown = dbmEnderecoKeyDown
              end
              object dbmContato: TDBMemo
                Left = 16
                Top = 361
                Width = 433
                Height = 56
                DataField = 'Rec_Contato'
                DataSource = dsCad
                ScrollBars = ssVertical
                TabOrder = 11
                OnEnter = dbmContatoEnter
                OnExit = dbmContatoExit
                OnKeyDown = dbmContatoKeyDown
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 455
                Top = 110
                Width = 434
                Height = 56
                Caption = 'Nivel:'
                Columns = 4
                DataField = 'Rec_Nivel'
                DataSource = dsCad
                Items.Strings = (
                  '1-Baixo'
                  '2-Normal'
                  '3-Alto'
                  '4-Cr'#237'tico')
                TabOrder = 18
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4')
              end
            end
          end
          object tsEncerra: TTabSheet
            Caption = 'Encerramento'
            ImageIndex = 1
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              object Label17: TLabel
                Left = 16
                Top = 10
                Width = 68
                Height = 14
                Caption = 'Descri'#231#227'o*'
              end
              object Label19: TLabel
                Left = 16
                Top = 255
                Width = 30
                Height = 14
                Caption = 'Data'
              end
              object Label20: TLabel
                Left = 16
                Top = 303
                Width = 30
                Height = 14
                Caption = 'Hora'
              end
              object DBMemo2: TDBMemo
                Left = 16
                Top = 24
                Width = 881
                Height = 225
                DataField = 'Rec_DescricaoFinal'
                DataSource = dsCad
                ScrollBars = ssVertical
                TabOrder = 0
              end
              object DBEdit7: TDBEdit
                Left = 16
                Top = 275
                Width = 80
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Rec_DataFinal'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit8: TDBEdit
                Left = 16
                Top = 323
                Width = 80
                Height = 22
                TabStop = False
                Color = clSilver
                DataField = 'Rec_HoraFinal'
                DataSource = dsCad
                ReadOnly = True
                TabOrder = 2
              end
              object btnEncerrar: TBitBtn
                Left = 807
                Top = 274
                Width = 90
                Height = 25
                Caption = 'Encerrar'
                TabOrder = 3
                OnClick = btnEncerrarClick
              end
            end
          end
        end
      end
      inherited Panel4: TPanel
        Top = 601
        Width = 918
        ExplicitTop = 601
        ExplicitWidth = 918
        inherited btnSalvar: TBitBtn
          Left = 13
          Top = 5
          ParentFont = False
          ExplicitLeft = 13
          ExplicitTop = 5
        end
        inherited btnCancelar: TBitBtn
          Left = 104
          Top = 5
          ExplicitLeft = 104
          ExplicitTop = 5
        end
      end
    end
    inherited tsFiltro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 918
      ExplicitHeight = 642
      inherited Panel5: TPanel
        Width = 918
        Height = 601
        ExplicitWidth = 918
        ExplicitHeight = 601
        inherited PageControl2: TPageControl
          Width = 916
          Height = 599
          ExplicitWidth = 916
          ExplicitHeight = 599
          inherited tsGeral: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 25
            ExplicitWidth = 908
            ExplicitHeight = 570
            inherited pnlGeral: TPanel
              Width = 908
              Height = 570
              ExplicitWidth = 908
              ExplicitHeight = 570
              inherited Situação: TLabel
                Left = 593
                Visible = False
                ExplicitLeft = 593
              end
              inherited cbbSituacao: TComboBox
                Left = 592
                Visible = False
                ExplicitLeft = 592
              end
              object GroupBox2: TGroupBox
                Left = 3
                Top = 16
                Width = 129
                Height = 118
                Caption = 'Abertura:'
                TabOrder = 1
                object Label39: TLabel
                  Left = 17
                  Top = 23
                  Width = 70
                  Height = 14
                  Caption = 'Data Inicial'
                end
                object Label40: TLabel
                  Left = 14
                  Top = 71
                  Width = 63
                  Height = 14
                  Caption = 'Data Final'
                end
                object edtDataInicial: TMaskEdit
                  Left = 14
                  Top = 43
                  Width = 89
                  Height = 22
                  EditMask = '##/##/####'
                  MaxLength = 10
                  TabOrder = 0
                  Text = '  /  /    '
                end
                object edtDataFinal: TMaskEdit
                  Left = 14
                  Top = 91
                  Width = 89
                  Height = 22
                  EditMask = '##/##/####'
                  MaxLength = 10
                  TabOrder = 1
                  Text = '  /  /    '
                end
              end
              object GroupBox3: TGroupBox
                Left = 138
                Top = 16
                Width = 129
                Height = 118
                Caption = 'Encerramento:'
                TabOrder = 2
                object Label15: TLabel
                  Left = 17
                  Top = 23
                  Width = 70
                  Height = 14
                  Caption = 'Data Inicial'
                end
                object Label16: TLabel
                  Left = 14
                  Top = 71
                  Width = 63
                  Height = 14
                  Caption = 'Data Final'
                end
                object edtDataEncerraInicial: TMaskEdit
                  Left = 14
                  Top = 43
                  Width = 89
                  Height = 22
                  EditMask = '##/##/####'
                  MaxLength = 10
                  TabOrder = 0
                  Text = '  /  /    '
                end
                object edtDataEncerraFinal: TMaskEdit
                  Left = 14
                  Top = 91
                  Width = 89
                  Height = 22
                  EditMask = '##/##/####'
                  MaxLength = 10
                  TabOrder = 1
                  Text = '  /  /    '
                end
              end
            end
          end
          object tsUsuarioLcto: TTabSheet
            Caption = 'Usu'#225'rio Lcto'
            ImageIndex = 1
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              inline FraUsuario: TFraUsuario
                Left = 1
                Top = 1
                Width = 906
                Height = 568
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitWidth = 906
                ExplicitHeight = 568
                inherited edtCodigo: TEdit
                  TabOrder = 0
                end
                inherited edtNome: TEdit
                  TabOrder = 1
                end
                inherited dbTabela: TDBGrid
                  Width = 900
                  Height = 448
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Codigo'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Nome'
                      Width = 690
                      Visible = True
                    end>
                end
                inherited edtId: TEdit
                  TabOrder = 2
                end
              end
            end
          end
          object tsCliente: TTabSheet
            Caption = 'Cliente'
            ImageIndex = 2
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              inline FraCliente: TFraCliente
                Left = 1
                Top = 1
                Width = 906
                Height = 568
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitWidth = 906
                ExplicitHeight = 568
                inherited edtCodigo: TEdit
                  TabOrder = 0
                end
                inherited edtNome: TEdit
                  TabOrder = 1
                end
                inherited dbCliente: TDBGrid
                  Width = 900
                  Height = 448
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Cli_Codigo'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Cli_Nome'
                      Width = 690
                      Visible = True
                    end>
                end
                inherited edtId: TEdit
                  TabOrder = 2
                end
              end
            end
          end
          object tsUsuarioDest: TTabSheet
            Caption = 'Usu'#225'rio Destino'
            ImageIndex = 3
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              inline FraUsuarioDest: TFraAnalista
                Left = 1
                Top = 1
                Width = 906
                Height = 568
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitWidth = 906
                ExplicitHeight = 568
                inherited dbTabela: TDBGrid
                  Width = 900
                  Height = 448
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Codigo'
                      Title.Caption = 'C'#243'digo'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Nome'
                      Width = 690
                      Visible = True
                    end>
                end
              end
            end
          end
          object tsTipo: TTabSheet
            Caption = 'Tipo'
            ImageIndex = 4
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              inline FraTipo: TFraTipo
                Left = 1
                Top = 1
                Width = 906
                Height = 568
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitWidth = 906
                ExplicitHeight = 568
                inherited btnProc: TSpeedButton
                  OnClick = FraTipobtnProcClick
                end
                inherited edtCodigo: TEdit
                  TabOrder = 0
                  OnEnter = FraTipoedtCodigoEnter
                end
                inherited edtNome: TEdit
                  TabOrder = 1
                end
                inherited dbTabela: TDBGrid
                  Width = 900
                  Height = 448
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Codigo'
                      Title.Caption = 'C'#243'digo'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Nome'
                      Width = 690
                      Visible = True
                    end>
                end
                inherited edtId: TEdit
                  TabOrder = 2
                end
              end
            end
          end
          object tsStatus: TTabSheet
            Caption = 'Status'
            ImageIndex = 5
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 908
              Height = 570
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              inline FraStatus: TFraStatus
                Left = 1
                Top = 1
                Width = 906
                Height = 568
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ExplicitLeft = 1
                ExplicitTop = 1
                ExplicitWidth = 906
                ExplicitHeight = 568
                inherited btnProc: TSpeedButton
                  OnClick = FraStatusbtnProcClick
                end
                inherited edtCodigo: TEdit
                  OnEnter = FraStatusedtCodigoEnter
                end
                inherited dbTabela: TDBGrid
                  Width = 900
                  Height = 448
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Codigo'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Nome'
                      Width = 690
                      Visible = True
                    end>
                end
              end
            end
          end
        end
      end
      inherited Panel6: TPanel
        Top = 601
        Width = 918
        ExplicitTop = 601
        ExplicitWidth = 918
        inherited btnImprimir: TBitBtn
          Left = 99
          Top = 7
          OnClick = btnImprimirClick
          ExplicitLeft = 99
          ExplicitTop = 7
        end
      end
    end
  end
  inherited dsPesquisa: TDataSource
    DataSet = DMRecado.CDSConsulta
    Top = 9
  end
  inherited dsCad: TDataSource
    DataSet = DMRecado.CDSCadastro
    Left = 616
    Top = 16
  end
  inherited BalloonHint1: TBalloonHint
    Left = 516
    Top = 9
  end
end
