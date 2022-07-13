inherited frmProduto: TfrmProduto
  Tag = 101
  Caption = 'Produtos'
  ClientHeight = 432
  OnDestroy = FormDestroy
  ExplicitWidth = 666
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 14
  inherited pgControl: TPageControl
    Height = 432
    ActivePage = tsEdicao
    inherited tsPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 652
      ExplicitHeight = 337
      inherited Panel1: TPanel
        Height = 362
        inherited dbDados: TDBGrid
          Height = 304
          DataSource = dsPesquisa
          Columns = <
            item
              Expanded = False
              FieldName = 'Prod_Id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Prod_Codigo'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Prod_Nome'
              Width = 530
              Visible = True
            end>
        end
      end
      inherited Panel2: TPanel
        Top = 362
      end
    end
    inherited tsEdicao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 652
      ExplicitHeight = 337
      inherited Panel3: TPanel
        Height = 362
        object Label4: TLabel
          Left = 24
          Top = 24
          Width = 56
          Height = 14
          Caption = 'C'#243'digo *'
        end
        object Label5: TLabel
          Left = 24
          Top = 72
          Width = 48
          Height = 14
          Caption = 'Nome *'
        end
        object Label6: TLabel
          Left = 24
          Top = 128
          Width = 75
          Height = 14
          Caption = 'Observa'#231#227'o'
        end
        object edtCodigo: TDBEdit
          Left = 24
          Top = 44
          Width = 57
          Height = 22
          DataField = 'Prod_Codigo'
          DataSource = dsCad
          TabOrder = 0
        end
        object edtNome: TDBEdit
          Left = 24
          Top = 92
          Width = 449
          Height = 22
          DataField = 'Prod_Nome'
          DataSource = dsCad
          TabOrder = 1
        end
        object Ativo: TDBCheckBox
          Left = 24
          Top = 339
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'Prod_Ativo'
          DataSource = dsCad
          TabOrder = 3
        end
        object mmoObs: TDBMemo
          Left = 24
          Top = 148
          Width = 443
          Height = 185
          DataField = 'Prod_Observacao'
          DataSource = dsCad
          TabOrder = 2
          OnEnter = mmoObsEnter
          OnExit = mmoObsExit
          OnKeyUp = mmoObsKeyUp
        end
      end
      inherited Panel4: TPanel
        Top = 362
      end
    end
    inherited tsFiltro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 652
      ExplicitHeight = 337
      inherited Panel5: TPanel
        Height = 362
        inherited PageControl2: TPageControl
          Height = 360
          inherited tsGeral: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 25
            ExplicitWidth = 642
            ExplicitHeight = 265
            inherited pnlGeral: TPanel
              Height = 331
            end
          end
        end
      end
      inherited Panel6: TPanel
        Top = 362
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
    DataSet = DMProduto.CDSConsulta
    Left = 316
    Top = 65
  end
  inherited dsCad: TDataSource
    DataSet = DMProduto.CDSCadastro
    Left = 384
    Top = 64
  end
  inherited BalloonHint1: TBalloonHint
    Left = 492
    Top = 65
  end
end
