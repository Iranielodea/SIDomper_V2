object frmServidor: TfrmServidor
  Left = 0
  Top = 0
  Caption = 'Servidor'
  ClientHeight = 187
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Label2: TLabel
    Left = 28
    Top = 80
    Width = 208
    Height = 23
    Caption = 'Status Servidor FB:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblStatus: TLabel
    Left = 241
    Top = 80
    Width = 75
    Height = 23
    Caption = 'Parado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 77
    Height = 13
    Caption = 'Banco de Dados'
    Visible = False
  end
  object edtPorta: TEdit
    Left = 80
    Top = 29
    Width = 57
    Height = 21
    TabOrder = 0
    Text = '211'
  end
  object btnConectar: TButton
    Left = 160
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = btnConectarClick
  end
  object edtBanco: TEdit
    Left = 8
    Top = 155
    Width = 372
    Height = 21
    TabOrder = 2
    Text = '127.0.0.1/3050:E:\WSDomper\DATABASE\WSDATABASE'
    Visible = False
  end
  object btnBancoDados: TBitBtn
    Left = 288
    Top = 124
    Width = 92
    Height = 25
    Caption = 'Conectar'
    TabOrder = 3
    Visible = False
    OnClick = btnBancoDadosClick
  end
end
