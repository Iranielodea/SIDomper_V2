inherited frmContaEmail: TfrmContaEmail
  Tag = 110
  Caption = 'Contas de Emails'
  ClientHeight = 446
  OnDestroy = FormDestroy
  ExplicitWidth = 666
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 14
  inherited pgControl: TPageControl
    Height = 446
    ExplicitHeight = 446
    inherited tsPesquisa: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 652
      ExplicitHeight = 417
      inherited Panel1: TPanel
        Height = 376
        ExplicitHeight = 376
        inherited dbDados: TDBGrid
          Height = 318
          DataSource = dsPesquisa
          Columns = <
            item
              Expanded = False
              FieldName = 'CtaEm_Id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CtaEm_Codigo'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CtaEm_Nome'
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CtaEm_Email'
              Width = 272
              Visible = True
            end>
        end
      end
      inherited Panel2: TPanel
        Top = 376
        ExplicitTop = 376
        inherited btnNovo: TBitBtn
          TabOrder = 4
        end
        inherited btnEditar: TBitBtn
          TabOrder = 5
        end
        inherited btnExcluir: TBitBtn
          TabOrder = 6
        end
        inherited btnFiltrar: TBitBtn
          TabOrder = 7
        end
        inherited btnSair: TBitBtn
          TabOrder = 8
        end
        inherited btnAnterior: TBitBtn
          TabOrder = 1
        end
        inherited btnProximo: TBitBtn
          TabOrder = 2
        end
        inherited btnPrimeiro: TBitBtn
          TabOrder = 0
        end
        inherited btnUltimo: TBitBtn
          TabOrder = 3
        end
      end
    end
    inherited tsEdicao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 652
      ExplicitHeight = 417
      inherited Panel3: TPanel
        Height = 376
        ExplicitHeight = 376
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
          Top = 118
          Width = 45
          Height = 14
          Caption = 'Email *'
        end
        object Label7: TLabel
          Left = 24
          Top = 166
          Width = 45
          Height = 14
          Caption = 'SMTP *'
        end
        object Label8: TLabel
          Left = 24
          Top = 214
          Width = 52
          Height = 14
          Caption = 'Senha *'
        end
        object Label9: TLabel
          Left = 24
          Top = 262
          Width = 46
          Height = 14
          Caption = 'Porta *'
        end
        object Label10: TLabel
          Left = 312
          Top = 224
          Width = 83
          Height = 14
          Caption = 'SMTP e Porta'
        end
        object edtCodigo: TDBEdit
          Left = 24
          Top = 44
          Width = 57
          Height = 22
          DataField = 'CtaEm_Codigo'
          DataSource = dsCad
          TabOrder = 0
        end
        object edtNome: TDBEdit
          Left = 24
          Top = 92
          Width = 569
          Height = 22
          DataField = 'CtaEm_Nome'
          DataSource = dsCad
          TabOrder = 1
        end
        object Ativo: TDBCheckBox
          Left = 24
          Top = 356
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'CtaEm_Ativo'
          DataSource = dsCad
          TabOrder = 8
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 138
          Width = 569
          Height = 22
          CharCase = ecLowerCase
          DataField = 'CtaEm_Email'
          DataSource = dsCad
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 186
          Width = 569
          Height = 22
          CharCase = ecLowerCase
          DataField = 'CtaEm_SMTP'
          DataSource = dsCad
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 234
          Width = 209
          Height = 22
          DataField = 'CtaEm_Senha'
          DataSource = dsCad
          PasswordChar = '*'
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 282
          Width = 57
          Height = 22
          DataField = 'CtaEm_Porta'
          DataSource = dsCad
          TabOrder = 5
        end
        object DBCheckBox1: TDBCheckBox
          Left = 24
          Top = 310
          Width = 89
          Height = 17
          Caption = 'Autenticar'
          DataField = 'CtaEm_Autenticar'
          DataSource = dsCad
          TabOrder = 6
        end
        object DBCheckBox2: TDBCheckBox
          Left = 24
          Top = 333
          Width = 113
          Height = 17
          Caption = 'Autenticar SSL'
          DataField = 'CtaEm_AutenticarSSL'
          DataSource = dsCad
          TabOrder = 7
        end
        object Memo1: TMemo
          Left = 312
          Top = 244
          Width = 281
          Height = 126
          TabStop = False
          Lines.Strings = (
            'HOTMAIL:'
            '    Porta: 587'
            '    Host: smtp.live.com'
            ''
            '  YAHOO:'
            '    Porta: 587'
            '    Host: smtp.mail.yahoo.com'
            ''
            '  SERVIDOR PR'#211'PRIO:'
            '    Porta: 587'
            '    Host: smtp.servidorproprio.inf.br'
            ''
            '  GMAIL:'
            '    Porta: 465'
            '    Host: smtp.gmail.com')
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 9
        end
      end
      inherited Panel4: TPanel
        Top = 376
        ExplicitTop = 376
      end
    end
    inherited tsFiltro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 652
      ExplicitHeight = 417
      inherited Panel5: TPanel
        Height = 376
        ExplicitHeight = 376
        inherited PageControl2: TPageControl
          Height = 374
          ExplicitHeight = 374
          inherited tsGeral: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 25
            ExplicitWidth = 642
            ExplicitHeight = 345
            inherited pnlGeral: TPanel
              Height = 345
              ExplicitHeight = 345
            end
          end
        end
      end
      inherited Panel6: TPanel
        Top = 376
        ExplicitTop = 376
        inherited btnImprimir: TBitBtn
          OnClick = btnImprimirClick
        end
      end
    end
  end
  inherited dsPesquisa: TDataSource
    DataSet = DMContaEmail.CDSConsulta
    Left = 316
    Top = 65
  end
  inherited dsCad: TDataSource
    DataSet = DMContaEmail.CDSCadastro
    Left = 384
    Top = 64
  end
  inherited BalloonHint1: TBalloonHint
    Left = 476
    Top = 57
  end
end
