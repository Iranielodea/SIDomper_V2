unit uQuadro2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, uParametrosController, uEnumerador,
  Data.DB, uDMChamado, uDMSolicitacao, uChamadoController, uSolicitacaoController, uDM,
  Vcl.Menus, Datasnap.DBClient, Vcl.Mask, uAgendamentoController, System.DateUtils,
  uDMRecado, uRecadoController, uRecado, System.Generics.Collections,
  uSolicitacaoTempoVO, uConferenciaTempo, uConferenciaTempoGeral, uRevenda, uAgendamentoVO,
  uPermissaoSolicitacaoVO, uListaProblemaSolicitacao, uQuadroController;

type
  TfrmQuadro2 = class(TForm)
    PageControl1: TPageControl;
    tsChamados: TTabSheet;
    dsQuadro1: TDataSource;
    dsQuadro2: TDataSource;
    dsQuadro3: TDataSource;
    dsQuadro4: TDataSource;
    dsQuadro5: TDataSource;
    dsQuadro6: TDataSource;
    tsSolicitacao: TTabSheet;
    dsQuadroSol1: TDataSource;
    dsQuadroSol2: TDataSource;
    dsQuadroSol3: TDataSource;
    dsQuadroSol4: TDataSource;
    dsQuadroSol5: TDataSource;
    dsQuadroSol6: TDataSource;
    Timer1: TTimer;
    pmSolicitacao1: TPopupMenu;
    pmGeral1: TMenuItem;
    pmTecnica1: TMenuItem;
    pmAnalise1: TMenuItem;
    pmSolicitacao2: TPopupMenu;
    pmGeral2: TMenuItem;
    pmTecnica2: TMenuItem;
    pmAnalise2: TMenuItem;
    dsQuadroSol7: TDataSource;
    dsQuadroSol8: TDataSource;
    dsQuadroSol9: TDataSource;
    dsQuadroSol10: TDataSource;
    dsQuadroSol11: TDataSource;
    dsQuadroSol12: TDataSource;
    Panel13: TPanel;
    btnSolucoes: TBitBtn;
    pmSolicitacao3: TPopupMenu;
    pmGeral3: TMenuItem;
    pmTecnica3: TMenuItem;
    pmAnalise3: TMenuItem;
    pmSolicitacao4: TPopupMenu;
    pmAnalise4: TMenuItem;
    pmGeral4: TMenuItem;
    pmTecnica4: TMenuItem;
    pmSolicitacao5: TPopupMenu;
    pmAnalise5: TMenuItem;
    pmGeral5: TMenuItem;
    pmTecnica5: TMenuItem;
    pmSolicitacao6: TPopupMenu;
    pmAnalise6: TMenuItem;
    pmGeral6: TMenuItem;
    pmTecnica6: TMenuItem;
    pmSolicitacao7: TPopupMenu;
    pmAnalise7: TMenuItem;
    pmGeral7: TMenuItem;
    pmTecnica7: TMenuItem;
    pmSolicitacao8: TPopupMenu;
    pmAnalise8: TMenuItem;
    pmGeral8: TMenuItem;
    pmTecnica8: TMenuItem;
    pmSolicitacao9: TPopupMenu;
    pmAnalise9: TMenuItem;
    pmGeral9: TMenuItem;
    pmTecnica9: TMenuItem;
    pmSolicitacao10: TPopupMenu;
    pmAnalise10: TMenuItem;
    pmGeral10: TMenuItem;
    pmTecnica10: TMenuItem;
    pmSolicitacao11: TPopupMenu;
    pmAnalise11: TMenuItem;
    pmGeral11: TMenuItem;
    pmTecnica11: TMenuItem;
    pmSolicitacao12: TPopupMenu;
    pmAnalise12: TMenuItem;
    pmGeral12: TMenuItem;
    pmTecnica12: TMenuItem;
    Panel1: TPanel;
    pnlCha1: TPanel;
    lblTitulo1: TLabel;
    dbQuadro1: TDBGrid;
    btnAbrirChamado: TBitBtn;
    pnlCha3: TPanel;
    lblTitulo3: TLabel;
    dbQuadro3: TDBGrid;
    pnlCha5: TPanel;
    lblTitulo5: TLabel;
    dbQuadro5: TDBGrid;
    Panel3: TPanel;
    pnlCha2: TPanel;
    lblTitulo2: TLabel;
    dbQuadro2: TDBGrid;
    pnlCha4: TPanel;
    lblTitulo4: TLabel;
    dbQuadro4: TDBGrid;
    pnlCha6: TPanel;
    lblTitulo6: TLabel;
    dbQuadro6: TDBGrid;
    Panel7: TPanel;
    pnlSol1: TPanel;
    dbQuadroSol1: TDBGrid;
    pnlSol4: TPanel;
    lblTitSolicitacao4: TLabel;
    dbQuadroSol4: TDBGrid;
    pnlSol7: TPanel;
    lblTitSolicitacao7: TLabel;
    dbQuadroSol7: TDBGrid;
    pnlSol10: TPanel;
    lblTitSolicitacao10: TLabel;
    dbQuadroSol10: TDBGrid;
    Panel11: TPanel;
    pnlSol2: TPanel;
    dbQuadroSol2: TDBGrid;
    pnlSol5: TPanel;
    lblTitSolicitacao5: TLabel;
    dbQuadroSol5: TDBGrid;
    pnlSol8: TPanel;
    lblTitSolicitacao8: TLabel;
    dbQuadroSol8: TDBGrid;
    pnlSol11: TPanel;
    lblTitSolicitacao11: TLabel;
    dbQuadroSol11: TDBGrid;
    Panel9: TPanel;
    pnlSol6: TPanel;
    lblTitSolicitacao6: TLabel;
    dbQuadroSol6: TDBGrid;
    pnlSol12: TPanel;
    lblTitSolicitacao12: TLabel;
    dbQuadroSol12: TDBGrid;
    pnlSol9: TPanel;
    lblTitSolicitacao9: TLabel;
    dbQuadroSol9: TDBGrid;
    pnlSol3: TPanel;
    dbQuadroSol3: TDBGrid;
    tsCodigos: TTabSheet;
    edtChaCodigo1: TEdit;
    edtChaCodigo2: TEdit;
    edtChaCodigo3: TEdit;
    edtChaCodigo4: TEdit;
    edtChaCodigo5: TEdit;
    edtChaCodigo6: TEdit;
    pmQuadro1: TPopupMenu;
    pmQuadro2: TPopupMenu;
    pmQuadro3: TPopupMenu;
    pmQuadro4: TPopupMenu;
    pmQuadro5: TPopupMenu;
    pmQuadro6: TPopupMenu;
    Detalhes1: TMenuItem;
    Detalhes2: TMenuItem;
    Detalhes3: TMenuItem;
    Detalhes4: TMenuItem;
    Detalhes5: TMenuItem;
    Detalhes6: TMenuItem;
    btnBuscarCliente: TBitBtn;
    edtSolCodigo1: TEdit;
    edtSolCodigo2: TEdit;
    edtSolCodigo3: TEdit;
    edtSolCodigo4: TEdit;
    edtSolCodigo5: TEdit;
    edtSolCodigo6: TEdit;
    edtSolCodigo7: TEdit;
    edtSolCodigo8: TEdit;
    edtSolCodigo9: TEdit;
    edtSolCodigo10: TEdit;
    edtSolCodigo11: TEdit;
    edtSolCodigo12: TEdit;
    edtAtivCodigo1: TEdit;
    edtAtivCodigo2: TEdit;
    edtAtivCodigo3: TEdit;
    edtAtivCodigo4: TEdit;
    edtAtivCodigo5: TEdit;
    edtAtivCodigo6: TEdit;
    tsAtividades: TTabSheet;
    Panel25: TPanel;
    Panel26: TPanel;
    pnlAtiv1: TPanel;
    lblTitAtiv1: TLabel;
    dbAtivQuadro1: TDBGrid;
    btnAbrirAtividade: TBitBtn;
    pnlAtiv3: TPanel;
    lblTitAtiv3: TLabel;
    dbAtivQuadro3: TDBGrid;
    pnlAtiv5: TPanel;
    lblTitAtiv5: TLabel;
    dbAtivQuadro5: TDBGrid;
    Panel30: TPanel;
    pnlAtiv2: TPanel;
    lblTitAtiv2: TLabel;
    dbAtivQuadro2: TDBGrid;
    pnlAtiv4: TPanel;
    lblTitAtiv4: TLabel;
    dbAtivQuadro4: TDBGrid;
    pnlAtiv6: TPanel;
    lblTitAtiv6: TLabel;
    dbAtivQuadro6: TDBGrid;
    dsAtivQuadro1: TDataSource;
    dsAtivQuadro2: TDataSource;
    dsAtivQuadro3: TDataSource;
    dsAtivQuadro4: TDataSource;
    dsAtivQuadro5: TDataSource;
    dsAtivQuadro6: TDataSource;
    Panel34: TPanel;
    btnSolucoes2: TBitBtn;
    btnBuscarCliente2: TBitBtn;
    pmAtivQuadro1: TPopupMenu;
    pmAtivQuadro2: TPopupMenu;
    pmAtivQuadro3: TPopupMenu;
    pmAtivQuadro4: TPopupMenu;
    pmAtivQuadro5: TPopupMenu;
    pmAtivQuadro6: TPopupMenu;
    Detalhes7: TMenuItem;
    Detalhes8: TMenuItem;
    Detalhes9: TMenuItem;
    Detalhes10: TMenuItem;
    Detalhes11: TMenuItem;
    Detalhes12: TMenuItem;
    tsAgendamento: TTabSheet;
    pnlAgendaColuna2: TPanel;
    pnlAge8: TPanel;
    dbAgenda8: TDBGrid;
    Panel37: TPanel;
    lblAgenda8: TLabel;
    pnlAgendaColuna1: TPanel;
    pnlAge10: TPanel;
    lblAgenda10: TLabel;
    dbAgenda10: TDBGrid;
    pnlAgendaColuna3: TPanel;
    pnlAge9: TPanel;
    lblAgenda9: TLabel;
    dbAgenda9: TDBGrid;
    pnlAge4: TPanel;
    lblAgenda4: TLabel;
    dbAgenda4: TDBGrid;
    pnlAge5: TPanel;
    lblAgenda5: TLabel;
    dbAgenda5: TDBGrid;
    pnlAge6: TPanel;
    lblAgenda6: TLabel;
    dbAgenda6: TDBGrid;
    pnlAge1: TPanel;
    lblAgenda1: TLabel;
    dbAgenda1: TDBGrid;
    pnlAge2: TPanel;
    lblAgenda2: TLabel;
    dbAgenda2: TDBGrid;
    pnlAge3: TPanel;
    lblAgenda3: TLabel;
    dbAgenda3: TDBGrid;
    pnlAge7: TPanel;
    lblAgenda7: TLabel;
    dbAgenda7: TDBGrid;
    pnlAge11: TPanel;
    lblAgenda11: TLabel;
    dbAgenda11: TDBGrid;
    pnlAge12: TPanel;
    lblAgenda12: TLabel;
    dbAgenda12: TDBGrid;
    Label1: TLabel;
    btnAgendamento: TBitBtn;
    edtDataInicial: TMaskEdit;
    Label2: TLabel;
    edtDataFinal: TMaskEdit;
    btnOk: TBitBtn;
    cdsAgenda1: TClientDataSet;
    cdsAgenda1Hora: TTimeField;
    cdsAgenda1Cliente: TStringField;
    cdsAgenda1Usuario: TStringField;
    cdsAgenda1Status: TStringField;
    dsAgenda1: TDataSource;
    cdsAgenda1Data: TDateField;
    cdsAgenda2: TClientDataSet;
    dsAgenda2: TDataSource;
    cdsAgenda2Hora: TTimeField;
    cdsAgenda2Cliente: TStringField;
    cdsAgenda2Usuario: TStringField;
    cdsAgenda2Status: TStringField;
    cdsAgenda2Data: TDateField;
    cdsAgenda3: TClientDataSet;
    cdsAgenda3Hora: TTimeField;
    cdsAgenda3Cliente: TStringField;
    cdsAgenda3Usuario: TStringField;
    cdsAgenda3Status: TStringField;
    cdsAgenda3Data: TDateField;
    dsAgenda3: TDataSource;
    cdsAgenda1Id: TIntegerField;
    cdsAgenda2Id: TIntegerField;
    cdsAgenda3Id: TIntegerField;
    cdsAgenda4: TClientDataSet;
    dsAgenda4: TDataSource;
    cdsAgenda4Hora: TTimeField;
    cdsAgenda4Cliente: TStringField;
    cdsAgenda4Usuario: TStringField;
    cdsAgenda4Status: TStringField;
    cdsAgenda4Data: TDateField;
    cdsAgenda4Id: TIntegerField;
    cdsAgenda5: TClientDataSet;
    dsAgenda5: TDataSource;
    cdsAgenda5Hora: TTimeField;
    cdsAgenda5Cliente: TStringField;
    cdsAgenda5Usuario: TStringField;
    cdsAgenda5Status: TStringField;
    cdsAgenda5Data: TDateField;
    cdsAgenda5Id: TIntegerField;
    cdsAgenda6: TClientDataSet;
    dsAgenda6: TDataSource;
    cdsAgenda6Hora: TTimeField;
    cdsAgenda6Cliente: TStringField;
    cdsAgenda6Usuario: TStringField;
    cdsAgenda6Status: TStringField;
    cdsAgenda6Data: TDateField;
    cdsAgenda6Id: TIntegerField;
    cdsAgenda7: TClientDataSet;
    dsAgenda7: TDataSource;
    cdsAgenda7Hora: TTimeField;
    cdsAgenda7Cliente: TStringField;
    cdsAgenda7Usuario: TStringField;
    cdsAgenda7Status: TStringField;
    cdsAgenda7Data: TDateField;
    cdsAgenda7Id: TIntegerField;
    cdsAgenda8: TClientDataSet;
    dsAgenda8: TDataSource;
    cdsAgenda8Hora: TTimeField;
    cdsAgenda8Cliente: TStringField;
    cdsAgenda8Usuario: TStringField;
    cdsAgenda8Status: TStringField;
    cdsAgenda8Data: TDateField;
    cdsAgenda8Id: TIntegerField;
    cdsAgenda9: TClientDataSet;
    dsAgenda9: TDataSource;
    cdsAgenda9Hora: TTimeField;
    cdsAgenda9Cliente: TStringField;
    cdsAgenda9Usuario: TStringField;
    cdsAgenda9Status: TStringField;
    cdsAgenda9Data: TDateField;
    cdsAgenda9Id: TIntegerField;
    cdsAgenda10: TClientDataSet;
    dsAgenda10: TDataSource;
    cdsAgenda10Hora: TTimeField;
    cdsAgenda10Cliente: TStringField;
    cdsAgenda10Usuario: TStringField;
    cdsAgenda10Status: TStringField;
    cdsAgenda10Data: TDateField;
    cdsAgenda10Id: TIntegerField;
    cdsAgenda11: TClientDataSet;
    dsAgenda11: TDataSource;
    cdsAgenda11Hora: TTimeField;
    cdsAgenda11Cliente: TStringField;
    cdsAgenda11Usuario: TStringField;
    cdsAgenda11Status: TStringField;
    cdsAgenda11Data: TDateField;
    cdsAgenda11Id: TIntegerField;
    cdsAgenda12: TClientDataSet;
    dsAgenda12: TDataSource;
    cdsAgenda12Hora: TTimeField;
    cdsAgenda12Cliente: TStringField;
    cdsAgenda12Usuario: TStringField;
    cdsAgenda12Status: TStringField;
    cdsAgenda12Data: TDateField;
    cdsAgenda12Id: TIntegerField;
    pmAge1: TPopupMenu;
    Reagendamento1: TMenuItem;
    Cancelamento1: TMenuItem;
    pmAge2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    pmAge3: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    pmAge4: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    pmAge5: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    pmAge6: TPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    pmAge7: TPopupMenu;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    pmAge8: TPopupMenu;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    pmAge9: TPopupMenu;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    pmAge10: TPopupMenu;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    pmAge11: TPopupMenu;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    pmAge12: TPopupMenu;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    pmAge13: TPopupMenu;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    pmAge14: TPopupMenu;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    pmAge15: TPopupMenu;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    pmDetalhes1: TMenuItem;
    pmDetalhes3: TMenuItem;
    pmDetalhes2: TMenuItem;
    pmDetalhes4: TMenuItem;
    pmDetalhes5: TMenuItem;
    pmDetalhes6: TMenuItem;
    pmDetalhes7: TMenuItem;
    pmDetalhes8: TMenuItem;
    pmDetalhes9: TMenuItem;
    pmDetalhes10: TMenuItem;
    pmDetalhes11: TMenuItem;
    pmDetalhes12: TMenuItem;
    Detalhes13: TMenuItem;
    Detalhes14: TMenuItem;
    Detalhes15: TMenuItem;
    Detalhes16: TMenuItem;
    Detalhes17: TMenuItem;
    Detalhes18: TMenuItem;
    Detalhes19: TMenuItem;
    Detalhes20: TMenuItem;
    Detalhes21: TMenuItem;
    Detalhes22: TMenuItem;
    Detalhes23: TMenuItem;
    Detalhes24: TMenuItem;
    Detalhes25: TMenuItem;
    Detalhes26: TMenuItem;
    Detalhes27: TMenuItem;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    Encerrar1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Encerrar2: TMenuItem;
    Encerrar3: TMenuItem;
    N3: TMenuItem;
    Encerrar4: TMenuItem;
    N4: TMenuItem;
    Encerrar5: TMenuItem;
    N5: TMenuItem;
    Encerrar6: TMenuItem;
    N6: TMenuItem;
    Encerrar7: TMenuItem;
    N7: TMenuItem;
    Encerrar8: TMenuItem;
    N8: TMenuItem;
    Encerrar9: TMenuItem;
    N9: TMenuItem;
    Encerrar10: TMenuItem;
    N10: TMenuItem;
    Encerrar11: TMenuItem;
    N11: TMenuItem;
    Encerrar12: TMenuItem;
    N12: TMenuItem;
    Encerrar13: TMenuItem;
    N13: TMenuItem;
    Encerrar14: TMenuItem;
    N14: TMenuItem;
    Encerrar15: TMenuItem;
    N15: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    Panel2: TPanel;
    btnAbrirSolicitacao: TBitBtn;
    lblTitSolicitacao1: TLabel;
    Panel4: TPanel;
    lblTitSolicitacao2: TLabel;
    Panel5: TPanel;
    lblTitSolicitacao3: TLabel;
    cdsAgenda1IdCliente: TIntegerField;
    cdsAgenda2IdCliente: TIntegerField;
    cdsAgenda3IdCliente: TIntegerField;
    cdsAgenda4IdCliente: TIntegerField;
    cdsAgenda5IdCliente: TIntegerField;
    cdsAgenda6IdCliente: TIntegerField;
    cdsAgenda7IdCliente: TIntegerField;
    cdsAgenda8IdCliente: TIntegerField;
    cdsAgenda9IdCliente: TIntegerField;
    cdsAgenda10IdCliente: TIntegerField;
    cdsAgenda11IdCliente: TIntegerField;
    cdsAgenda12IdCliente: TIntegerField;
    tsRecados: TTabSheet;
    Panel6: TPanel;
    dbRecadoDestino: TDBGrid;
    pnlRecadoLcto: TPanel;
    dbRecadoLcto: TDBGrid;
    dsRecadoLcto: TDataSource;
    dsRecadoDestino: TDataSource;
    Panel8: TPanel;
    chkVerTodosRecados: TCheckBox;
    btnNovoRecado: TBitBtn;
    pmRecado1: TPopupMenu;
    Detalhes28: TMenuItem;
    pmRecado2: TPopupMenu;
    Detalhes29: TMenuItem;
    Encerrar16: TMenuItem;
    EnviarEmail1: TMenuItem;
    Panel10: TPanel;
    miSolTraco1: TMenuItem;
    miSolIniciar1: TMenuItem;
    miSolParar1: TMenuItem;
    miSolTraco2: TMenuItem;
    miSolIniciar2: TMenuItem;
    miSolParar2: TMenuItem;
    miSolTraco3: TMenuItem;
    miSolIniciar3: TMenuItem;
    miSolParar3: TMenuItem;
    miSolTraco4: TMenuItem;
    miSolIniciar4: TMenuItem;
    miSolParar4: TMenuItem;
    miSolTraco5: TMenuItem;
    miSolIniciar5: TMenuItem;
    miSolParar5: TMenuItem;
    miSolTraco6: TMenuItem;
    miSolIniciar6: TMenuItem;
    miSolParar6: TMenuItem;
    miSolTraco7: TMenuItem;
    miSolIniciar7: TMenuItem;
    miSolParar7: TMenuItem;
    miSolTraco8: TMenuItem;
    miSolIniciar8: TMenuItem;
    miSolParar8: TMenuItem;
    miSolTraco9: TMenuItem;
    miSolIniciar9: TMenuItem;
    miSolParar9: TMenuItem;
    miSolTraco10: TMenuItem;
    miSolIniciar10: TMenuItem;
    miSolParar10: TMenuItem;
    miSolTraco11: TMenuItem;
    miSolIniciar11: TMenuItem;
    miSolParar11: TMenuItem;
    miSolTraco12: TMenuItem;
    miSolIniciar12: TMenuItem;
    miSolParar12: TMenuItem;
    N28: TMenuItem;
    NovoAgendamento1: TMenuItem;
    N29: TMenuItem;
    NovoAgendamento2: TMenuItem;
    N30: TMenuItem;
    NovoAgendamento3: TMenuItem;
    N31: TMenuItem;
    NovoAgendamento4: TMenuItem;
    N32: TMenuItem;
    NovoAgendamento5: TMenuItem;
    N33: TMenuItem;
    NovoAgendamento6: TMenuItem;
    N34: TMenuItem;
    NovoAgendamento7: TMenuItem;
    N35: TMenuItem;
    NovoAgendamento8: TMenuItem;
    N36: TMenuItem;
    NovoAgendamento9: TMenuItem;
    N37: TMenuItem;
    NovoAgendamento10: TMenuItem;
    N38: TMenuItem;
    NovoAgendamento11: TMenuItem;
    N39: TMenuItem;
    NovoAgendamento12: TMenuItem;
    btnConfTempos: TBitBtn;
    btnConferencia: TBitBtn;
    btnConferencia2: TBitBtn;
    EncerrarWEB1: TMenuItem;
    N40: TMenuItem;
    EncerrarWEB2: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    EncerrarWEB3: TMenuItem;
    N43: TMenuItem;
    EncerrarWEB4: TMenuItem;
    N44: TMenuItem;
    EncerrarWEB5: TMenuItem;
    N45: TMenuItem;
    EncerrarWEB6: TMenuItem;
    N46: TMenuItem;
    EncerrarWEB7: TMenuItem;
    N47: TMenuItem;
    EncerrarWEB8: TMenuItem;
    N48: TMenuItem;
    EncerrarWEB9: TMenuItem;
    N49: TMenuItem;
    EncerrarWEB10: TMenuItem;
    N50: TMenuItem;
    EncerrarWEB11: TMenuItem;
    N51: TMenuItem;
    EncerrarWEB12: TMenuItem;
    N52: TMenuItem;
    pmRegra1: TMenuItem;
    pmRegraDetalhes1: TMenuItem;
    pmRegra2: TMenuItem;
    pmRegraDetalhes2: TMenuItem;
    pmRegra3: TMenuItem;
    pmRegraDetalhes3: TMenuItem;
    pmRegra4: TMenuItem;
    pmRegraDetalhes4: TMenuItem;
    pmRegra5: TMenuItem;
    pmRegraDetalhes5: TMenuItem;
    pmRegraDetalhes6: TMenuItem;
    pmRegra6: TMenuItem;
    pmRegra7: TMenuItem;
    pmRegraDetalhes7: TMenuItem;
    pmRegra8: TMenuItem;
    pmRegraDetalhes8: TMenuItem;
    pmRegra9: TMenuItem;
    pmRegraDetalhes9: TMenuItem;
    pmRegra10: TMenuItem;
    pmRegraDetalhes10: TMenuItem;
    pmRegra11: TMenuItem;
    pmRegraDetalhes11: TMenuItem;
    pmRegra12: TMenuItem;
    pmRegraDetalhes12: TMenuItem;
    pmRegraHistorico1: TMenuItem;
    pmRegraHistorico2: TMenuItem;
    pmRegraHistorico3: TMenuItem;
    pmRegraHistorico4: TMenuItem;
    pmRegraHistorico5: TMenuItem;
    pmRegraHistorico6: TMenuItem;
    pmRegraHistorico7: TMenuItem;
    pmRegraHistorico8: TMenuItem;
    pmRegraHistorico9: TMenuItem;
    pmRegraHistorico10: TMenuItem;
    pmRegraHistorico11: TMenuItem;
    pmRegraHistorico12: TMenuItem;
    btnSolucaoSolicitacao: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAbrirChamadoClick(Sender: TObject);
    procedure dbQuadro1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbQuadro1DblClick(Sender: TObject);
    procedure dbQuadro2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbQuadro3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbQuadro4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbQuadro5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbQuadro6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbQuadro1TitleClick(Column: TColumn);
    procedure dbQuadro2TitleClick(Column: TColumn);
    procedure dbQuadro3TitleClick(Column: TColumn);
    procedure dbQuadro4TitleClick(Column: TColumn);
    procedure dbQuadro5TitleClick(Column: TColumn);
    procedure dbQuadro6TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure dbQuadroSol1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAbrirSolicitacaoClick(Sender: TObject);
    procedure dbQuadroSol1DblClick(Sender: TObject);
    procedure btnSolucoesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure pmGeral1Click(Sender: TObject);
    procedure pmTecnica1Click(Sender: TObject);
    procedure pmAnalise1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Detalhes5Click(Sender: TObject);
    procedure btnBuscarClienteClick(Sender: TObject);
    procedure Detalhes1Click(Sender: TObject);
    procedure Detalhes2Click(Sender: TObject);
    procedure Detalhes3Click(Sender: TObject);
    procedure Detalhes4Click(Sender: TObject);
    procedure Detalhes6Click(Sender: TObject);
    procedure dbAtivQuadro1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAbrirAtividadeClick(Sender: TObject);
    procedure btnBuscarCliente2Click(Sender: TObject);
    procedure btnSolucoes2Click(Sender: TObject);
    procedure Detalhes7Click(Sender: TObject);
    procedure Detalhes8Click(Sender: TObject);
    procedure Detalhes9Click(Sender: TObject);
    procedure Detalhes10Click(Sender: TObject);
    procedure Detalhes11Click(Sender: TObject);
    procedure Detalhes12Click(Sender: TObject);
    procedure dbAtivQuadro1DblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure dbAgenda1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Reagendamento1Click(Sender: TObject);
    procedure Cancelamento1Click(Sender: TObject);
    procedure btnAgendamentoClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure pmDetalhes1Click(Sender: TObject);
    procedure tsAgendamentoShow(Sender: TObject);
    procedure tsSolicitacaoShow(Sender: TObject);
    procedure Detalhes13Click(Sender: TObject);
    procedure Detalhes14Click(Sender: TObject);
    procedure Detalhes15Click(Sender: TObject);
    procedure Detalhes16Click(Sender: TObject);
    procedure Detalhes17Click(Sender: TObject);
    procedure Detalhes18Click(Sender: TObject);
    procedure Detalhes19Click(Sender: TObject);
    procedure Detalhes20Click(Sender: TObject);
    procedure Detalhes21Click(Sender: TObject);
    procedure Detalhes22Click(Sender: TObject);
    procedure Detalhes23Click(Sender: TObject);
    procedure Detalhes24Click(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure Encerrar1Click(Sender: TObject);
    procedure Encerrar2Click(Sender: TObject);
    procedure Encerrar3Click(Sender: TObject);
    procedure Encerrar4Click(Sender: TObject);
    procedure Encerrar5Click(Sender: TObject);
    procedure Encerrar6Click(Sender: TObject);
    procedure Encerrar7Click(Sender: TObject);
    procedure Encerrar8Click(Sender: TObject);
    procedure Encerrar9Click(Sender: TObject);
    procedure Encerrar10Click(Sender: TObject);
    procedure Encerrar11Click(Sender: TObject);
    procedure Encerrar12Click(Sender: TObject);
    procedure tsAtividadesShow(Sender: TObject);
    procedure tsChamadosShow(Sender: TObject);
    procedure dbQuadroSol1TitleClick(Column: TColumn);
    procedure dbQuadroSol2TitleClick(Column: TColumn);
    procedure dbQuadroSol3TitleClick(Column: TColumn);
    procedure dbQuadroSol4TitleClick(Column: TColumn);
    procedure dbQuadroSol5TitleClick(Column: TColumn);
    procedure dbQuadroSol6TitleClick(Column: TColumn);
    procedure dbQuadroSol7TitleClick(Column: TColumn);
    procedure dbQuadroSol8TitleClick(Column: TColumn);
    procedure dbQuadroSol9TitleClick(Column: TColumn);
    procedure dbQuadroSol10TitleClick(Column: TColumn);
    procedure dbQuadroSol11TitleClick(Column: TColumn);
    procedure dbQuadroSol12TitleClick(Column: TColumn);
    procedure dbAgenda1TitleClick(Column: TColumn);
    procedure dbAgenda2TitleClick(Column: TColumn);
    procedure dbAgenda3TitleClick(Column: TColumn);
    procedure dbAgenda4TitleClick(Column: TColumn);
    procedure dbAgenda5TitleClick(Column: TColumn);
    procedure dbAgenda6TitleClick(Column: TColumn);
    procedure dbAgenda7TitleClick(Column: TColumn);
    procedure dbAgenda8TitleClick(Column: TColumn);
    procedure dbAgenda9TitleClick(Column: TColumn);
    procedure dbAgenda10TitleClick(Column: TColumn);
    procedure dbAgenda11TitleClick(Column: TColumn);
    procedure dbAgenda12TitleClick(Column: TColumn);
    procedure dbAtivQuadro1TitleClick(Column: TColumn);
    procedure dbAtivQuadro2TitleClick(Column: TColumn);
    procedure dbAtivQuadro3TitleClick(Column: TColumn);
    procedure dbAtivQuadro4TitleClick(Column: TColumn);
    procedure dbAtivQuadro5TitleClick(Column: TColumn);
    procedure dbAtivQuadro6TitleClick(Column: TColumn);
    procedure dbRecadoLctoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbRecadoDestinoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tsRecadosShow(Sender: TObject);
    procedure chkVerTodosRecadosClick(Sender: TObject);
    procedure dbRecadoLctoTitleClick(Column: TColumn);
    procedure dbRecadoDestinoTitleClick(Column: TColumn);
    procedure btnNovoRecadoClick(Sender: TObject);
    procedure Detalhes28Click(Sender: TObject);
    procedure Detalhes29Click(Sender: TObject);
    procedure Encerrar16Click(Sender: TObject);
    procedure EnviarEmail1Click(Sender: TObject);
    procedure miSolIniciar2Click(Sender: TObject);
    procedure miSolIniciar5Click(Sender: TObject);
    procedure miSolIniciar1Click(Sender: TObject);
    procedure miSolIniciar3Click(Sender: TObject);
    procedure miSolIniciar4Click(Sender: TObject);
    procedure miSolIniciar6Click(Sender: TObject);
    procedure miSolIniciar7Click(Sender: TObject);
    procedure miSolIniciar8Click(Sender: TObject);
    procedure miSolIniciar9Click(Sender: TObject);
    procedure miSolIniciar10Click(Sender: TObject);
    procedure miSolIniciar11Click(Sender: TObject);
    procedure miSolIniciar12Click(Sender: TObject);
    procedure miSolParar5Click(Sender: TObject);
    procedure miSolParar1Click(Sender: TObject);
    procedure miSolParar2Click(Sender: TObject);
    procedure miSolParar3Click(Sender: TObject);
    procedure miSolParar4Click(Sender: TObject);
    procedure miSolParar6Click(Sender: TObject);
    procedure miSolParar7Click(Sender: TObject);
    procedure miSolParar8Click(Sender: TObject);
    procedure miSolParar9Click(Sender: TObject);
    procedure miSolParar10Click(Sender: TObject);
    procedure miSolParar11Click(Sender: TObject);
    procedure miSolParar12Click(Sender: TObject);
    procedure NovoAgendamento1Click(Sender: TObject);
    procedure NovoAgendamento2Click(Sender: TObject);
    procedure NovoAgendamento3Click(Sender: TObject);
    procedure NovoAgendamento4Click(Sender: TObject);
    procedure NovoAgendamento5Click(Sender: TObject);
    procedure NovoAgendamento6Click(Sender: TObject);
    procedure NovoAgendamento7Click(Sender: TObject);
    procedure NovoAgendamento8Click(Sender: TObject);
    procedure NovoAgendamento9Click(Sender: TObject);
    procedure NovoAgendamento10Click(Sender: TObject);
    procedure NovoAgendamento11Click(Sender: TObject);
    procedure NovoAgendamento12Click(Sender: TObject);
    procedure btnConfTemposClick(Sender: TObject);
    procedure btnConferenciaClick(Sender: TObject);
    procedure btnConferencia2Click(Sender: TObject);

    procedure WMSysCommand(var Msg: TWMSysCommand) ; message WM_SYSCOMMAND;
    procedure EncerrarWEB1Click(Sender: TObject);
    procedure EncerrarWEB2Click(Sender: TObject);
    procedure EncerrarWEB3Click(Sender: TObject);
    procedure EncerrarWEB4Click(Sender: TObject);
    procedure EncerrarWEB5Click(Sender: TObject);
    procedure EncerrarWEB6Click(Sender: TObject);
    procedure EncerrarWEB7Click(Sender: TObject);
    procedure EncerrarWEB8Click(Sender: TObject);
    procedure EncerrarWEB9Click(Sender: TObject);
    procedure EncerrarWEB10Click(Sender: TObject);
    procedure EncerrarWEB11Click(Sender: TObject);
    procedure EncerrarWEB12Click(Sender: TObject);
    procedure pmRegra1Click(Sender: TObject);
    procedure pmRegraDetalhes1Click(Sender: TObject);
    procedure pmRegraHistorico1Click(Sender: TObject);
    procedure btnSolucaoSolicitacaoClick(Sender: TObject);

  private
    { Private declarations }
    FControllerChamado: TChamadoController;
    FControllerSolicitacao: TSolicitacaoController;
    FControllerAgendamento: TAgendamentoController;
    FControllerRecado: TRecadoController;
    FIdRevenda: Integer;
    FIdRevendaPadrao: Integer;
    FTituloChamado: array[1..6] of string;
    FTituloSolicitacao: array[1..12] of string;
    FTituloAtividade: array[1..6] of string;
    FTituloAgenda: array[1..12] of string;
    procedure QuadroTitulos;

    procedure AbrirQuadrosChamados;
    procedure AbrirQuadrosAtividades;
    procedure AbrirQuadrosRecados();

    procedure InicioChamados;
    procedure InicioAtividades;
    procedure InicioAgendamento;
    procedure TitulosAgendamento;

    procedure InicioAgendamentoJSON;

    procedure AbrirQuadrosSolicitacao;
    procedure AbrirSolicitacao;
    procedure InicioSolicitacao;
    procedure ExecutarTimer(AExecutar: Boolean);

    procedure PermissaoSolicitacao;
    procedure PopMenu(AClientDataSet: TClientDataSet; ATipoSol: TEnumSolicitacao);
    procedure PopMenuDetalhesSolicitacaoRegra(AIdSolicitacao: Integer);
    procedure TamanhoGrids;

    procedure PodeEntrarUsuario(Sender: TObject; ATipo: TEnumChamadoAtividade = caChamado);
    procedure PodeEntrarStatus(AIdChamado: Integer; ACodStatusQuadro: string;
      ATipo: TEnumChamadoAtividade = caChamado);
    procedure GravarHoraAtual(AIdChamado, ACodigoStatus: Integer; ATipo: TEnumChamadoAtividade = caChamado);
    procedure ValidarChamado(var AGrade: TDBGrid; ADataSet: TDataSet; ACodigoStatus: string; ATipo: TEnumChamadoAtividade = caChamado);

    procedure BuscarCliente(ACodigoCliente: Integer);
    procedure DetalhesChamado(AIdChamado: Integer);
    procedure DetalhesAtividade(AIdChamado: Integer);
    procedure MostrarTempos;
    procedure TituloGrade(var AGrade: TDBGrid; ACodigoStatus, AStatusAbertura,
      AStatusOcorrencia: string);

    procedure PodeEntrarSolicitacaoStatus(AIdSolicitacao: Integer; ACodStatusQuadro: string);
    procedure PodeEntrarUsuarioSolicitacao(Sender: TObject);
    procedure GravarHoraAtualSolicitacao(AIdSolicitacao: Integer);
    procedure ValidarSolicitacao(var AGrade: TDBGrid; ADataSet: TDataSet);
    procedure GravarStatus(AIdSolicitacao: Integer);

    procedure TitulosChamados(AObj: TParametrosController; ACodigo: string; var ALblTitulo: TLabel; var ATxtCodigo: TEdit);
    procedure TitulosSolicitacoes(AObj: TParametrosController; ACodigo: string; var ALblTitulo: TLabel);
    procedure TitulosAtividades(AObj: TParametrosController; ACodigo: string; var ALblTitulo: TLabel; var ATxtCodigo: TEdit);
    procedure DadosAgendamento(var ATitulo: TLabel; ADataSet: TClientDataSet);
    procedure DadosAgendamentoJSON(var ATitulo: TLabel; ADataSet: TClientDataSet; AItem: TAgendamentoVO);

    procedure LimparAgendamento(ADataSet: TClientDataSet);
    procedure EntrarAgendamento(AId: Integer; ATipo: TEnumAgendamento);
    procedure EntrarDetalhes(AId: Integer; ADetalhe: Boolean=False);
    procedure EnviarEmail(AId: Integer);
    procedure DetalhesSolicitacao(IdSolicitacao: Integer);
    procedure DetalhesSolicitacaoRegra(IdSolicitacao: Integer);
    procedure DetalhesSolicitacaoRegraHistorico(IdSolicitacao: Integer);

    procedure AgendaAnterior;
    procedure AgendaProxima;
    procedure AgendaAbrirPrograma(ADataSet: TDataSet);
    procedure AlturaGrid();
    procedure DataAgendaAnterior();
    procedure ProximaDataAgenda();
    procedure RegistrosTituloChamado(ALabel: TLabel; AIndice: Integer; ADataSet: TDataSet);
    procedure RegistrosTituloSolicitacao(ALabel: TLabel; AIndice: Integer; ADataSet: TDataSet);
    procedure RegistrosTituloAtividade(ALabel: TLabel; AIndice: Integer; ADataSet: TDataSet);
    procedure RegistrosTituloAgenda(ALabel: TLabel; AGrid: TDBGrid; ADataSet: TDataSet);
    procedure TamanhoGridAgenda;
    procedure MostrarCheckBoxRecado;
    procedure NovoRecado;
    procedure RecadoDetalhe(AId: Integer; AOperacao: string='A');
    procedure EnviarEmailRecado(AIdUsuarioOrigem, AIdUsuarioDestino, AId: Integer);
    procedure TituloTempo(var ATraco: TMenuItem; var AInicio: TMenuItem; var AParar: TMenuItem;
      AMostrar: Boolean);
    procedure ControleTituloTempo;
    function RetornarTituloSolicitacao(ATitulo: string): string;
    procedure IniciarTempo(AIdUsuario, AIdSolicitacao: Integer; ATituloQuadro: string);
    procedure FinalizarTempo(AIdUsuario, AIdSolicitacao: Integer; AIdStatus: Integer=0);
    procedure SolicitacaoAberta(ADataSet: TDataSet; AGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NovoAgendamentoMenu(AData: string);
    function ExisteTituloTempo(ALista: TList<string>; ATitulo: string): Boolean;
    procedure AbrirAbaRecados;
    procedure Conferencia;
    procedure PermissaoConferenciaGeral;
    procedure MenuJanela;
    function RevendaPadraoQuadro: Integer;
    procedure TituloJanela(AIdRevenda: Integer);
    procedure EncerrarWEB(Id: Integer);
    procedure OrdenarGrids(AClientDataSet: TClientDataSet; ACampo: string);

    function VerificarTarefas(APrograma: Integer): Boolean;
    function VerificarTarefasSolicitacao(ADataSet: TDataSet): Boolean;
    function VerificarTarefasChamado(): Boolean;
    function VerificarTarefasAtividade(): Boolean;
    function RetornarSolicitacaoEmAberto(ADataSet: TDataSet): Boolean;
  public
    { Public declarations }
    constructor Create();
  end;

  const
    SC_MyMenuItemRevenda = WM_USER + 1;
    SC_MyMenuItemRevendaLimpar = WM_USER + 2;

var
  frmQuadro2: TfrmQuadro2;

implementation

{$R *.dfm}

uses uChamado, uFuncoesSIDomper, uGrade, uImagens, uSolicitacao, uListaProblemaChamado,
  uStatusController, uUsuarioController, uCliente, uChamadoDetalhes,
  uAgendamentoMotivo, uAgendamento, uSolicitacaoDetalhes, uVisita,
  uSolicitacaoDetalhes2, uChamadoDetalhes2, uStatusTroca, uRevendaController;

{ TfrmQuadro }


procedure TfrmQuadro2.AbrirQuadrosAtividades;
begin
  if tsAtividades.Showing then
  begin
    ExecutarTimer(False);
    dm.ConexaoBanco;
//    FControllerChamado.PreencherTodosQuadrosAtividades(dm.IdUsuario, FIdRevenda);
    FControllerChamado.PreencherTodosQuadrosAtividadesJSON(dm.IdUsuario, FIdRevenda);

    RegistrosTituloAtividade(lblTitAtiv1, 1, dsAtivQuadro1.DataSet);
    RegistrosTituloAtividade(lblTitAtiv2, 2, dsAtivQuadro2.DataSet);
    RegistrosTituloAtividade(lblTitAtiv3, 3, dsAtivQuadro3.DataSet);
    RegistrosTituloAtividade(lblTitAtiv4, 4, dsAtivQuadro4.DataSet);
    RegistrosTituloAtividade(lblTitAtiv5, 5, dsAtivQuadro5.DataSet);
    RegistrosTituloAtividade(lblTitAtiv6, 6, dsAtivQuadro6.DataSet);

    ExecutarTimer(true);
  end;
end;

procedure TfrmQuadro2.AbrirQuadrosChamados;
begin
  if tsChamados.Showing then
  begin
    ExecutarTimer(False);
    dm.ConexaoBanco;
    FControllerChamado.PreencherTodosQuadrosJSON(dm.IdUsuario, FIdRevenda);
//    FControllerChamado.PreencherTodosQuadros(dm.IdUsuario, FIdRevenda);

    RegistrosTituloChamado(lblTitulo1, 1, dsQuadro1.DataSet);
    RegistrosTituloChamado(lblTitulo2, 2, dsQuadro2.DataSet);
    RegistrosTituloChamado(lblTitulo3, 3, dsQuadro3.DataSet);
    RegistrosTituloChamado(lblTitulo4, 4, dsQuadro4.DataSet);
    RegistrosTituloChamado(lblTitulo5, 5, dsQuadro5.DataSet);
    RegistrosTituloChamado(lblTitulo6, 6, dsQuadro6.DataSet);

    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.AbrirQuadrosRecados();
var
  iIdUsuario: Integer;
begin

  if tsRecados.Showing then
  begin
    if chkVerTodosRecados.Checked then
      iIdUsuario := 0
    else
      iIdUsuario := dm.IdUsuario;

//    FControllerRecado.Quadro(dm.IdUsuario, FIdRevenda);
    FControllerRecado.QuadroJSON(iIdUsuario, FIdRevenda);
  end;
end;

procedure TfrmQuadro2.AbrirQuadrosSolicitacao;
begin
  if tsSolicitacao.Showing then
  begin
    ExecutarTimer(False);
    dm.ConexaoBanco;
    if btnConfTempos.Visible = False then
    begin
      btnSolucaoSolicitacao.Left := btnConfTempos.Left;
      btnSolucaoSolicitacao.Width := btnConfTempos.Width;
    end;
//    FControllerSolicitacao.PreencherTodosQuadros(dm.IdUsuario);
    FControllerSolicitacao.PreencherTodosQuadrosJSON(dm.IdUsuario);
    RegistrosTituloSolicitacao(lblTitSolicitacao1, 1, dsQuadroSol1.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao2, 2, dsQuadroSol2.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao3, 3, dsQuadroSol3.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao4, 4, dsQuadroSol4.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao5, 5, dsQuadroSol5.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao6, 6, dsQuadroSol6.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao7, 7, dsQuadroSol7.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao8, 8, dsQuadroSol8.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao9, 9, dsQuadroSol9.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao10, 10, dsQuadroSol10.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao11, 11, dsQuadroSol11.DataSet);
    RegistrosTituloSolicitacao(lblTitSolicitacao12, 12, dsQuadroSol12.DataSet);

    ExecutarTimer(true);
  end;
end;

procedure TfrmQuadro2.AbrirSolicitacao;
begin
  if tsSolicitacao.TabVisible then
  begin
    if tsSolicitacao.Showing then
    begin
      AbrirQuadrosSolicitacao();
    end;
  end;
end;

procedure TfrmQuadro2.AgendaAbrirPrograma(ADataSet: TDataSet);
var
  Agendamento: TAgendamentoController;
  iTipoPrograma: Integer;
  AIdAgenda: Integer;
  IdCliente: Integer;
begin
  AIdAgenda := ADataSet.FieldByName('Id').AsInteger;

  if AIdAgenda = 0 then
    raise Exception.Create('Informe o Agendamento!');

  IdCliente := ADataSet.FieldByName('IdCliente').AsInteger;

  dm.ConexaoBanco;
  Agendamento := TAgendamentoController.Create;
  try
    iTipoPrograma := Agendamento.RetornaTipoPrograma(AIdAgenda);

    Agendamento.Encerrar(AIdAgenda, 0);
  finally
    FreeAndNil(Agendamento);
  end;
//------------------------------------------------------------------------------
// Visita
  if iTipoPrograma = 2 then
  begin
    ExecutarTimer(False);
    if not (TFuncoes.FormularioEstaCriado(TfrmVisita)) then
    begin
      TFuncoes.CriarFormularioModal(TfrmVisita.create(False, True, True, IdCliente, AIdAgenda));
      if dm.IdCadastro > 0 then
        FControllerAgendamento.Encerrar(AIdAgenda, dm.IdCadastro);
    end;
    InicioAgendamento();
    ExecutarTimer(True);
  end;
//------------------------------------------------------------------------------
// Atividade
  if iTipoPrograma = 7 then
  begin
    ExecutarTimer(False);
    if not (TFuncoes.FormularioEstaCriado(TfrmChamado)) then
    begin
      TFuncoes.CriarFormularioModal(TfrmChamado.create(True, true, caAtividade, True, IdCliente, AIdAgenda));
      if dm.IdCadastro > 0 then
        FControllerAgendamento.Encerrar(AIdAgenda, dm.IdCadastro);
    end;
    InicioAgendamento();
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.AgendaAnterior;
var
  i: Integer;
//  DataInicial: TDate;
//  DataFinal: TDate;
begin
  ExecutarTimer(False);
  try
//    edtDataFinal.Text := DateToStr(StrToDate(edtDataInicial.Text) - 1);
//    edtDataInicial.Text := DateToStr(StrToDate(edtDataInicial.Text) - 15);

//    edtDataInicial.Text := DateToStr(StrToDate(edtDataInicial.Text) - 1);

//    edtDataFinal.Text := DateToStr(StrToDate(edtDataInicial.Text) - 1);
//    edtDataInicial.Text := DateToStr(StrToDate(edtDataInicial.Text) - 16);

    DataAgendaAnterior();
    InicioAgendamento();
  except
    // nada
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.AgendaProxima;
begin
  ExecutarTimer(False);
  try
//    edtDataInicial.Text := DateToStr(StrToDate(edtDataFinal.Text) + 1);
//    edtDataFinal.Text := DateToStr(StrToDate(edtDataInicial.Text) + 15);

//    edtDataInicial.Text := DateToStr(StrToDate(edtDataFinal.Text) + 1);
//    edtDataFinal.Text := DateToStr(StrToDate(edtDataInicial.Text) + 15);

    ProximaDataAgenda();
    InicioAgendamento();
  except
    // nada
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.AlturaGrid;
var
  iDivide: Integer;
  iAltura: Integer;
begin
  iDivide := 3;
  iAltura := Self.Height - 80;
//  iAltura := Screen.Height - 80;

  pnlCha1.Height := (iAltura div iDivide);
  pnlCha2.Height := (iAltura div iDivide);
  pnlCha3.Height := (iAltura div iDivide);
  pnlCha4.Height := (iAltura div iDivide);
  pnlCha5.Height := (iAltura div iDivide);
  pnlCha6.Height := (iAltura div iDivide);

  pnlAtiv1.Height := (iAltura div iDivide);
  pnlAtiv2.Height := (iAltura div iDivide);
  pnlAtiv3.Height := (iAltura div iDivide);
  pnlAtiv4.Height := (iAltura div iDivide);
  pnlAtiv5.Height := (iAltura div iDivide);
  pnlAtiv6.Height := (iAltura div iDivide);

  iDivide := 4;
  iAltura := Self.ClientHeight;
  pnlSol1.Height := (iAltura div iDivide);
  pnlSol2.Height := (iAltura div iDivide);
  pnlSol3.Height := (iAltura div iDivide);
  pnlSol4.Height := (iAltura div iDivide);
  pnlSol5.Height := (iAltura div iDivide);
  pnlSol6.Height := (iAltura div iDivide);
  pnlSol7.Height := (iAltura div iDivide);
  pnlSol8.Height := (iAltura div iDivide);
  pnlSol9.Height := (iAltura div iDivide);
  pnlSol10.Height := (iAltura div iDivide);
  pnlSol11.Height := (iAltura div iDivide);
  pnlSol12.Height := (iAltura div iDivide);

  iDivide := 4;
  iAltura := Self.ClientHeight - 80;
  pnlAge1.Height := (iAltura div iDivide);
  pnlAge2.Height := (iAltura div iDivide);
  pnlAge3.Height := (iAltura div iDivide);
  pnlAge4.Height := (iAltura div iDivide);
  pnlAge5.Height := (iAltura div iDivide);
  pnlAge6.Height := (iAltura div iDivide);
  pnlAge7.Height := (iAltura div iDivide);
  pnlAge8.Height := (iAltura div iDivide);
  pnlAge9.Height := (iAltura div iDivide);
  pnlAge10.Height := (iAltura div iDivide);
  pnlAge11.Height := (iAltura div iDivide);
  pnlAge12.Height := (iAltura div iDivide);
end;

procedure TfrmQuadro2.GravarHoraAtual(AIdChamado, ACodigoStatus: Integer;
  ATipo: TEnumChamadoAtividade = caChamado);
var
  obj: TChamadoController;
//  objParametro: TParametrosController;
  iCodigoStatus: Integer;
begin
  // salvar hora no chamado caso o status do parametro 10 for diferente do quadro
//  objParametro := TParametrosController.Create;
  obj := TChamadoController.Create;
  try
    if ATipo = caChamado then
      iCodigoStatus := StrToIntDef(obj.StatusChamadoAtendimento(),0)
//      objParametro.LocalizarCodigo(10)
    else
      iCodigoStatus := StrToIntDef(obj.StatusAtendimentoAtividade(),0);
//      objParametro.LocalizarCodigo(10);
//    iCodigoStatus := StrToIntDef(objParametro.Model.CDSCadastroPar_Valor.AsString,0);

    if ACodigoStatus <> iCodigoStatus then
      obj.UpdateHoraUsuarioAtual(AIdChamado, ATipo);

  finally
//    FreeAndNil(objParametro);
    FreeAndNil(obj);
  end;
// salvar hora no chamado caso o status do parametro 10 for diferente do quadro
//  if ACodigoStatus <> iCodigoStatus then
//  begin
//    obj := TChamadoController.Create;
//    try
//      obj.UpdateHoraUsuarioAtual(AIdChamado);
//    finally
//      FreeAndNil(obj);
//    end;
//  end;
end;

procedure TfrmQuadro2.GravarHoraAtualSolicitacao(AIdSolicitacao: Integer);
var
  obj: TSolicitacaoController;
begin
  obj := TSolicitacaoController.Create;
  try
    obj.UpdateHoraUsuarioAtual(AIdSolicitacao);
  finally
    FreeAndNil(obj);
  end;
end;

procedure TfrmQuadro2.GravarStatus(AIdSolicitacao: Integer);
begin

end;

procedure TfrmQuadro2.btnAbrirAtividadeClick(Sender: TObject);
begin
  ExecutarTimer(False);
  try
    if not (TFuncoes.FormularioEstaCriado(TfrmChamado)) then
      TFuncoes.CriarFormularioModal(TfrmChamado.create(True, true, caAtividade));
    AbrirQuadrosAtividades;
  finally
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.btnAbrirChamadoClick(Sender: TObject);
begin
  ExecutarTimer(False);
  try
    if not (TFuncoes.FormularioEstaCriado(TfrmChamado)) then
      TFuncoes.CriarFormularioModal(TfrmChamado.create(True, true, caChamado));
    AbrirQuadrosChamados;
  finally
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.btnAbrirSolicitacaoClick(Sender: TObject);
begin
  ExecutarTimer(False);
  try
    if not (TFuncoes.FormularioEstaCriado(TfrmSolicitacao)) then
      TFuncoes.CriarFormularioModal(TfrmSolicitacao.create(True, true));
    AbrirQuadrosSolicitacao;
  finally
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.btnAgendamentoClick(Sender: TObject);
var
  Formulario: TfrmAgendamento;
begin
  ExecutarTimer(False);
  Formulario := TfrmAgendamento.create(False, True);
  try
    if Formulario.ShowModal = mrOk then
      btnOkClick(Self);
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.btnAnteriorClick(Sender: TObject);
begin
  AgendaAnterior();
end;

procedure TfrmQuadro2.btnBuscarCliente2Click(Sender: TObject);
var
  Formulario: TfrmListaProblemaChamado;
begin
  Formulario := TfrmListaProblemaChamado.Create(False, caAtividade);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
end;

procedure TfrmQuadro2.btnBuscarClienteClick(Sender: TObject);
begin
  ExecutarTimer(False);
  if not (TFuncoes.FormularioEstaCriado(TfrmCliente)) then
    TFuncoes.CriarFormulario(TfrmCliente.create(DM.IdUsuario));
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.btnConferencia2Click(Sender: TObject);
begin
  Conferencia();
end;

procedure TfrmQuadro2.btnConferenciaClick(Sender: TObject);
begin
  Conferencia();
end;

procedure TfrmQuadro2.btnConfTemposClick(Sender: TObject);
var
  F: TfrmConferenciaTempo;
begin
  F := TfrmConferenciaTempo.create(Self);
  F.ShowModal;
  FreeAndNil(F);
end;

procedure TfrmQuadro2.btnNovoRecadoClick(Sender: TObject);
begin
  NovoRecado();
end;

procedure TfrmQuadro2.btnOkClick(Sender: TObject);
begin
  InicioAgendamento();
end;

procedure TfrmQuadro2.btnProximoClick(Sender: TObject);
begin
  AgendaProxima();
end;

procedure TfrmQuadro2.btnSolucaoSolicitacaoClick(Sender: TObject);
var
  Formulario: TfrmListaProblemaSolicitacao;
begin
  ExecutarTimer(False);
  Formulario := TfrmListaProblemaSolicitacao.Create(False);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);

end;

procedure TfrmQuadro2.btnSolucoes2Click(Sender: TObject);
var
  Formulario: TfrmListaProblemaChamado;
begin
  ExecutarTimer(False);
  Formulario := TfrmListaProblemaChamado.Create(False, caAtividade);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.btnSolucoesClick(Sender: TObject);
var
  Formulario: TfrmListaProblemaChamado;
begin
  ExecutarTimer(False);
  Formulario := TfrmListaProblemaChamado.Create(False);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.BuscarCliente(ACodigoCliente: Integer);
begin
  if ACodigoCliente > 0 then
  begin
    if not (TFuncoes.FormularioEstaCriado(TfrmCliente)) then
      TFuncoes.CriarFormulario(TfrmCliente.create(DM.IdUsuario, ACodigoCliente));
  end
  else
    raise Exception.Create('N�o h� Cliente para Acessar');
end;

procedure TfrmQuadro2.Detalhes10Click(Sender: TObject);
begin
  DetalhesAtividade(FControllerChamado.Model.CDSAtividade4Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes11Click(Sender: TObject);
begin
  DetalhesAtividade(FControllerChamado.Model.CDSAtividade5Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes12Click(Sender: TObject);
begin
  DetalhesAtividade(FControllerChamado.Model.CDSAtividade6Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes13Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda1Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes14Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda2Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes15Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda3Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes16Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda4Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes17Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda5Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes18Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda6Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes19Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda7Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes1Click(Sender: TObject);
begin
  DetalhesChamado(FControllerChamado.Model.CDSQuadro1Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes5Click(Sender: TObject);
begin
  DetalhesChamado(FControllerChamado.Model.CDSQuadro5Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes6Click(Sender: TObject);
begin
  DetalhesChamado(FControllerChamado.Model.CDSQuadro6Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes7Click(Sender: TObject);
begin
  DetalhesAtividade(FControllerChamado.Model.CDSAtividade1Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes8Click(Sender: TObject);
begin
  DetalhesAtividade(FControllerChamado.Model.CDSAtividade2Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes9Click(Sender: TObject);
begin
  DetalhesAtividade(FControllerChamado.Model.CDSAtividade3Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.DetalhesAtividade(AIdChamado: Integer);
var
  Formulario: TfrmChamadoDetalhes2;
begin
  if AIdChamado = 0 then
    raise Exception.Create('N�o h� registro para Visualizar !');

  ExecutarTimer(False);
  Formulario := TfrmChamadoDetalhes2.create(AIdChamado, caAtividade);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.Cancelamento1Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda1Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.chkVerTodosRecadosClick(Sender: TObject);
begin
  AbrirQuadrosRecados()
end;

procedure TfrmQuadro2.Conferencia;
var
  formulario: TfrmConferenciaTempoGeral;
begin
  formulario := TfrmConferenciaTempoGeral.Create(Self);
  formulario.ShowModal;
  formulario.Free;
end;

procedure TfrmQuadro2.ControleTituloTempo;
var
  bMostrar: Boolean;
  Lista: TList<string>;
  objSol: TSolicitacaoController;
  sTitulo: string;
begin
  objSol := TSolicitacaoController.Create;
  try

    if tsSolicitacao.TabVisible then
    begin
      Lista := objSol.RetornarListaStatusTempo();

      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao1.Caption);
//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao1.Caption));
      TituloTempo(miSolTraco1, miSolIniciar1, miSolParar1, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao2.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao2.Caption);
      TituloTempo(miSolTraco2, miSolIniciar2, miSolParar2, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao3.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao3.Caption);
      TituloTempo(miSolTraco3, miSolIniciar3, miSolParar3, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao4.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao4.Caption);
      TituloTempo(miSolTraco4, miSolIniciar4, miSolParar4, bMostrar);


//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao5.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao5.Caption);
      TituloTempo(miSolTraco5, miSolIniciar5, miSolParar5, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao6.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao6.Caption);
      TituloTempo(miSolTraco6, miSolIniciar6, miSolParar6, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao7.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao7.Caption);
      TituloTempo(miSolTraco7, miSolIniciar7, miSolParar7, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao8.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao8.Caption);
      TituloTempo(miSolTraco8, miSolIniciar8, miSolParar8, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao9.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao9.Caption);
      TituloTempo(miSolTraco9, miSolIniciar9, miSolParar9, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao10.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao10.Caption);
      TituloTempo(miSolTraco10, miSolIniciar10, miSolParar10, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao11.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao11.Caption);
      TituloTempo(miSolTraco11, miSolIniciar11, miSolParar11, bMostrar);

//      bMostrar := Lista.Contains(RetornarTituloSolicitacao(lblTitSolicitacao12.Caption));
      bMostrar := ExisteTituloTempo(Lista, lblTitSolicitacao12.Caption);
      TituloTempo(miSolTraco12, miSolIniciar12, miSolParar12, bMostrar);
    end;
  finally
    FreeAndNil(objSol);
    FreeAndNil(Lista);
  end;
end;

constructor TfrmQuadro2.Create();
begin
  inherited Create(nil);


  FIdRevenda := RevendaPadraoQuadro();
  FIdRevendaPadrao := FIdRevenda;

  MenuJanela();
  TituloJanela(FIdRevenda);

  FControllerChamado := TChamadoController.Create;
  FControllerSolicitacao := TSolicitacaoController.Create;
  FControllerAgendamento := TAgendamentoController.Create;
  FControllerRecado := TRecadoController.Create;

  cdsAgenda1.CreateDataSet;
  cdsAgenda2.CreateDataSet;
  cdsAgenda3.CreateDataSet;
  cdsAgenda4.CreateDataSet;
  cdsAgenda5.CreateDataSet;
  cdsAgenda6.CreateDataSet;
  cdsAgenda7.CreateDataSet;
  cdsAgenda8.CreateDataSet;
  cdsAgenda9.CreateDataSet;
  cdsAgenda10.CreateDataSet;
  cdsAgenda11.CreateDataSet;
  cdsAgenda12.CreateDataSet;

  edtDataInicial.Text := DateToStr(Date);
  edtDataFinal.Text := DateToStr(Date + 11);

  try
    if not FControllerChamado.PermissaoChamadoQuadro(dm.IdUsuario) then
      tsChamados.TabVisible := False
    else
      InicioChamados;

    if not FControllerSolicitacao.PermissaoQuadro(dm.IdUsuario) then
      tsSolicitacao.TabVisible := False
    else
      InicioSolicitacao;

    if not FControllerChamado.PermissaoAtividadeQuadro(dm.IdUsuario) then
      tsAtividades.TabVisible := False
    else
      InicioAtividades;

    if not FControllerAgendamento.PermissaoQuadro(dm.IdUsuario) then
      tsAgendamento.TabVisible := False
    else
      InicioAgendamento;

    if not FControllerRecado.PermissaoAcessar(dm.IdUsuario) then
      tsRecados.TabVisible := False
    else
      AbrirQuadrosRecados();

    QuadroTitulos();

    MostrarTempos();

    MostrarCheckBoxRecado();
  finally
//    FreeAndNil(FControllerChamado);
//    FreeAndNil(FControllerSolicitacao);
//    FreeAndNil(FControllerAgendamento);
//    FreeAndNil(FControllerRecado);
  end;
end;

procedure TfrmQuadro2.AbrirAbaRecados;
var
  iQtdeReg: Integer;
begin
  iQtdeReg := 0;
  if dsRecadoDestino.DataSet.Active then
    iQtdeReg := dsRecadoDestino.DataSet.RecordCount;

  if iQtdeReg = 0 then
    FControllerRecado.Quadro(dm.IdUsuario, FIdRevenda);

  if dsRecadoDestino.DataSet.RecordCount > 0 then
    tsRecados.Show;
end;

procedure TfrmQuadro2.TamanhoGridAgenda;
var
  compAge: Integer;
begin
  compAge := 240;
  dbAgenda1.Columns[1].Width := dbAgenda1.Width - compAge;
  dbAgenda2.Columns[1].Width := dbAgenda2.Width - compAge;
  dbAgenda3.Columns[1].Width := dbAgenda3.Width - compAge;
  dbAgenda4.Columns[1].Width := dbAgenda4.Width - compAge;
  dbAgenda5.Columns[1].Width := dbAgenda5.Width - compAge;
  dbAgenda6.Columns[1].Width := dbAgenda6.Width - compAge;
  dbAgenda7.Columns[1].Width := dbAgenda7.Width - compAge;
  dbAgenda8.Columns[1].Width := dbAgenda8.Width - compAge;
  dbAgenda9.Columns[1].Width := dbAgenda9.Width - compAge;
  dbAgenda10.Columns[1].Width := dbAgenda10.Width - compAge;
  dbAgenda11.Columns[1].Width := dbAgenda11.Width - compAge;
  dbAgenda12.Columns[1].Width := dbAgenda12.Width - compAge;
end;

procedure TfrmQuadro2.DadosAgendamento(var ATitulo: TLabel;
  ADataSet: TClientDataSet);
var
  dData: TDateTime;
begin

  dData := FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime;
//  ATitulo.Caption := DateToStr(dData)  + ' - ' + FormatDateTime('dddd', dData);
  ADataSet.Append;
  ADataSet.FieldByName('Data').AsDateTime   := dData;
  ADataSet.FieldByName('Id').AsInteger      := FControllerAgendamento.Model.CDSQuadroAge_Id.AsInteger;
  ADataSet.FieldByName('Hora').AsDateTime   := FControllerAgendamento.Model.CDSQuadroAge_Hora.AsDateTime;
  ADataSet.FieldByName('Cliente').AsString  := FControllerAgendamento.Model.CDSQuadroAge_NomeCliente.AsString;
  ADataSet.FieldByName('Usuario').AsString  := FControllerAgendamento.Model.CDSQuadroUsu_Nome.AsString;
  ADataSet.FieldByName('Status').AsString   := FControllerAgendamento.Model.CDSQuadroSta_Nome.AsString;
  ADataSet.FieldByName('IdCliente').AsInteger   := FControllerAgendamento.Model.CDSQuadroAge_Cliente.AsInteger;
  ADataSet.Post;
end;

procedure TfrmQuadro2.DadosAgendamentoJSON(var ATitulo: TLabel;
  ADataSet: TClientDataSet; AItem: TAgendamentoVO);
begin
//  ATitulo.Caption := DateToStr(dData)  + ' - ' + FormatDateTime('dddd', dData);
  ADataSet.Append;
  ADataSet.FieldByName('Data').AsDateTime   := AItem.Data;
  ADataSet.FieldByName('Id').AsInteger      := AItem.Id;
  ADataSet.FieldByName('Hora').AsDateTime   := AItem.Hora;
  ADataSet.FieldByName('Cliente').AsString  := AItem.NomeCliente;
  ADataSet.FieldByName('Usuario').AsString  := AItem.Usuario.Nome;
  ADataSet.FieldByName('Status').AsString   := AItem.Status.Nome;
  ADataSet.FieldByName('IdCliente').AsInteger := AItem.IdCliente;
  ADataSet.Post;
end;

procedure TfrmQuadro2.DataAgendaAnterior;
var
  i: Integer;
  DataInicial: TDate;
  DataFinal: TDate;
begin
  edtDataFinal.Text := DateToStr(StrToDate(edtDataInicial.Text) - 1);
  DataInicial := StrToDate(edtDataFinal.Text);
  DataFinal := StrToDate(edtDataFinal.Text);

  for I := 1 to 11 do
  begin
    DataInicial := DataFinal - I;
  end;

  edtDataInicial.Text := DateToStr(DataInicial);
end;

procedure TfrmQuadro2.IniciarTempo(AIdUsuario, AIdSolicitacao: Integer;
  ATituloQuadro: string);
var
  sComando: PAnsiChar;
  sLinha: AnsiString;
begin
  if not FileExists('ControleTempo.exe') then
    raise Exception.Create('� necess�rio ter o arquivo ControleTempo.exe na mesma pasta do execut�vel deste sistema.');

  sLinha := 'ControleTempo.exe ' + AIdSolicitacao.ToString() + ' ' + IntToStr(dm.IdUsuario);
  sComando := PansiChar(sLinha);

  if not (TFuncoes.ProcessExists(PROCESSO_TEMPO)) then
    WinExec(sComando, SW_SHOWNORMAL);
end;

procedure TfrmQuadro2.InicioAgendamento;
var
  iDiaSemana: Integer;
  dDataInicial,
  dDataFinal,
  dData: TDate;
  sData1,
  sData2,
  sData3,
  sData4,
  sData5,
  sData6,
  sData7,
  sData8,
  sData9,
  sData10,
  sData11,
  sData12,
  sData13,
  sData14,
  sData15: string;
begin
  InicioAgendamentoJSON();
  Exit;
//==============================================================================
// O PROCEDIMENTO ABAIXO NAO EST� SENDO MAIS UTILIZADO
//==============================================================================
  if not tsAgendamento.Showing then
    Exit;

  ExecutarTimer(False);
  try
    dDataInicial := StrToDate(edtDataInicial.Text);
    dDataFinal := StrToDate(edtDataFinal.Text);
  except
      raise Exception.Create('Data Inv�lida!');
      ExecutarTimer(True);
  end;

  if StrToDate(edtDataInicial.Text) > StrToDate(edtDataFinal.Text) then
    raise Exception.Create('Data Inicial maior que Data Final!');

  LimparAgendamento(cdsAgenda1);
  LimparAgendamento(cdsAgenda2);
  LimparAgendamento(cdsAgenda3);
  LimparAgendamento(cdsAgenda4);
  LimparAgendamento(cdsAgenda5);
  LimparAgendamento(cdsAgenda6);
  LimparAgendamento(cdsAgenda7);
  LimparAgendamento(cdsAgenda8);
  LimparAgendamento(cdsAgenda9);
  LimparAgendamento(cdsAgenda10);
  LimparAgendamento(cdsAgenda11);
  LimparAgendamento(cdsAgenda12);

  FControllerAgendamento.Quadro(dDataInicial, dDataFinal, dm.IdUsuario, FIdRevenda);
  TitulosAgendamento();

  while not FControllerAgendamento.Model.CDSQuadro.Eof do
  begin
    dData := FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime;

    sData1 := Copy(lblAgenda1.Caption, 1, 10);
    sData2 := Copy(lblAgenda2.Caption, 1, 10);
    sData3 := Copy(lblAgenda3.Caption, 1, 10);
    sData4 := Copy(lblAgenda4.Caption, 1, 10);
    sData5 := Copy(lblAgenda5.Caption, 1, 10);
    sData6 := Copy(lblAgenda6.Caption, 1, 10);
    sData7 := Copy(lblAgenda7.Caption, 1, 10);
    sData8 := Copy(lblAgenda8.Caption, 1, 10);
    sData9 := Copy(lblAgenda9.Caption, 1, 10);
    sData10 := Copy(lblAgenda10.Caption, 1, 10);
    sData11 := Copy(lblAgenda11.Caption, 1, 10);
    sData12 := Copy(lblAgenda12.Caption, 1, 10);

    if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData1) then
      DadosAgendamento(lblAgenda1, cdsAgenda1)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData2) then
      DadosAgendamento(lblAgenda2, cdsAgenda2)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData3) then
      DadosAgendamento(lblAgenda3, cdsAgenda3)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData4) then
      DadosAgendamento(lblAgenda4, cdsAgenda4)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData5) then
      DadosAgendamento(lblAgenda4, cdsAgenda5)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData6) then
      DadosAgendamento(lblAgenda4, cdsAgenda6)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData7) then
      DadosAgendamento(lblAgenda4, cdsAgenda7)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData8) then
      DadosAgendamento(lblAgenda4, cdsAgenda8)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData9) then
      DadosAgendamento(lblAgenda4, cdsAgenda9)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData10) then
      DadosAgendamento(lblAgenda4, cdsAgenda10)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData11) then
      DadosAgendamento(lblAgenda4, cdsAgenda11)
    else if FControllerAgendamento.Model.CDSQuadroAge_Data.AsDateTime = StrToDate(sData12) then
      DadosAgendamento(lblAgenda4, cdsAgenda12);

    FControllerAgendamento.Model.CDSQuadro.Next;
  end;

  RegistrosTituloAgenda(lblAgenda1, dbAgenda1, cdsAgenda1);
  RegistrosTituloAgenda(lblAgenda2, dbAgenda2, cdsAgenda2);
  RegistrosTituloAgenda(lblAgenda3, dbAgenda3, cdsAgenda3);
  RegistrosTituloAgenda(lblAgenda4, dbAgenda4, cdsAgenda4);
  RegistrosTituloAgenda(lblAgenda5, dbAgenda5, cdsAgenda5);
  RegistrosTituloAgenda(lblAgenda6, dbAgenda6, cdsAgenda6);
  RegistrosTituloAgenda(lblAgenda7, dbAgenda7, cdsAgenda7);
  RegistrosTituloAgenda(lblAgenda8, dbAgenda8, cdsAgenda8);
  RegistrosTituloAgenda(lblAgenda9, dbAgenda9, cdsAgenda9);
  RegistrosTituloAgenda(lblAgenda10, dbAgenda10, cdsAgenda10);
  RegistrosTituloAgenda(lblAgenda11, dbAgenda11, cdsAgenda11);
  RegistrosTituloAgenda(lblAgenda12, dbAgenda12, cdsAgenda12);

  ExecutarTimer(True);
end;

procedure TfrmQuadro2.InicioAgendamentoJSON;
var
  iDiaSemana: Integer;
  dDataInicial,
  dDataFinal,
  dData: TDate;
  sData1,
  sData2,
  sData3,
  sData4,
  sData5,
  sData6,
  sData7,
  sData8,
  sData9,
  sData10,
  sData11,
  sData12,
  sData13,
  sData14,
  sData15: string;
  Lista: TObjectList<TAgendamentoVO>;
  Item: TAgendamentoVO;
begin
  if not tsAgendamento.Showing then
    Exit;

  ExecutarTimer(False);
  dm.ConexaoBanco;
  try
    dDataInicial := StrToDate(edtDataInicial.Text);
    dDataFinal := StrToDate(edtDataFinal.Text);
  except
      raise Exception.Create('Data Inv�lida!');
      ExecutarTimer(True);
  end;

  if StrToDate(edtDataInicial.Text) > StrToDate(edtDataFinal.Text) then
    raise Exception.Create('Data Inicial maior que Data Final!');

  LimparAgendamento(cdsAgenda1);
  LimparAgendamento(cdsAgenda2);
  LimparAgendamento(cdsAgenda3);
  LimparAgendamento(cdsAgenda4);
  LimparAgendamento(cdsAgenda5);
  LimparAgendamento(cdsAgenda6);
  LimparAgendamento(cdsAgenda7);
  LimparAgendamento(cdsAgenda8);
  LimparAgendamento(cdsAgenda9);
  LimparAgendamento(cdsAgenda10);
  LimparAgendamento(cdsAgenda11);
  LimparAgendamento(cdsAgenda12);

  Lista := FControllerAgendamento.QuadroJSON(dDataInicial, dDataFinal, dm.IdUsuario, FIdRevenda);
  try
    TitulosAgendamento();

    for Item in Lista do
    begin
      sData1 := Copy(lblAgenda1.Caption, 1, 10);
      sData2 := Copy(lblAgenda2.Caption, 1, 10);
      sData3 := Copy(lblAgenda3.Caption, 1, 10);
      sData4 := Copy(lblAgenda4.Caption, 1, 10);
      sData5 := Copy(lblAgenda5.Caption, 1, 10);
      sData6 := Copy(lblAgenda6.Caption, 1, 10);
      sData7 := Copy(lblAgenda7.Caption, 1, 10);
      sData8 := Copy(lblAgenda8.Caption, 1, 10);
      sData9 := Copy(lblAgenda9.Caption, 1, 10);
      sData10 := Copy(lblAgenda10.Caption, 1, 10);
      sData11 := Copy(lblAgenda11.Caption, 1, 10);
      sData12 := Copy(lblAgenda12.Caption, 1, 10);

      if Item.Data = StrToDate(sData1) then
        DadosAgendamentoJSON(lblAgenda1, cdsAgenda1, Item)
      else if Item.Data = StrToDate(sData2) then
        DadosAgendamentoJSON(lblAgenda2, cdsAgenda2, Item)
      else if Item.Data = StrToDate(sData3) then
        DadosAgendamentoJSON(lblAgenda3, cdsAgenda3, Item)
      else if Item.Data = StrToDate(sData4) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda4, Item)
      else if Item.Data = StrToDate(sData5) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda5, Item)
      else if Item.Data = StrToDate(sData6) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda6, Item)
      else if Item.Data = StrToDate(sData7) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda7, Item)
      else if Item.Data = StrToDate(sData8) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda8, Item)
      else if Item.Data = StrToDate(sData9) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda9, Item)
      else if Item.Data = StrToDate(sData10) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda10, Item)
      else if Item.Data = StrToDate(sData11) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda11, Item)
      else if Item.Data = StrToDate(sData12) then
        DadosAgendamentoJSON(lblAgenda4, cdsAgenda12, Item);
    end;

    RegistrosTituloAgenda(lblAgenda1, dbAgenda1, cdsAgenda1);
    RegistrosTituloAgenda(lblAgenda2, dbAgenda2, cdsAgenda2);
    RegistrosTituloAgenda(lblAgenda3, dbAgenda3, cdsAgenda3);
    RegistrosTituloAgenda(lblAgenda4, dbAgenda4, cdsAgenda4);
    RegistrosTituloAgenda(lblAgenda5, dbAgenda5, cdsAgenda5);
    RegistrosTituloAgenda(lblAgenda6, dbAgenda6, cdsAgenda6);
    RegistrosTituloAgenda(lblAgenda7, dbAgenda7, cdsAgenda7);
    RegistrosTituloAgenda(lblAgenda8, dbAgenda8, cdsAgenda8);
    RegistrosTituloAgenda(lblAgenda9, dbAgenda9, cdsAgenda9);
    RegistrosTituloAgenda(lblAgenda10, dbAgenda10, cdsAgenda10);
    RegistrosTituloAgenda(lblAgenda11, dbAgenda11, cdsAgenda11);
    RegistrosTituloAgenda(lblAgenda12, dbAgenda12, cdsAgenda12);

    ExecutarTimer(True);
  finally
    FreeAndNil(Lista);
  end;
end;

procedure TfrmQuadro2.TamanhoGrids;
var
  compSol: Integer;
  compCha: Integer;
  iAltura: Integer;
  compRec: Integer;
begin
  Panel1.Width := trunc(Self.Width / 2); // chamados

  Panel7.Width := Trunc(Self.Width / 3); // solicitacao
  Panel11.Width := Trunc(Self.Width / 3); // solicitacao
  Panel26.Width := trunc(Self.Width / 2); // atividades

  pnlAgendaColuna1.Width := Trunc(Self.Width / 3); // Agendamento
  pnlAgendaColuna2.Width := Trunc(Self.Width / 3); // Agendamento
  pnlAgendaColuna3.Width := Trunc(Self.Width / 3); // Agendamento
// recados
  iAltura := Self.ClientHeight - 50;
  compRec := 794;
  pnlRecadoLcto.Height := Trunc(iAltura / 2); // recados
  dbRecadoLcto.Columns[5].Width := dbRecadoLcto.Width - compRec;
  dbRecadoDestino.Columns[5].Width := dbRecadoLcto.Width - compRec;
// chamados
  compCha := 430; // 400;
  dbQuadro1.Columns[3].Width := dbQuadro1.Width - compCha;
  dbQuadro2.Columns[3].Width := dbQuadro2.Width - compCha;
  dbQuadro3.Columns[3].Width := dbQuadro3.Width - compCha;
  dbQuadro4.Columns[3].Width := dbQuadro4.Width - compCha;
  dbQuadro5.Columns[3].Width := dbQuadro5.Width - compCha;
  dbQuadro6.Columns[3].Width := dbQuadro6.Width - compCha;
// atividades
  dbAtivQuadro1.Columns[3].Width := dbQuadro1.Width - compCha;
  dbAtivQuadro2.Columns[3].Width := dbQuadro2.Width - compCha;
  dbAtivQuadro3.Columns[3].Width := dbQuadro3.Width - compCha;
  dbAtivQuadro4.Columns[3].Width := dbQuadro4.Width - compCha;
  dbAtivQuadro5.Columns[3].Width := dbQuadro5.Width - compCha;
  dbAtivQuadro6.Columns[3].Width := dbQuadro6.Width - compCha;
// solicitacao
  compSol := 290; // 260; //220;
  dbQuadroSol1.Columns[2].Width := dbQuadroSol1.Width - compSol;
  dbQuadroSol2.Columns[2].Width := dbQuadroSol2.Width - compSol;
  dbQuadroSol3.Columns[2].Width := dbQuadroSol3.Width - compSol;
  dbQuadroSol4.Columns[2].Width := dbQuadroSol4.Width - compSol;
  dbQuadroSol5.Columns[2].Width := dbQuadroSol5.Width - compSol;
  dbQuadroSol6.Columns[2].Width := dbQuadroSol6.Width - compSol;
  dbQuadroSol7.Columns[2].Width := dbQuadroSol7.Width - compSol;
  dbQuadroSol8.Columns[2].Width := dbQuadroSol8.Width - compSol;
  dbQuadroSol9.Columns[2].Width := dbQuadroSol9.Width - compSol;
  dbQuadroSol10.Columns[2].Width := dbQuadroSol10.Width - compSol;
  dbQuadroSol11.Columns[2].Width := dbQuadroSol11.Width - compSol;
  dbQuadroSol12.Columns[2].Width := dbQuadroSol12.Width - compSol;

  TamanhoGridAgenda();
end;

procedure TfrmQuadro2.InicioAtividades;
begin
  dsAtivQuadro1.DataSet := FControllerChamado.Model.CDSAtividade1;
  dsAtivQuadro2.DataSet := FControllerChamado.Model.CDSAtividade2;
  dsAtivQuadro3.DataSet := FControllerChamado.Model.CDSAtividade3;
  dsAtivQuadro4.DataSet := FControllerChamado.Model.CDSAtividade4;
  dsAtivQuadro5.DataSet := FControllerChamado.Model.CDSAtividade5;
  dsAtivQuadro6.DataSet := FControllerChamado.Model.CDSAtividade6;
end;

procedure TfrmQuadro2.InicioChamados;
begin
  dsQuadro1.DataSet := FControllerChamado.Model.CDSQuadro1;
  dsQuadro2.DataSet := FControllerChamado.Model.CDSQuadro2;
  dsQuadro3.DataSet := FControllerChamado.Model.CDSQuadro3;
  dsQuadro4.DataSet := FControllerChamado.Model.CDSQuadro4;
  dsQuadro5.DataSet := FControllerChamado.Model.CDSQuadro5;
  dsQuadro6.DataSet := FControllerChamado.Model.CDSQuadro6;
end;

procedure TfrmQuadro2.InicioSolicitacao;
begin
  dsQuadroSol1.DataSet := FControllerSolicitacao.Model.cdsQuadro1;
  dsQuadroSol2.DataSet := FControllerSolicitacao.Model.cdsQuadro2;
  dsQuadroSol3.DataSet := FControllerSolicitacao.Model.cdsQuadro3;
  dsQuadroSol4.DataSet := FControllerSolicitacao.Model.cdsQuadro4;
  dsQuadroSol5.DataSet := FControllerSolicitacao.Model.cdsQuadro5;
  dsQuadroSol6.DataSet := FControllerSolicitacao.Model.cdsQuadro6;
  dsQuadroSol7.DataSet := FControllerSolicitacao.Model.cdsQuadro7;
  dsQuadroSol8.DataSet := FControllerSolicitacao.Model.cdsQuadro8;
  dsQuadroSol9.DataSet := FControllerSolicitacao.Model.cdsQuadro9;
  dsQuadroSol10.DataSet := FControllerSolicitacao.Model.cdsQuadro10;
  dsQuadroSol11.DataSet := FControllerSolicitacao.Model.cdsQuadro11;
  dsQuadroSol12.DataSet := FControllerSolicitacao.Model.cdsQuadro12;
end;

procedure TfrmQuadro2.LimparAgendamento(ADataSet: TClientDataSet);
begin
  ADataSet.First;
  while not ADataSet.Eof do
    ADataSet.Delete;

  ADataSet.IndexFieldNames := 'Hora';
end;

procedure TfrmQuadro2.MenuItem10Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda6Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem11Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda7Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem12Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda7Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem13Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda8Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem14Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda8Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem15Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda9Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem16Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda9Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem17Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda10Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem18Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda10Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem19Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda11Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem1Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda2Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem20Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda11Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem21Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda12Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem22Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda12Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem2Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda2Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem3Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda3Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem4Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda3Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem5Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda4Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem6Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda4Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem7Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda5Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuItem8Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda5Id.AsInteger, ageCancelamento);
end;

procedure TfrmQuadro2.MenuItem9Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda6Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.MenuJanela;
var
  SysMenu : HMenu;
  UsuarioController: TUsuarioController;
begin
  UsuarioController := TUsuarioController.Create;
  try
    UsuarioController.LocalizarId(dm.IdUsuario);
    if UsuarioController.Model.CDSCadastroUsu_Revenda.AsInteger = 0 then
    begin
      SysMenu := GetSystemMenu(Handle, FALSE);
      AppendMenu(SysMenu, MF_SEPARATOR, 0, '');
      AppendMenu(SysMenu, MF_STRING, SC_MyMenuItemRevenda, 'Filtrar Revendas');
      AppendMenu(SysMenu, MF_STRING, SC_MyMenuItemRevendaLimpar, 'Limpar Filtro Revendas');
    end;
  finally
    FreeAndNil(UsuarioController);
  end;
end;

procedure TfrmQuadro2.miSolIniciar10Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro10Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro10Sol_Id.AsInteger, lblTitSolicitacao10.Caption);
end;

procedure TfrmQuadro2.miSolIniciar11Click(Sender: TObject);
begin
  if VerificarTarefasSolicitacao(dsQuadroSol11.DataSet) then
    Exit;

  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro11Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro11Sol_Id.AsInteger, lblTitSolicitacao11.Caption);
end;

procedure TfrmQuadro2.miSolIniciar12Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro12Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro12Sol_Id.AsInteger, lblTitSolicitacao12.Caption);
end;

procedure TfrmQuadro2.miSolIniciar1Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro1Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro1Sol_Id.AsInteger, lblTitSolicitacao1.Caption);
end;

procedure TfrmQuadro2.miSolIniciar2Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro2Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro2Sol_Id.AsInteger, lblTitSolicitacao2.Caption);
end;

procedure TfrmQuadro2.miSolIniciar3Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro3Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro3Sol_Id.AsInteger, lblTitSolicitacao3.Caption);
end;

procedure TfrmQuadro2.miSolIniciar4Click(Sender: TObject);
begin
  if VerificarTarefasSolicitacao(dsQuadroSol4.DataSet) then
    Exit;

  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro4Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro4Sol_Id.AsInteger, lblTitSolicitacao4.Caption);
end;

procedure TfrmQuadro2.miSolIniciar5Click(Sender: TObject);
begin
  if VerificarTarefasSolicitacao(dsQuadroSol5.DataSet) then
    Exit;

  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro5Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro5Sol_Id.AsInteger, lblTitSolicitacao5.Caption);
end;

procedure TfrmQuadro2.miSolIniciar6Click(Sender: TObject);
begin
  if VerificarTarefasSolicitacao(dsQuadroSol6.DataSet) then
    Exit;

  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro6Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro6Sol_Id.AsInteger, lblTitSolicitacao6.Caption);
end;

procedure TfrmQuadro2.miSolIniciar7Click(Sender: TObject);
begin
  if VerificarTarefasSolicitacao(dsQuadroSol7.DataSet) then
    Exit;

  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro7Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro7Sol_Id.AsInteger, lblTitSolicitacao7.Caption);
end;

procedure TfrmQuadro2.miSolIniciar8Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro8Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro8Sol_Id.AsInteger, lblTitSolicitacao8.Caption);
end;

procedure TfrmQuadro2.miSolIniciar9Click(Sender: TObject);
begin
  IniciarTempo(FControllerSolicitacao.Model.cdsQuadro9Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro9Sol_Id.AsInteger, lblTitSolicitacao9.Caption);
end;

procedure TfrmQuadro2.miSolParar10Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro10Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro10Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar11Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro11Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro11Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar12Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro12Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro12Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar1Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro1Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro1Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar2Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro2Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro2Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar3Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro3Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro3Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar4Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro4Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro4Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar5Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro5Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro5Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar6Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro6Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro6Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar7Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro7Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro7Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar8Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro8Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro8Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.miSolParar9Click(Sender: TObject);
begin
  FinalizarTempo(FControllerSolicitacao.Model.cdsQuadro9Sol_UsuarioAtendeAtual.AsInteger,
              FControllerSolicitacao.Model.cdsQuadro9Sol_Id.AsInteger);
end;

procedure TfrmQuadro2.MostrarCheckBoxRecado;
var
  Usuario: TUsuarioController;
begin
  Usuario := TUsuarioController.Create;
  try
    chkVerTodosRecados.Visible := Usuario.UsuarioADM(dm.IdUsuario);
  finally
    FreeAndNil(Usuario);
  end;
end;

procedure TfrmQuadro2.MostrarTempos;
var
  CodStatusAbertura: string;
  CodStatusOcorrencia: string;
  CodStatusAberturaAtividade: string;
  CodStatusAtendimentoAtividade: string;
begin
  CodStatusAbertura   := FControllerChamado.StatusAbertura();
  CodStatusOcorrencia := FControllerChamado.StatusChamadoAtendimento();

  CodStatusAberturaAtividade := FControllerChamado.StatusAberturaAtividade();
  CodStatusAtendimentoAtividade := FControllerChamado.StatusAtendimentoAtividade();
//------------------------------------------------------------------------------
// Chamado
  TituloGrade(dbQuadro1, edtChaCodigo1.Text, CodStatusAbertura, CodStatusOcorrencia);
  TituloGrade(dbQuadro2, edtChaCodigo2.Text, CodStatusAbertura, CodStatusOcorrencia);
  TituloGrade(dbQuadro3, edtChaCodigo3.Text, CodStatusAbertura, CodStatusOcorrencia);
  TituloGrade(dbQuadro4, edtChaCodigo4.Text, CodStatusAbertura, CodStatusOcorrencia);
  TituloGrade(dbQuadro5, edtChaCodigo5.Text, CodStatusAbertura, CodStatusOcorrencia);
  TituloGrade(dbQuadro6, edtChaCodigo6.Text, CodStatusAbertura, CodStatusOcorrencia);
//------------------------------------------------------------------------------
// Atividades
  TituloGrade(dbAtivQuadro1, edtAtivCodigo1.Text, CodStatusAberturaAtividade, CodStatusAtendimentoAtividade);
  TituloGrade(dbAtivQuadro2, edtAtivCodigo2.Text, CodStatusAberturaAtividade, CodStatusAtendimentoAtividade);
  TituloGrade(dbAtivQuadro3, edtAtivCodigo3.Text, CodStatusAberturaAtividade, CodStatusAtendimentoAtividade);
  TituloGrade(dbAtivQuadro4, edtAtivCodigo4.Text, CodStatusAberturaAtividade, CodStatusAtendimentoAtividade);
  TituloGrade(dbAtivQuadro5, edtAtivCodigo5.Text, CodStatusAberturaAtividade, CodStatusAtendimentoAtividade);
  TituloGrade(dbAtivQuadro6, edtAtivCodigo6.Text, CodStatusAberturaAtividade, CodStatusAtendimentoAtividade);

end;

procedure TfrmQuadro2.NovoAgendamentoMenu(AData: string);
var
  Formulario: TfrmAgendamento;
begin
  AData := Copy(AData, 1, 10);

  ExecutarTimer(False);
  dm.ConexaoBanco;
  Formulario := TfrmAgendamento.create(AData, False, True);
  try
    if Formulario.ShowModal = mrOk then
      btnOkClick(Self);
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.NovoAgendamento10Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda10.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento11Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda11.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento12Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda12.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento1Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda1.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento2Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda2.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento3Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda3.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento4Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda4.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento5Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda5.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento6Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda6.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento7Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda7.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento8Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda8.Caption);
end;

procedure TfrmQuadro2.NovoAgendamento9Click(Sender: TObject);
begin
  NovoAgendamentoMenu(lblAgenda9.Caption);
end;

procedure TfrmQuadro2.NovoRecado;
begin
  ExecutarTimer(False);
  if not (TFuncoes.FormularioEstaCriado(TfrmRecado)) then
    TFuncoes.CriarFormularioModal(TfrmRecado.create(False, 'A', True, 0));

  AbrirQuadrosRecados();
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.OrdenarGrids(AClientDataSet: TClientDataSet; ACampo: string);
begin
  if ACampo = 'Cli_Perfil' then
    AClientDataSet.IndexName := 'IndexPerfil'
  else if ACampo = 'Nivel' then
    AClientDataSet.IndexName := 'IndexNivel'
  else
    AClientDataSet.IndexFieldNames := ACampo;
end;

procedure TfrmQuadro2.PermissaoConferenciaGeral;
var
  Usuario: TUsuarioController;
  bPermissao: Boolean;
begin
  Usuario := TUsuarioController.Create;
  try
    bPermissao := Usuario.PermissaoConferenciaTempoGeral(dm.IdUsuario);
  finally
    FreeAndNil(Usuario);
  end;

  btnConferencia.Visible := bPermissao;
  btnConferencia2.Visible := bPermissao;
end;

procedure TfrmQuadro2.PermissaoSolicitacao;
var
  obj: TSolicitacaoController;
  bGeral: Boolean;
  bTecnica: Boolean;
  bAnalista: Boolean;
  bRegras: Boolean;
  PermissaoSolicitacao: TPermissaoSolicitacaoVO;
begin
  obj := TSolicitacaoController.Create;
  PermissaoSolicitacao := obj.PermissoesSolicitacao(dm.IdUsuario);
  try
    try
      bGeral    := PermissaoSolicitacao.OcorrenciaGeral;
      bTecnica  := PermissaoSolicitacao.OcorrenciaTecnica;
      bAnalista := PermissaoSolicitacao.Analise;
      bRegras   := PermissaoSolicitacao.OcorrenciaRegra;
      btnConfTempos.Visible := PermissaoSolicitacao.Tempo;
      btnConferencia.Visible := PermissaoSolicitacao.ConfTempoGeral;
      btnConferencia2.Visible := PermissaoSolicitacao.ConfTempoGeral;

//      bGeral    := obj.PermissaoOcorrenciaGeral(dm.IdUsuario);
//      bTecnica  := obj.PermissaoOcorrenciaTecnica(dm.IdUsuario);
//      bAnalista := obj.PermissaoAnalise(dm.IdUsuario);
//      bRegras   := obj.PermissaoOcorrenciaRegra(dm.IdUsuario);

    except
      On E: Exception do
      begin
        TFuncoes.Excessao(E, 'PermissaoSolicitacao');
      end;
    end;
  finally
    FreeAndNil(obj);
    FreeAndNil(PermissaoSolicitacao);
  end;

  pmGeral1.Enabled    := bGeral;
  pmTecnica1.Enabled  := bTecnica;
  pmRegra1.Enabled    := bRegras;
  pmAnalise1.Enabled  := bAnalista;
  pmRegraHistorico1.Enabled := bRegras;

  pmGeral2.Enabled    := bGeral;
  pmTecnica2.Enabled  := bTecnica;
  pmRegra2.Enabled    := bRegras;
  pmAnalise2.Enabled  := bAnalista;
  pmRegraHistorico2.Enabled := bRegras;

  pmGeral3.Enabled    := bGeral;
  pmTecnica3.Enabled  := bTecnica;
  pmRegra3.Enabled    := bRegras;
  pmAnalise3.Enabled  := bAnalista;
  pmRegraHistorico3.Enabled := bRegras;

  pmGeral4.Enabled    := bGeral;
  pmTecnica4.Enabled  := bTecnica;
  pmRegra4.Enabled    := bRegras;
  pmAnalise4.Enabled  := bAnalista;
  pmRegraHistorico4.Enabled := bRegras;

  pmGeral5.Enabled    := bGeral;
  pmTecnica5.Enabled  := bTecnica;
  pmRegra5.Enabled    := bRegras;
  pmAnalise5.Enabled  := bAnalista;
  pmRegraHistorico5.Enabled := bRegras;

  pmGeral6.Enabled    := bGeral;
  pmTecnica6.Enabled  := bTecnica;
  pmRegra6.Enabled    := bRegras;
  pmAnalise6.Enabled  := bAnalista;
  pmRegraHistorico6.Enabled := bRegras;

  pmGeral7.Enabled    := bGeral;
  pmTecnica7.Enabled  := bTecnica;
  pmRegra7.Enabled    := bRegras;
  pmAnalise7.Enabled  := bAnalista;
  pmRegraHistorico7.Enabled := bRegras;

  pmGeral8.Enabled    := bGeral;
  pmTecnica8.Enabled  := bTecnica;
  pmRegra8.Enabled    := bRegras;
  pmAnalise8.Enabled  := bAnalista;
  pmRegraHistorico8.Enabled := bRegras;

  pmGeral9.Enabled    := bGeral;
  pmTecnica9.Enabled  := bTecnica;
  pmRegra9.Enabled    := bRegras;
  pmAnalise9.Enabled  := bAnalista;
  pmRegraHistorico9.Enabled := bRegras;

  pmGeral10.Enabled    := bGeral;
  pmTecnica10.Enabled  := bTecnica;
  pmRegra10.Enabled    := bRegras;
  pmAnalise10.Enabled  := bAnalista;
  pmRegraHistorico10.Enabled := bRegras;

  pmGeral11.Enabled    := bGeral;
  pmTecnica11.Enabled  := bTecnica;
  pmRegra11.Enabled    := bRegras;
  pmAnalise11.Enabled  := bAnalista;
  pmRegraHistorico11.Enabled := bRegras;

  pmGeral12.Enabled    := bGeral;
  pmTecnica12.Enabled  := bTecnica;
  pmRegra12.Enabled    := bRegras;
  pmAnalise12.Enabled  := bAnalista;
  pmRegraHistorico12.Enabled := bRegras;
end;

procedure TfrmQuadro2.pmAnalise1Click(Sender: TObject);
begin
  if Sender = pmAnalise1 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro1, solAnalise)
  else if Sender = pmAnalise2 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro2, solAnalise)
  else if Sender = pmAnalise3 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro3, solAnalise)
  else if Sender = pmAnalise4 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro4, solAnalise)
  else if Sender = pmAnalise5 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro5, solAnalise)
  else if Sender = pmAnalise6 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro6, solAnalise)
  else if Sender = pmAnalise7 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro7, solAnalise)
  else if Sender = pmAnalise8 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro8, solAnalise)
  else if Sender = pmAnalise9 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro9, solAnalise)
  else if Sender = pmAnalise10 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro10, solAnalise)
  else if Sender = pmAnalise11 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro11, solAnalise)
  else if Sender = pmAnalise12 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro12, solAnalise);

end;

procedure TfrmQuadro2.pmDetalhes1Click(Sender: TObject);
var
  Id: Integer;
begin
  if Sender = pmDetalhes1 then
    Id := FControllerSolicitacao.Model.cdsQuadro1Sol_Id.AsInteger
  else if Sender = pmDetalhes2 then
    Id := FControllerSolicitacao.Model.cdsQuadro2Sol_Id.AsInteger
  else if Sender = pmDetalhes3 then
    Id := FControllerSolicitacao.Model.cdsQuadro3Sol_Id.AsInteger
  else if Sender = pmDetalhes4 then
    Id := FControllerSolicitacao.Model.cdsQuadro4Sol_Id.AsInteger
  else if Sender = pmDetalhes5 then
    Id := FControllerSolicitacao.Model.cdsQuadro5Sol_Id.AsInteger
  else if Sender = pmDetalhes6 then
    Id := FControllerSolicitacao.Model.cdsQuadro6Sol_Id.AsInteger
  else if Sender = pmDetalhes7 then
    Id := FControllerSolicitacao.Model.cdsQuadro7Sol_Id.AsInteger
  else if Sender = pmDetalhes8 then
    Id := FControllerSolicitacao.Model.cdsQuadro8Sol_Id.AsInteger
  else if Sender = pmDetalhes9 then
    Id := FControllerSolicitacao.Model.cdsQuadro9Sol_Id.AsInteger
  else if Sender = pmDetalhes10 then
    Id := FControllerSolicitacao.Model.cdsQuadro10Sol_Id.AsInteger
  else if Sender = pmDetalhes11 then
    Id := FControllerSolicitacao.Model.cdsQuadro11Sol_Id.AsInteger
  else if Sender = pmDetalhes12 then
    Id := FControllerSolicitacao.Model.cdsQuadro12Sol_Id.AsInteger;

  DetalhesSolicitacao(id);
end;

procedure TfrmQuadro2.pmGeral1Click(Sender: TObject);
begin
  if Sender = pmGeral1 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro1, solOcorrGeral)
  else if Sender = pmGeral2 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro2, solOcorrGeral)
  else if Sender = pmGeral3 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro3, solOcorrGeral)
  else if Sender = pmGeral4 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro4, solOcorrGeral)
  else if Sender = pmGeral5 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro5, solOcorrGeral)
  else if Sender = pmGeral6 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro6, solOcorrGeral)
  else if Sender = pmGeral7 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro7, solOcorrGeral)
  else if Sender = pmGeral8 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro8, solOcorrGeral)
  else if Sender = pmGeral9 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro9, solOcorrGeral)
  else if Sender = pmGeral10 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro10, solOcorrGeral)
  else if Sender = pmGeral11 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro11, solOcorrGeral)
  else if Sender = pmGeral12 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro12, solOcorrGeral);
end;

procedure TfrmQuadro2.pmRegra1Click(Sender: TObject);
begin
  if Sender = pmRegra1 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro1, solOcorrRegra)
  else if Sender = pmRegra2 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro2, solOcorrRegra)
  else if Sender = pmRegra3 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro3, solOcorrRegra)
  else if Sender = pmRegra4 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro4, solOcorrRegra)
  else if Sender = pmRegra5 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro5, solOcorrRegra)
  else if Sender = pmRegra6 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro6, solOcorrRegra)
  else if Sender = pmRegra7 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro7, solOcorrRegra)
  else if Sender = pmRegra8 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro8, solOcorrRegra)
  else if Sender = pmRegra9 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro9, solOcorrRegra)
  else if Sender = pmRegra10 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro10, solOcorrRegra)
  else if Sender = pmRegra11 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro11, solOcorrRegra)
  else if Sender = pmRegra12 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro12, solOcorrRegra)
end;

procedure TfrmQuadro2.pmRegraDetalhes1Click(Sender: TObject);
var
  Id: Integer;
begin
  if Sender = pmRegraDetalhes1 then
    Id := FControllerSolicitacao.Model.cdsQuadro1Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes2 then
    Id := FControllerSolicitacao.Model.cdsQuadro2Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes3 then
    Id := FControllerSolicitacao.Model.cdsQuadro3Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes4 then
    Id := FControllerSolicitacao.Model.cdsQuadro4Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes5 then
    Id := FControllerSolicitacao.Model.cdsQuadro5Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes6 then
    Id := FControllerSolicitacao.Model.cdsQuadro6Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes7 then
    Id := FControllerSolicitacao.Model.cdsQuadro7Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes8 then
    Id := FControllerSolicitacao.Model.cdsQuadro8Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes9 then
    Id := FControllerSolicitacao.Model.cdsQuadro9Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes10 then
    Id := FControllerSolicitacao.Model.cdsQuadro10Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes11 then
    Id := FControllerSolicitacao.Model.cdsQuadro11Sol_Id.AsInteger
  else if Sender = pmRegraDetalhes12 then
    Id := FControllerSolicitacao.Model.cdsQuadro12Sol_Id.AsInteger;

  DetalhesSolicitacaoRegra(id);

end;

procedure TfrmQuadro2.pmRegraHistorico1Click(Sender: TObject);
var
  Id: Integer;
begin
  if Sender = pmRegraHistorico1 then
    Id := FControllerSolicitacao.Model.cdsQuadro1Sol_Id.AsInteger
  else if Sender = pmRegraHistorico2 then
    Id := FControllerSolicitacao.Model.cdsQuadro2Sol_Id.AsInteger
  else if Sender = pmRegraHistorico3 then
    Id := FControllerSolicitacao.Model.cdsQuadro3Sol_Id.AsInteger
  else if Sender = pmRegraHistorico4 then
    Id := FControllerSolicitacao.Model.cdsQuadro4Sol_Id.AsInteger
  else if Sender = pmRegraHistorico5 then
    Id := FControllerSolicitacao.Model.cdsQuadro5Sol_Id.AsInteger
  else if Sender = pmRegraHistorico6 then
    Id := FControllerSolicitacao.Model.cdsQuadro6Sol_Id.AsInteger
  else if Sender = pmRegraHistorico7 then
    Id := FControllerSolicitacao.Model.cdsQuadro7Sol_Id.AsInteger
  else if Sender = pmRegraHistorico8 then
    Id := FControllerSolicitacao.Model.cdsQuadro8Sol_Id.AsInteger
  else if Sender = pmRegraHistorico9 then
    Id := FControllerSolicitacao.Model.cdsQuadro9Sol_Id.AsInteger
  else if Sender = pmRegraHistorico10 then
    Id := FControllerSolicitacao.Model.cdsQuadro10Sol_Id.AsInteger
  else if Sender = pmRegraHistorico11 then
    Id := FControllerSolicitacao.Model.cdsQuadro11Sol_Id.AsInteger
  else if Sender = pmRegraHistorico12 then
    Id := FControllerSolicitacao.Model.cdsQuadro12Sol_Id.AsInteger;

  DetalhesSolicitacaoRegraHistorico(id);
end;

procedure TfrmQuadro2.pmTecnica1Click(Sender: TObject);
begin
  if Sender = pmTecnica1 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro1, solOcorrTecnica)
  else if Sender = pmTecnica2 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro2, solOcorrTecnica)
  else if Sender = pmTecnica3 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro3, solOcorrTecnica)
  else if Sender = pmTecnica4 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro4, solOcorrTecnica)
  else if Sender = pmTecnica5 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro5, solOcorrTecnica)
  else if Sender = pmTecnica6 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro6, solOcorrTecnica)
  else if Sender = pmTecnica7 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro7, solOcorrTecnica)
  else if Sender = pmTecnica8 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro8, solOcorrTecnica)
  else if Sender = pmTecnica9 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro9, solOcorrTecnica)
  else if Sender = pmTecnica10 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro10, solOcorrTecnica)
  else if Sender = pmTecnica11 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro11, solOcorrTecnica)
  else if Sender = pmTecnica12 then
    PopMenu(FControllerSolicitacao.Model.cdsQuadro12, solOcorrTecnica);

end;

procedure TfrmQuadro2.PodeEntrarSolicitacaoStatus(AIdSolicitacao: Integer;
  ACodStatusQuadro: string);
var
  sCodStatusSolicitacao: string;
begin
  sCodStatusSolicitacao := FControllerSolicitacao.RetornarCodigoStatusSolicitacao(AIdSolicitacao);
  if sCodStatusSolicitacao <> ACodStatusQuadro then
    raise Exception.Create('Solicita��o em Atendimento por outra Pessoa!');
end;

procedure TfrmQuadro2.PodeEntrarStatus(AIdChamado: Integer; ACodStatusQuadro: string;
  ATipo: TEnumChamadoAtividade = caChamado);
var
  sCodStatusChamado: string;
begin
  sCodStatusChamado := FControllerChamado.RetornarCodigoStatusChamado(AIdChamado);
  if sCodStatusChamado <> ACodStatusQuadro then
  begin
    if ATipo = caChamado then
      raise Exception.Create('Chamado em Atendimento por outra Pessoa!')
    else
      raise Exception.Create('Atividade em Atendimento por outra Pessoa!');
  end;
end;

procedure TfrmQuadro2.PodeEntrarUsuario(Sender: TObject; ATipo: TEnumChamadoAtividade = caChamado);
var
  objStatus: TStatusController;
  iCodigoStatusChamadoAtendimento: Integer;
  bOk: Boolean;
begin
  if ATipo = caChamado then
    iCodigoStatusChamadoAtendimento := StrToIntDef(FControllerChamado.StatusChamadoAtendimento(),0)
  else
    iCodigoStatusChamadoAtendimento := StrToIntDef(FControllerChamado.StatusAtendimentoAtividade(),0);

  bOk := True;

  // se codigo do status do quadro for igual ao do parametro 10 e
  // se usuario do grid for igual ao usuario logado,
  // ent�o pode entrar
  if Sender = dbQuadro1 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSQuadro1Cha_Id.AsInteger, edtChaCodigo1.Text, caChamado);
    if StrToIntDef(edtChaCodigo1.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSQuadro1Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbQuadro2 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSQuadro2Cha_Id.AsInteger, edtChaCodigo2.Text, caChamado);
    if StrToIntDef(edtChaCodigo2.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSQuadro2Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbQuadro3 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSQuadro3Cha_Id.AsInteger, edtChaCodigo3.Text, caChamado);
    if StrToIntDef(edtChaCodigo3.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSQuadro3Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbQuadro4 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSQuadro4Cha_Id.AsInteger, edtChaCodigo4.Text, caChamado);
    if StrToIntDef(edtChaCodigo4.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSQuadro4Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbQuadro5 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSQuadro5Cha_Id.AsInteger, edtChaCodigo5.Text, caChamado);
    if StrToIntDef(edtChaCodigo5.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSQuadro5Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbQuadro6 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSQuadro6Cha_Id.AsInteger, edtChaCodigo6.Text, caChamado);
    if StrToIntDef(edtChaCodigo6.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSQuadro6Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;
//------------------------------------------------------------------------------
// Atividades
  if Sender = dbAtivQuadro1 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSAtividade1Cha_Id.AsInteger, edtAtivCodigo1.Text, caAtividade);
    if StrToIntDef(edtAtivCodigo1.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSAtividade1Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbAtivQuadro2 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSAtividade2Cha_Id.AsInteger, edtAtivCodigo2.Text, caAtividade);
    if StrToIntDef(edtAtivCodigo2.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSAtividade2Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbAtivQuadro3 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSAtividade3Cha_Id.AsInteger, edtAtivCodigo3.Text, caAtividade);
    if StrToIntDef(edtAtivCodigo3.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSAtividade3Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbAtivQuadro4 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSAtividade4Cha_Id.AsInteger, edtAtivCodigo4.Text, caAtividade);
    if StrToIntDef(edtAtivCodigo4.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSAtividade4Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbAtivQuadro5 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSAtividade5Cha_Id.AsInteger, edtAtivCodigo5.Text, caAtividade);
    if StrToIntDef(edtAtivCodigo5.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSAtividade5Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if Sender = dbAtivQuadro6 then
  begin
    PodeEntrarStatus(FControllerChamado.Model.CDSAtividade6Cha_Id.AsInteger, edtAtivCodigo6.Text, caAtividade);
    if StrToIntDef(edtAtivCodigo6.Text, 0) = (iCodigoStatusChamadoAtendimento) then
    begin
      if dm.IdUsuario <> FControllerChamado.Model.CDSAtividade6Cha_UsuarioAtendeAtual.AsInteger then
        bOk := False;
    end;
  end;

  if bOk = False then
  begin
    if ATipo = caChamado then
      raise Exception.Create('Chamado em Atendimento por outra Pessoa!')
    else
      raise Exception.Create('Atividade em Atendimento por outra Pessoa!');
  end;

end;

procedure TfrmQuadro2.PodeEntrarUsuarioSolicitacao(Sender: TObject);
var
  objStatus: TStatusController;
//  iCodigoStatusSolicitacaoAtendimento: Integer;
  bOk: Boolean;
begin
//  iCodigoStatusSolicitacaoAtendimento := StrToIntDef(FControllerChamado.StatusChamadoAtendimento(),0);

  // se nao tem usuario n�o faz nada
  if FControllerSolicitacao.Model.cdsQuadro1Sol_UsuarioAtendeAtual.AsInteger = 0 then
    Exit;

  bOk := True;

  // se codigo do status do quadro for igual ao do parametro 10 e
  // se usuario do grid for igual ao usuario logado,
  // ent�o pode entrar
  if Sender = dbQuadroSol1 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro1Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;

//    PodeEntrarSolicitacaoStatus(FControllerSolicitacao.Model.CDSSolicitacaoQuadro1Sol_Id.AsInteger, edtSolCodigo1.Text);
//    if StrToIntDef(edtSolCodigo1.Text, 0) = (iCodigoStatusSolicitacaoAtendimento) then
//    begin
//      if dm.IdUsuario <> FControllerSolicitacao.Model.CDSSolicitacaoQuadro1Sol_UsuarioAtendeAtual.AsInteger then
//        bOk := False;
//    end;
  end;

  if Sender = dbQuadroSol2 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro2Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol3 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro3Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol4 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro4Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol5 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro5Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol6 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro6Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol7 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro7Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol8 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro8Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol9 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro9Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol10 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro10Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol11 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro11Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if Sender = dbQuadroSol12 then
  begin
    if dm.IdUsuario <> FControllerSolicitacao.Model.cdsQuadro12Sol_UsuarioAtendeAtual.AsInteger then
      bOk := False;
  end;

  if bOk = False then
    raise Exception.Create('Solicita��o em Atendimento por outra Pessoa!');

end;

procedure TfrmQuadro2.PopMenu(AClientDataSet: TClientDataSet; ATipoSol: TEnumSolicitacao);
var
  bGeral: Boolean;
  bTecnica: Boolean;
  bRegra: Boolean;
  bAnalise: Boolean;
  iStatusId, iStatusAtual: Integer;
  iIdSol: Integer;
begin

  if AClientDataSet.IsEmpty then
    raise Exception.Create('N�o h� Registros para Editar!');

  ExecutarTimer(False);

  bGeral    := (ATipoSol = solOcorrGeral);

  bTecnica  := (ATipoSol = solOcorrTecnica);
  bRegra  := (ATipoSol = solOcorrRegra);
  bAnalise  := (ATipoSol = solAnalise);

  iStatusAtual := -1;
  iStatusId := AClientDataSet.FieldByName('Sol_StatusId').AsInteger;
  iIdSol := AClientDataSet.FieldByName('Sol_Id').AsInteger;

  dm.ConexaoBanco;
  TFuncoes.CriarFormularioModal(TfrmSolicitacao.create(AClientDataSet.FieldByName('Sol_Id').AsInteger, True, bGeral, bTecnica, bAnalise, False, bRegra));
  AbrirQuadrosSolicitacao;

  if AClientDataSet.Locate('Sol_Id', iIdSol, []) then
    iStatusAtual := AClientDataSet.FieldByName('Sol_StatusId').AsInteger;

  if (iStatusId <> iStatusAtual) then
    FControllerSolicitacao.FecharTelaTempo();

  ExecutarTimer(True);
end;

procedure TfrmQuadro2.PopMenuDetalhesSolicitacaoRegra(AIdSolicitacao: Integer);
var
  Formulario: TfrmSolicitacaoDetalhes2;
begin
  if AIdSolicitacao = 0 then
    raise Exception.Create('N�o h� Registros!');

  ExecutarTimer(False);

  Formulario := TfrmSolicitacaoDetalhes2.Create(AIdSolicitacao);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.ProximaDataAgenda;
var
  i: Integer;
  DataInicial: TDate;
  DataFinal: TDate;
begin
  edtDataInicial.Text := DateToStr(StrToDate(edtDataFinal.Text) + 1);
  DataInicial := StrToDate(edtDataInicial.Text);
  DataFinal := StrToDate(edtDataInicial.Text);

  for I := 1 to 11 do
  begin
    DataFinal := DataInicial + I;
  end;

  edtDataFinal.Text := DateToStr(DataFinal);
end;

procedure TfrmQuadro2.dbAgenda10TitleClick(Column: TColumn);
begin
  cdsAgenda10.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda11TitleClick(Column: TColumn);
begin
  cdsAgenda11.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda12TitleClick(Column: TColumn);
begin
  cdsAgenda12.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Sender = dbAgenda1 then
    TGrade.Zebrar(dsAgenda1.DataSet, dbAgenda1, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda2 then
    TGrade.Zebrar(dsAgenda2.DataSet, dbAgenda2, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda3 then
    TGrade.Zebrar(dsAgenda3.DataSet, dbAgenda3, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda4 then
    TGrade.Zebrar(dsAgenda4.DataSet, dbAgenda4, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda5 then
    TGrade.Zebrar(dsAgenda5.DataSet, dbAgenda5, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda6 then
    TGrade.Zebrar(dsAgenda6.DataSet, dbAgenda6, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda7 then
    TGrade.Zebrar(dsAgenda7.DataSet, dbAgenda7, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda8 then
    TGrade.Zebrar(dsAgenda8.DataSet, dbAgenda8, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda9 then
    TGrade.Zebrar(dsAgenda9.DataSet, dbAgenda9, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda10 then
    TGrade.Zebrar(dsAgenda10.DataSet, dbAgenda10, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda11 then
    TGrade.Zebrar(dsAgenda11.DataSet, dbAgenda11, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAgenda12 then
    TGrade.Zebrar(dsAgenda12.DataSet, dbAgenda12, Sender, Rect, DataCol, Column, State)
end;

procedure TfrmQuadro2.dbAgenda1TitleClick(Column: TColumn);
begin
  cdsAgenda1.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda2TitleClick(Column: TColumn);
begin
  cdsAgenda2.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda3TitleClick(Column: TColumn);
begin
  cdsAgenda3.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda4TitleClick(Column: TColumn);
begin
  cdsAgenda4.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda5TitleClick(Column: TColumn);
begin
  cdsAgenda5.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda6TitleClick(Column: TColumn);
begin
  cdsAgenda6.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda7TitleClick(Column: TColumn);
begin
  cdsAgenda7.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda8TitleClick(Column: TColumn);
begin
  cdsAgenda8.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAgenda9TitleClick(Column: TColumn);
begin
  cdsAgenda9.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbAtivQuadro1DblClick(Sender: TObject);
begin
  ExecutarTimer(False);
  if VerificarTarefasAtividade() then
  begin
    ExecutarTimer(True);
    Exit;
  end;

  try

    if Sender = dbAtivQuadro1 then
      ValidarChamado(dbAtivQuadro1, FControllerChamado.Model.CDSAtividade1, edtAtivCodigo1.Text, caAtividade)
    else if Sender = dbAtivQuadro2 then
      ValidarChamado(dbAtivQuadro2, FControllerChamado.Model.CDSAtividade2, edtAtivCodigo2.Text, caAtividade)
    else if Sender = dbAtivQuadro3 then
      ValidarChamado(dbAtivQuadro3, FControllerChamado.Model.CDSAtividade3, edtAtivCodigo3.Text, caAtividade)
    else if Sender = dbAtivQuadro4 then
      ValidarChamado(dbAtivQuadro4, FControllerChamado.Model.CDSAtividade4, edtAtivCodigo4.Text, caAtividade)
    else if Sender = dbAtivQuadro5 then
      ValidarChamado(dbAtivQuadro5, FControllerChamado.Model.CDSAtividade5, edtAtivCodigo5.Text, caAtividade)
    else if Sender = dbAtivQuadro6 then
      ValidarChamado(dbAtivQuadro6, FControllerChamado.Model.CDSAtividade6, edtAtivCodigo6.Text, caAtividade);
  finally
    AbrirQuadrosAtividades();
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.dbAtivQuadro1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Sender = dbAtivQuadro1 then
    TGrade.Zebrar(dsAtivQuadro1.DataSet, dbAtivQuadro1, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAtivQuadro2 then
    TGrade.Zebrar(dsAtivQuadro2.DataSet, dbAtivQuadro2, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAtivQuadro3 then
    TGrade.Zebrar(dsAtivQuadro3.DataSet, dbAtivQuadro3, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAtivQuadro4 then
    TGrade.Zebrar(dsAtivQuadro4.DataSet, dbAtivQuadro4, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAtivQuadro5 then
    TGrade.Zebrar(dsAtivQuadro5.DataSet, dbAtivQuadro5, Sender, Rect, DataCol, Column, State)
  else if Sender = dbAtivQuadro6 then
    TGrade.Zebrar(dsAtivQuadro6.DataSet, dbAtivQuadro6, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbAtivQuadro1TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSAtividade1, Column.FieldName);
end;

procedure TfrmQuadro2.dbAtivQuadro2TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSAtividade2, Column.FieldName);
end;

procedure TfrmQuadro2.dbAtivQuadro3TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSAtividade3, Column.FieldName);
end;

procedure TfrmQuadro2.dbAtivQuadro4TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSAtividade4, Column.FieldName);
end;

procedure TfrmQuadro2.dbAtivQuadro5TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSAtividade5, Column.FieldName);
end;

procedure TfrmQuadro2.dbAtivQuadro6TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSAtividade6, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadro1DblClick(Sender: TObject);
begin
  ExecutarTimer(False);

  if VerificarTarefasChamado() then
  begin
    ExecutarTimer(True);
    Exit;
  end;

  try
    if Sender = dbQuadro1 then
      ValidarChamado(dbQuadro1, FControllerChamado.Model.CDSQuadro1, edtChaCodigo1.Text)
    else if Sender = dbQuadro2 then
      ValidarChamado(dbQuadro2, FControllerChamado.Model.CDSQuadro2, edtChaCodigo2.Text)
    else if Sender = dbQuadro3 then
      ValidarChamado(dbQuadro3, FControllerChamado.Model.CDSQuadro3, edtChaCodigo3.Text)
    else if Sender = dbQuadro4 then
      ValidarChamado(dbQuadro4, FControllerChamado.Model.CDSQuadro4, edtChaCodigo4.Text)
    else if Sender = dbQuadro5 then
      ValidarChamado(dbQuadro5, FControllerChamado.Model.CDSQuadro5, edtChaCodigo5.Text)
    else if Sender = dbQuadro6 then
      ValidarChamado(dbQuadro6, FControllerChamado.Model.CDSQuadro6, edtChaCodigo6.Text);
  finally
    AbrirQuadrosChamados;
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.dbQuadro1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsQuadro1.DataSet, dbQuadro1, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbQuadro1TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSQuadro1, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadro2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsQuadro2.DataSet, dbQuadro2, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbQuadro2TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSQuadro2, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadro3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsQuadro3.DataSet, dbQuadro3, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbQuadro3TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSQuadro3, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadro4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsQuadro4.DataSet, dbQuadro4, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbQuadro4TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSQuadro4, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadro5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsQuadro5.DataSet, dbQuadro5, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbQuadro5TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSQuadro5, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadro6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsQuadro6.DataSet, dbQuadro6, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbQuadro6TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerChamado.Model.CDSQuadro6, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol10TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro10, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol11TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro11, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol12TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro12, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol1DblClick(Sender: TObject);
begin
  ExecutarTimer(False);

  try

    if Sender = dbQuadroSol1 then
      ValidarSolicitacao(dbQuadroSol1, FControllerSolicitacao.Model.cdsQuadro1)
    else if Sender = dbQuadroSol2 then
      ValidarSolicitacao(dbQuadroSol2, FControllerSolicitacao.Model.cdsQuadro2)
    else if Sender = dbquadrosol3 then
      ValidarSolicitacao(dbQuadroSol3, FControllerSolicitacao.Model.cdsQuadro3)
    else if Sender = dbquadrosol4 then
      ValidarSolicitacao(dbQuadroSol4, FControllerSolicitacao.Model.cdsQuadro4)
    else if Sender = dbquadrosol5 then
      ValidarSolicitacao(dbQuadroSol5, FControllerSolicitacao.Model.cdsQuadro5)
    else if Sender = dbquadrosol6 then
      ValidarSolicitacao(dbQuadroSol6, FControllerSolicitacao.Model.cdsQuadro6)
    else if Sender = dbquadrosol7 then
      ValidarSolicitacao(dbQuadroSol7, FControllerSolicitacao.Model.cdsQuadro7)
    else if Sender = dbquadrosol8 then
      ValidarSolicitacao(dbQuadroSol8, FControllerSolicitacao.Model.cdsQuadro8)
    else if Sender = dbquadrosol9 then
      ValidarSolicitacao(dbQuadroSol9, FControllerSolicitacao.Model.cdsQuadro9)
    else if Sender = dbquadrosol10 then
      ValidarSolicitacao(dbQuadroSol10, FControllerSolicitacao.Model.cdsQuadro10)
    else if Sender = dbquadrosol11 then
      ValidarSolicitacao(dbQuadroSol11, FControllerSolicitacao.Model.cdsQuadro11)
    else if Sender = dbquadrosol12 then
      ValidarSolicitacao(dbQuadroSol12, FControllerSolicitacao.Model.cdsQuadro12);
  finally
    AbrirQuadrosSolicitacao;
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.dbQuadroSol1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Sender = dbQuadroSol1 then
  begin
    TGrade.Zebrar(dsQuadroSol1.DataSet, dbQuadroSol1, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol1.DataSet, dbQuadroSol1, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol2 then
  begin
    TGrade.Zebrar(dsQuadroSol2.DataSet, dbQuadroSol2, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol2.DataSet, dbQuadroSol2, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol3 then
  begin
    TGrade.Zebrar(dsQuadroSol3.DataSet, dbQuadroSol3, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol3.DataSet, dbQuadroSol3, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol4 then
  begin
    TGrade.Zebrar(dsQuadroSol4.DataSet, dbQuadroSol4, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol4.DataSet, dbQuadroSol4, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol5 then
  begin
    TGrade.Zebrar(dsQuadroSol5.DataSet, dbQuadroSol5, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol5.DataSet, dbQuadroSol5, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol6 then
  begin
    TGrade.Zebrar(dsQuadroSol6.DataSet, dbQuadroSol6, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol6.DataSet, dbQuadroSol6, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol7 then
  begin
    TGrade.Zebrar(dsQuadroSol7.DataSet, dbQuadroSol7, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol7.DataSet, dbQuadroSol7, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol8 then
  begin
    TGrade.Zebrar(dsQuadroSol8.DataSet, dbQuadroSol8, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol8.DataSet, dbQuadroSol8, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol9 then
  begin
    TGrade.Zebrar(dsQuadroSol9.DataSet, dbQuadroSol9, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol9.DataSet, dbQuadroSol9, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol10 then
  begin
    TGrade.Zebrar(dsQuadroSol10.DataSet, dbQuadroSol10, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol10.DataSet, dbQuadroSol10, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol11 then
  begin
    TGrade.Zebrar(dsQuadroSol11.DataSet, dbQuadroSol11, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol11.DataSet, dbQuadroSol11, Rect, DataCol, Column, State);
  end
  else if Sender = dbQuadroSol12 then
  begin
    TGrade.Zebrar(dsQuadroSol12.DataSet, dbQuadroSol12, Sender, Rect, DataCol, Column, State);
    SolicitacaoAberta(dsQuadroSol12.DataSet, dbQuadroSol12, Rect, DataCol, Column, State);
  end;

end;

procedure TfrmQuadro2.dbQuadroSol1TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro1, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol2TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro2, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol3TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro3, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol4TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro4, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol5TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro5, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol6TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro6, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol7TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro7, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol8TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro8, Column.FieldName);
end;

procedure TfrmQuadro2.dbQuadroSol9TitleClick(Column: TColumn);
begin
  OrdenarGrids(FControllerSolicitacao.Model.cdsQuadro9, Column.FieldName);
end;

procedure TfrmQuadro2.dbRecadoDestinoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsRecadoDestino.DataSet, dbRecadoDestino, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbRecadoDestinoTitleClick(Column: TColumn);
begin
  FControllerRecado.Model.CDSDestino.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.dbRecadoLctoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TGrade.Zebrar(dsRecadoLcto.DataSet, dbRecadoLcto, Sender, Rect, DataCol, Column, State);
end;

procedure TfrmQuadro2.dbRecadoLctoTitleClick(Column: TColumn);
begin
  FControllerRecado.Model.CDSLcto.IndexFieldNames := Column.FieldName;
end;

procedure TfrmQuadro2.Detalhes20Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda8Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes21Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda9Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes22Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda10Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes23Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda11Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes24Click(Sender: TObject);
begin
  EntrarDetalhes(cdsAgenda12Id.AsInteger, True);
end;

procedure TfrmQuadro2.Detalhes28Click(Sender: TObject);
begin
  RecadoDetalhe(dsRecadoLcto.DataSet.FieldByName('Rec_Id').AsInteger);
end;

procedure TfrmQuadro2.Detalhes29Click(Sender: TObject);
begin
  RecadoDetalhe(dsRecadoDestino.DataSet.FieldByName('Rec_Id').AsInteger);
end;

procedure TfrmQuadro2.Detalhes2Click(Sender: TObject);
begin
  DetalhesChamado(FControllerChamado.Model.CDSQuadro2Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes3Click(Sender: TObject);
begin
  DetalhesChamado(FControllerChamado.Model.CDSQuadro3Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.Detalhes4Click(Sender: TObject);
begin
  DetalhesChamado(FControllerChamado.Model.CDSQuadro4Cha_Id.AsInteger);
end;

procedure TfrmQuadro2.DetalhesChamado(AIdChamado: Integer);
var
  Formulario: TfrmChamadoDetalhes2;
begin
  if AIdChamado = 0 then
    raise Exception.Create('N�o h� registro para Visualizar !');

  ExecutarTimer(False);
  Formulario := TfrmChamadoDetalhes2.create(AIdChamado);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.DetalhesSolicitacao(IdSolicitacao: Integer);
var
  Formulario: TfrmSolicitacaoDetalhes2;
begin
  if IdSolicitacao = 0 then
    raise Exception.Create('N�o h� Registros!');

  ExecutarTimer(False);

  dm.ConexaoBanco;
  Formulario := TfrmSolicitacaoDetalhes2.Create(IdSolicitacao, TEnumSolicitacao.solOcorrGeral);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.DetalhesSolicitacaoRegra(IdSolicitacao: Integer);
var
  Formulario: TfrmSolicitacaoDetalhes2;
begin
  if IdSolicitacao = 0 then
    raise Exception.Create('N�o h� Registros!');

  ExecutarTimer(False);

  Formulario := TfrmSolicitacaoDetalhes2.Create(IdSolicitacao, TEnumSolicitacao.solOcorrRegra);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.DetalhesSolicitacaoRegraHistorico(IdSolicitacao: Integer);
var
  Formulario: TfrmSolicitacaoDetalhes2;
begin
  if IdSolicitacao = 0 then
    raise Exception.Create('N�o h� Registros!');

  ExecutarTimer(False);

  dm.ConexaoBanco;
  Formulario := TfrmSolicitacaoDetalhes2.Create(IdSolicitacao);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.Encerrar10Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda10.DataSet);
end;

procedure TfrmQuadro2.Encerrar11Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda11.DataSet);
end;

procedure TfrmQuadro2.Encerrar12Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda12.DataSet);
end;

procedure TfrmQuadro2.Encerrar16Click(Sender: TObject);
begin
  RecadoDetalhe(dsRecadoDestino.DataSet.FieldByName('Rec_Id').AsInteger, 'E');
end;

procedure TfrmQuadro2.Encerrar1Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda1.DataSet);
end;

procedure TfrmQuadro2.Encerrar2Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda2.DataSet);
end;

procedure TfrmQuadro2.Encerrar3Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda3.DataSet);
end;

procedure TfrmQuadro2.Encerrar4Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda4.DataSet);
end;

procedure TfrmQuadro2.Encerrar5Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda5.DataSet);
end;

procedure TfrmQuadro2.Encerrar6Click(Sender: TObject);
begin
//  EntrarAgendamento(cdsAgenda6Id.AsInteger, ageEncerrado);
  AgendaAbrirPrograma(dsAgenda6.DataSet);
end;

procedure TfrmQuadro2.Encerrar7Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda7.DataSet);
end;

procedure TfrmQuadro2.Encerrar8Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda8.DataSet);
end;

procedure TfrmQuadro2.Encerrar9Click(Sender: TObject);
begin
  AgendaAbrirPrograma(dsAgenda9.DataSet);
end;

procedure TfrmQuadro2.EncerrarWEB(Id: Integer);
var
  AgendamentoController: TAgendamentoController;
begin
  ExecutarTimer(False);
  if id = 0 then
    raise Exception.Create('N�o h� agendamento para encerrar!');

  dm.ConexaoBanco;
  AgendamentoController := TAgendamentoController.Create;
  try
    AgendamentoController.EncerrarWEB(Id);
    btnOkClick(Self);
  finally
    FreeAndNil(AgendamentoController);
    ExecutarTimer(True);
  end;
end;

procedure TfrmQuadro2.EncerrarWEB10Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda10Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB11Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda11Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB12Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda12Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB1Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda1Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB2Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda2Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB3Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda3Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB4Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda4Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB5Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda5Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB6Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda6Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB7Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda7Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB8Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda8Id.AsInteger);
end;

procedure TfrmQuadro2.EncerrarWEB9Click(Sender: TObject);
begin
  EncerrarWEB(cdsAgenda9Id.AsInteger);
end;

procedure TfrmQuadro2.EntrarAgendamento(AId: Integer; ATipo: TEnumAgendamento);
var
  Formulario: TfrmAgendamentoMotivo;
begin
  if AId = 0 then
    raise Exception.Create('N�o h� Registros!');

  ExecutarTimer(False);
  dm.ConexaoBanco;
  Formulario := TfrmAgendamentoMotivo.create(AId, ATipo);
  try
    if Formulario.ShowModal = mrOk then
    begin
      EnviarEmail(AId);
      btnOkClick(Self);
    end;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.EntrarDetalhes(AId: Integer; ADetalhe: Boolean=False);
var
  Formulario: TfrmAgendamentoMotivo;
begin
  if AId = 0 then
    raise Exception.Create('N�o h� Registros!');

  ExecutarTimer(False);
  dm.ConexaoBanco;
  Formulario := TfrmAgendamentoMotivo.create(AId, ADetalhe);
  try
    Formulario.ShowModal;
  finally
    FreeAndNil(Formulario);
  end;
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.EnviarEmail(AId: Integer);
var
  AgendaController: TAgendamentoController;
begin
  AgendaController := TAgendamentoController.Create;
  try
    AgendaController.LocalizarId(AId);
    AgendaController.EnvioEmail(AId, AgendaController.Model.CDSCadastroAge_Status.AsInteger);
  finally
    FreeAndNil(AgendaController);
  end;
end;

procedure TfrmQuadro2.EnviarEmail1Click(Sender: TObject);
begin
  if TFuncoes.Confirmar('Confirmar Envio de Email?') then
  begin
    EnviarEmailRecado(dsRecadoLcto.DataSet.FieldByName('Rec_UsuarioLcto').AsInteger,
                      dsRecadoLcto.DataSet.FieldByName('Rec_UsuarioDestino').AsInteger,
                      dsRecadoLcto.DataSet.FieldByName('Rec_Id').AsInteger);
  end;
end;

procedure TfrmQuadro2.EnviarEmailRecado(AIdUsuarioOrigem, AIdUsuarioDestino, AId: Integer);
var
  Recado: TRecadoController;
begin
  Recado := TRecadoController.Create;
  try
    Recado.EnviarEmail(AIdUsuarioOrigem, AIdUsuarioDestino, AId);
  finally
    FreeAndNil(Recado);
  end;
end;

procedure TfrmQuadro2.ExecutarTimer(AExecutar: Boolean);
begin
  Timer1.Enabled := AExecutar;
end;

function TfrmQuadro2.ExisteTituloTempo(ALista: TList<string>;
  ATitulo: string): Boolean;
var
  sTitulo: string;
begin
  if Pos('(', ATitulo) > 0 then
    sTitulo :=  RetornarTituloSolicitacao(ATitulo)
  else
    sTitulo := ATitulo;

  Result := ALista.Contains(sTitulo);
end;

procedure TfrmQuadro2.FinalizarTempo(AIdUsuario, AIdSolicitacao: Integer; AIdStatus: Integer);
var
  objVO: TSolicitacaoTempoVO;
begin
//var
//  objVO: TSolicitacaoTempoVO;
//
//  sComando: PAnsiChar;
//  sLinha: AnsiString;
//begin
//  sLinha := 'D:\DOMPER\SIDomper\Tempo\Win32\Debug\ControleTempo.exe ' + AIdSolicitacao.ToString() + ' ' + IntToStr(dm.IdUsuario);
//  sComando := PansiChar(sLinha);
//  WinExec(sComando, SW_SHOWNORMAL);



  objVO := TSolicitacaoTempoVO.Create;
  try
    objVO.IdSolicitacao := AIdSolicitacao;
    objVO.IdUsuario := AIdUsuario;
    objVO.Solicitacao.Status.Id := AIdStatus;
    FControllerSolicitacao.Finalizar(dm.IdUsuario, objVO);
    AbrirQuadrosSolicitacao();
  finally
    FreeAndNil(objVO);
  end;
end;

procedure TfrmQuadro2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FControllerChamado) then
    FreeAndNil(FControllerChamado);

  if Assigned(FControllerSolicitacao) then
    FreeAndNil(FControllerSolicitacao);

  if Assigned(FControllerAgendamento) then
    FreeAndNil(FControllerAgendamento);

  if Assigned(FControllerRecado) then
    FreeAndNil(FControllerRecado);

  Action := caFree;
end;

procedure TfrmQuadro2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;

  if Key = VK_F5 then
  begin
    AbrirSolicitacao();
  end;
end;

procedure TfrmQuadro2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key:=#0;
    perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmQuadro2.FormResize(Sender: TObject);
begin
  AlturaGrid();
  TamanhoGrids();
//  AbrirQuadrosChamados();
//  AbrirSolicitacao();
//  AbrirQuadrosAtividades();
//  InicioAgendamento();
//  AbrirQuadrosRecados();
end;

procedure TfrmQuadro2.FormShow(Sender: TObject);
var
  img: TfrmImagens;
begin
  tsCodigos.TabVisible := False;

  img := TfrmImagens.Create(self);
  try
    try
      btnAbrirChamado.Glyph := img.btnNovo.Glyph;
      btnAbrirSolicitacao.Glyph := img.btnNovo.Glyph;
      btnSolucoes.Glyph := img.btnSolucao.Glyph;
      btnBuscarCliente.Glyph := img.btnFiltro.Glyph;
      btnAbrirAtividade.Glyph := img.btnNovo.Glyph;
      btnSolucoes2.Glyph := img.btnSolucao.Glyph;
      btnBuscarCliente2.Glyph := img.btnFiltro.Glyph;
      btnAgendamento.Glyph := img.btnNovo.Glyph;
      btnOk.Glyph := img.btnConfirmar.Glyph;
      btnAnterior.Glyph := img.btnAnterior.Glyph;
      btnProximo.Glyph := img.btnProximo.Glyph;
      btnNovoRecado.Glyph := img.btnNovo.Glyph;
      btnConfTempos.Glyph := img.btnConferir.Glyph;
      btnConferencia.Glyph := img.btnConferir.Glyph;
      btnConferencia2.Glyph := img.btnConferir.Glyph;
      btnSolucaoSolicitacao.Glyph := img.btnSolucao.Glyph;
    except
      On E: Exception do
      begin
        TFuncoes.Excessao(E, 'FormShow');
      end;
    end;
  finally
    FreeAndNil(img);
  end;

  try
    if tsChamados.TabVisible then
      PageControl1.ActivePageIndex := 0
    else if tsSolicitacao.TabVisible then
      PageControl1.ActivePageIndex := 1
    else if tsAtividades.TabVisible then
      PageControl1.ActivePageIndex := 2;

    PermissaoSolicitacao();
    AlturaGrid();
    ControleTituloTempo();

    // se tiver recados mostrar a Aba dos recados
    if tsRecados.TabVisible then
      AbrirAbaRecados();

    if not (tsRecados.Showing) then
      AbrirQuadrosChamados();

    ExecutarTimer(True);
  finally
  end;

//  btnConfTempos.Visible := FControllerSolicitacao.SolicitacaoTempoPermissao(dm.IdUsuario);
//  PermissaoConferenciaGeral();
end;

procedure TfrmQuadro2.QuadroTitulos;
var
  Parametro: TParametrosController;
begin
  Parametro := TParametrosController.Create;
  try
    Parametro.TitulosQuadros;
    while not Parametro.Model.CDSParametrosTitulosChamados.Eof do
    begin
//------------------------------------------------------------------------------
// Chamado
      TitulosChamados(Parametro, '3', lblTitulo1, edtChaCodigo1);
      TitulosChamados(Parametro, '4', lblTitulo2, edtChaCodigo2);
      TitulosChamados(Parametro, '5', lblTitulo3, edtChaCodigo3);
      TitulosChamados(Parametro, '6', lblTitulo4, edtChaCodigo4);
      TitulosChamados(Parametro, '7', lblTitulo5, edtChaCodigo5);
      TitulosChamados(Parametro, '8', lblTitulo6, edtChaCodigo6);
//------------------------------------------------------------------------------
// solicitacao
      TitulosSolicitacoes(Parametro, '12', lblTitSolicitacao1);
      TitulosSolicitacoes(Parametro, '13', lblTitSolicitacao2);
      TitulosSolicitacoes(Parametro, '14', lblTitSolicitacao3);
      TitulosSolicitacoes(Parametro, '15', lblTitSolicitacao4);
      TitulosSolicitacoes(Parametro, '16', lblTitSolicitacao5);
      TitulosSolicitacoes(Parametro, '17', lblTitSolicitacao6);
      TitulosSolicitacoes(Parametro, '19', lblTitSolicitacao7);
      TitulosSolicitacoes(Parametro, '20', lblTitSolicitacao8);
      TitulosSolicitacoes(Parametro, '21', lblTitSolicitacao9);
      TitulosSolicitacoes(Parametro, '22', lblTitSolicitacao10);
      TitulosSolicitacoes(Parametro, '23', lblTitSolicitacao11);
      TitulosSolicitacoes(Parametro, '24', lblTitSolicitacao12);
//------------------------------------------------------------------------------
// Atividades
      TitulosAtividades(Parametro, '25', lblTitAtiv1, edtAtivCodigo1);
      TitulosAtividades(Parametro, '26', lblTitAtiv2, edtAtivCodigo2);
      TitulosAtividades(Parametro, '27', lblTitAtiv3, edtAtivCodigo3);
      TitulosAtividades(Parametro, '28', lblTitAtiv4, edtAtivCodigo4);
      TitulosAtividades(Parametro, '29', lblTitAtiv5, edtAtivCodigo5);
      TitulosAtividades(Parametro, '30', lblTitAtiv6, edtAtivCodigo6);

      Parametro.Model.CDSParametrosTitulosChamados.Next;
    end;
    FTituloChamado[1] := lblTitulo1.Caption;
    FTituloChamado[2] := lblTitulo2.Caption;
    FTituloChamado[3] := lblTitulo3.Caption;
    FTituloChamado[4] := lblTitulo4.Caption;
    FTituloChamado[5] := lblTitulo5.Caption;
    FTituloChamado[6] := lblTitulo6.Caption;

    FTituloSolicitacao[1] := lblTitSolicitacao1.Caption;
    FTituloSolicitacao[2] := lblTitSolicitacao2.Caption;
    FTituloSolicitacao[3] := lblTitSolicitacao3.Caption;
    FTituloSolicitacao[4] := lblTitSolicitacao4.Caption;
    FTituloSolicitacao[5] := lblTitSolicitacao5.Caption;
    FTituloSolicitacao[6] := lblTitSolicitacao6.Caption;
    FTituloSolicitacao[7] := lblTitSolicitacao7.Caption;
    FTituloSolicitacao[8] := lblTitSolicitacao8.Caption;
    FTituloSolicitacao[9] := lblTitSolicitacao9.Caption;
    FTituloSolicitacao[10] := lblTitSolicitacao10.Caption;
    FTituloSolicitacao[11] := lblTitSolicitacao11.Caption;
    FTituloSolicitacao[12] := lblTitSolicitacao12.Caption;

    FTituloAtividade[1] := lblTitAtiv1.Caption;
    FTituloAtividade[2] := lblTitAtiv2.Caption;
    FTituloAtividade[3] := lblTitAtiv3.Caption;
    FTituloAtividade[4] := lblTitAtiv4.Caption;
    FTituloAtividade[5] := lblTitAtiv5.Caption;
    FTituloAtividade[6] := lblTitAtiv6.Caption;

  finally
    FreeAndNil(Parametro);
  end;

  if tsChamados.TabVisible then
    AbrirQuadrosChamados();

  if tsSolicitacao.TabVisible then
    AbrirQuadrosSolicitacao();

  if tsAtividades.TabVisible then
    AbrirQuadrosAtividades();
end;

procedure TfrmQuadro2.Reagendamento1Click(Sender: TObject);
begin
  EntrarAgendamento(cdsAgenda1Id.AsInteger, ageReagendamento);
end;

procedure TfrmQuadro2.RecadoDetalhe(AId: Integer; AOperacao: string);
begin
  if AId = 0 then
    raise Exception.Create('N�o h� Registro!');

  ExecutarTimer(False);
  if not (TFuncoes.FormularioEstaCriado(TfrmRecado)) then
    TFuncoes.CriarFormularioModal(TfrmRecado.create(False, AOperacao, True, AId));

  AbrirQuadrosRecados();
  ExecutarTimer(True);
end;

procedure TfrmQuadro2.RegistrosTituloAgenda(ALabel: TLabel; AGrid: TDBGrid; ADataSet: TDataSet);
begin
  ALabel.Caption := ALabel.Caption + ' ( ' + ADataSet.RecordCount.ToString() + ' )';
end;

procedure TfrmQuadro2.RegistrosTituloAtividade(ALabel: TLabel; AIndice: Integer;
  ADataSet: TDataSet);
var
  sRegistros: string;
begin
  sRegistros := ' ( ' + ADataSet.RecordCount.ToString() + ' )';
  ALabel.Caption := FTituloAtividade[AIndice] + sRegistros;
end;

procedure TfrmQuadro2.RegistrosTituloChamado(ALabel: TLabel; AIndice: Integer; ADataSet: TDataSet);
var
  sRegistros: string;
begin
  sRegistros := ' ( ' + ADataSet.RecordCount.ToString() + ' )';
  ALabel.Caption := FTituloChamado[AIndice] + sRegistros;
end;

procedure TfrmQuadro2.RegistrosTituloSolicitacao(ALabel: TLabel;
  AIndice: Integer; ADataSet: TDataSet);
var
  sRegistros: string;
begin
  sRegistros := ' ( ' + ADataSet.RecordCount.ToString() + ' )';

  if AIndice = 1 then
    ALabel.Caption := FTituloSolicitacao[AIndice] + sRegistros + '  '
  else
    ALabel.Caption := FTituloSolicitacao[AIndice] + sRegistros;
end;

function TfrmQuadro2.RetornarSolicitacaoEmAberto(ADataSet: TDataSet): Boolean;
begin
  Result := False;
  if ADataSet.Active then
  begin
    ADataSet.First;
    if ADataSet.Locate('Usu_Nome', dm.NomeUsuario, []) then
    begin
      while not ADataSet.Eof do
      begin
        if ADataSet.FieldByName('Aberta').AsInteger > 0 then
        begin
          Result := True;
          Break;
        end;
        ADataSet.Next;
      end;
    end;
  end;
end;

function TfrmQuadro2.RetornarTituloSolicitacao(ATitulo: string): string;
var
  iTamanho: Integer;
  sTitulo: string;
begin
  iTamanho := Pos('(', ATitulo) - 1;
  sTitulo := Copy(ATitulo, 1, iTamanho);
  Result := sTitulo.Trim();
end;

function TfrmQuadro2.RevendaPadraoQuadro: Integer;
var
  Parametro: TParametrosController;
begin
  Parametro := TParametrosController.Create;
  try
    Result := Parametro.RevendaPadrao();
  finally
    FreeAndNil(Parametro);
  end;
end;

procedure TfrmQuadro2.SolicitacaoAberta(ADataSet: TDataSet; AGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if ADataSet.FieldByName('Aberta').AsInteger > 0 then
  begin
    AGrid.Canvas.Brush.Color := clYellow;
//    AGrid.Canvas.Brush.Color := clMoneyGreen;
    AGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmQuadro2.Timer1Timer(Sender: TObject);
begin
  ExecutarTimer(False);
  if tsChamados.TabVisible then
    AbrirQuadrosChamados();

  if tsAtividades.TabVisible then
    AbrirQuadrosAtividades();

//  AbrirSolicitacao();

  if tsAgendamento.TabVisible then
    InicioAgendamento();

  ExecutarTimer(True);
end;

procedure TfrmQuadro2.TituloGrade(var AGrade: TDBGrid; ACodigoStatus, AStatusAbertura,
  AStatusOcorrencia: string);
var
  iColuna: Integer;
begin
  iColuna := 8;

  if ACodigoStatus = AStatusAbertura then  // parametro 9
  begin
    AGrade.Columns[iColuna].FieldName := 'CTempo';
  end
  else if ACodigoStatus = AStatusOcorrencia then // parametro 10
    AGrade.Columns[iColuna].FieldName := 'CTempoPar10'
  else // outros
    AGrade.Columns[iColuna].FieldName := 'CTempoParOutro';

  AGrade.Columns[iColuna].Title.Caption := 'Tempo';
end;

procedure TfrmQuadro2.TituloJanela(AIdRevenda: Integer);
var
  RevendaController: TRevendaController;
  sTitulo: string;
begin
  sTitulo := 'Quadro Organizacional';

  if AIdRevenda > 0 then
  begin
    RevendaController := TRevendaController.Create;
    try
      RevendaController.LocalizarId(FIdRevenda);
      Self.Caption := sTitulo + ' - Revenda: ' + RevendaController.Model.CDSCadastroRev_Nome.AsString;
    finally
      FreeAndNil(RevendaController);
    end;
  end
  else
    Self.Caption := sTitulo;
end;

procedure TfrmQuadro2.TitulosAgendamento;
begin
  lblAgenda1.Caption := edtDataInicial.Text;
  lblAgenda2.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 1);
  lblAgenda3.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 2);
  lblAgenda4.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 3);
  lblAgenda5.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 4);
  lblAgenda6.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 5);
  lblAgenda7.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 6);
  lblAgenda8.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 7);
  lblAgenda9.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 8);
  lblAgenda10.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 9);
  lblAgenda11.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 10);
  lblAgenda12.Caption := DateToStr(StrToDate(edtDataInicial.Text) + 11);

  lblAgenda1.Caption := lblAgenda1.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda1.Caption));
  lblAgenda2.Caption := lblAgenda2.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda2.Caption));
  lblAgenda3.Caption := lblAgenda3.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda3.Caption));
  lblAgenda4.Caption := lblAgenda4.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda4.Caption));
  lblAgenda5.Caption := lblAgenda5.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda5.Caption));
  lblAgenda6.Caption := lblAgenda6.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda6.Caption));
  lblAgenda7.Caption := lblAgenda7.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda7.Caption));
  lblAgenda8.Caption := lblAgenda8.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda8.Caption));
  lblAgenda9.Caption := lblAgenda9.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda9.Caption));
  lblAgenda10.Caption := lblAgenda10.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda10.Caption));
  lblAgenda11.Caption := lblAgenda11.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda11.Caption));
  lblAgenda12.Caption := lblAgenda12.Caption + ' - ' + FormatDateTime('dddd', StrToDate(lblAgenda12.Caption));
end;

procedure TfrmQuadro2.TitulosAtividades(AObj: TParametrosController;
  ACodigo: string; var ALblTitulo: TLabel; var ATxtCodigo: TEdit);
begin
  if AObj.Model.CDSParametrosTitulosChamadosPar_Codigo.AsString = ACodigo then
  begin
    ALblTitulo.Caption := AObj.Model.CDSParametrosTitulosChamadosSta_Nome.AsString;
    ATxtCodigo.Text := AObj.Model.CDSParametrosTitulosChamadosSta_Codigo.AsString;
  end;
end;

procedure TfrmQuadro2.TitulosChamados(AObj: TParametrosController;
  ACodigo: string; var ALblTitulo: TLabel; var ATxtCodigo: TEdit);
begin
  if AObj.Model.CDSParametrosTitulosChamadosPar_Codigo.AsString = ACodigo then
  begin
    ALblTitulo.Caption := AObj.Model.CDSParametrosTitulosChamadosSta_Nome.AsString;
    ATxtCodigo.Text := AObj.Model.CDSParametrosTitulosChamadosSta_Codigo.AsString;
  end;
end;

procedure TfrmQuadro2.TitulosSolicitacoes(AObj: TParametrosController;
  ACodigo: string; var ALblTitulo: TLabel);
begin
  if AObj.Model.CDSParametrosTitulosChamadosPar_Codigo.AsString = ACodigo then
    ALblTitulo.Caption := AObj.Model.CDSParametrosTitulosChamadosSta_Nome.AsString;
end;

procedure TfrmQuadro2.TituloTempo(var ATraco, AInicio, AParar: TMenuItem;
  AMostrar: Boolean);
begin
  ATraco.Visible := AMostrar;
  AInicio.Visible := AMostrar;
  AParar.Visible := AMostrar;

  AInicio.Caption := 'Tempo';
  AParar.Visible := False;

//  AInicio.Caption := 'In�cio Tempo';
//  AParar.Caption := 'Parar Tempo';
end;

procedure TfrmQuadro2.tsAgendamentoShow(Sender: TObject);
begin
  TamanhoGrids();
  InicioAgendamento();
end;

procedure TfrmQuadro2.tsAtividadesShow(Sender: TObject);
begin
  AbrirQuadrosAtividades();
end;

procedure TfrmQuadro2.tsChamadosShow(Sender: TObject);
begin
  AbrirQuadrosChamados();
end;

procedure TfrmQuadro2.tsRecadosShow(Sender: TObject);
begin
  TamanhoGrids();
  AbrirQuadrosRecados();
end;

procedure TfrmQuadro2.tsSolicitacaoShow(Sender: TObject);
begin
  TamanhoGrids();
  AbrirSolicitacao();
end;

procedure TfrmQuadro2.ValidarChamado(var AGrade: TDBGrid; ADataSet: TDataSet;
  ACodigoStatus: string; ATipo: TEnumChamadoAtividade = caChamado);
var
  IdChamado: Integer;
  Usuario: TUsuarioController;
  Perfil: Integer;
  bPermissao: Boolean;
begin
  if ATipo = caChamado then
  begin
    if not FControllerChamado.PermissaoChamadoOcorrencia(DM.IdUsuario) then
      raise Exception.Create('Usu�rio sem Permiss�o!');
  end
  else begin
    if not FControllerChamado.PermissaoAtividadeOcorrencia(DM.IdUsuario) then
      raise Exception.Create('Usu�rio sem Permiss�o!');
  end;

  Usuario := TUsuarioController.Create;
  try
    if ATipo = caChamado then
      bPermissao := Usuario.PermissaoChamadoOcorrenciaAlterar(dm.IdUsuario, 0, Perfil)
    else
      bPermissao := Usuario.PermissaoAtividadeOcorrenciaAlterar(dm.IdUsuario, 0, Perfil);
  finally
    FreeAndNil(Usuario);
  end;

  IdChamado := ADataSet.FieldByName('Cha_Id').AsInteger;
  FControllerChamado.LocalizarId(IdChamado);

  if bPermissao then
  begin
    if ADataSet.IsEmpty then
      raise Exception.Create('N�o h� Registro para Editar!');

    PodeEntrarUsuario(AGrade, ATipo);

    GravarHoraAtual(IdChamado, StrToIntDef(ACodigoStatus,0), ATipo);

    TFuncoes.CriarFormularioModal(TfrmChamado.create(IdChamado, True, True, ATipo));
  end
  else
    raise Exception.Create('Usu�rio sem Permiss�o!');

end;

procedure TfrmQuadro2.ValidarSolicitacao(var AGrade: TDBGrid;
  ADataSet: TDataSet);
var
  Formulario: TfrmStatusTroca;
  IdStatus: Integer;
  obj: TSolicitacaoController;
  IdSolicitacao: Integer;
begin
  if ADataSet.RecordCount = 0 then
    raise Exception.Create('N�o h� Registro!');

  IdSolicitacao := AGrade.Columns[0].Field.AsInteger;

//  if FControllerSolicitacao.SolicitacaoAtualAberta(IdSolicitacao) then
//    raise Exception.Create('Solicita��o est� Aberta, ser� Necess�rio Encerr�-la!');

  dm.ConexaoBanco;
  Formulario := TfrmStatusTroca.Create(prSolicitacao);
  try
    IdStatus := 0;
    if Formulario.ShowModal = mrOk then
    begin
      IdStatus := StrToIntDef(Formulario.edtIdStatus.Text,0);

      FControllerSolicitacao.LocalizarId(IdSolicitacao);
      FinalizarTempo(FControllerSolicitacao.Model.CDSCadastroSol_UsuarioAtendeAtual.AsInteger,
                     IdSolicitacao, IdStatus);
    end;
  finally
    FreeAndNil(Formulario);
  end;

  if IdStatus > 0 then
  begin
    obj := TSolicitacaoController.Create;
    try
      obj.UpdateStatus(IdSolicitacao, IdStatus);
    finally
      FreeAndNil(obj);
    end;
  end;
end;

function TfrmQuadro2.VerificarTarefas(APrograma: Integer): Boolean;
var
  QuadroController: TQuadroController;
begin
  Result := False;
//  Exit;

  QuadroController := TQuadroController.Create;
  try
    try
      QuadroController.VerificarTarefaEmAberto(dm.IdUsuario, APrograma);
    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        Result := True;
      end;
    end;
  finally
    FreeAndNil(QuadroController);
  end;
end;

function TfrmQuadro2.VerificarTarefasAtividade: Boolean;
begin
  Result := false;
// VERIFICA OS CHAMADOS
  if dsQuadro2.DataSet.Active then
  begin
    dsQuadro2.DataSet.First;
    if dsQuadro2.DataSet.Locate('Usu_Nome', dm.NomeUsuario, []) then
      Result := True;
  end;
// VERIFICA AS SOLICITACOES
  if Result = false then
  begin
    Result := RetornarSolicitacaoEmAberto(dsQuadroSol4.DataSet);
    if Result = False then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol5.DataSet);
    if Result = False then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol6.DataSet);
    if Result = False then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol11.DataSet);
  end;

  if Result then
    ShowMessage('Usu�rio j� est� com Solicita��o ou Chamado em Aberto');

  //Result := VerificarTarefas(CAtividadePrograma);
end;

function TfrmQuadro2.VerificarTarefasChamado: Boolean;
begin
  Result := false;
// VERIFICA OS ATIVIDADES
  if dsAtivQuadro2.DataSet.Active then
  begin
    dsAtivQuadro2.DataSet.First;
    if dsAtivQuadro2.DataSet.Locate('Usu_Nome', dm.NomeUsuario, []) then
      Result := True;
  end;
// VERIFICA AS SOLICITACOES
  if Result = false then
  begin
    Result := RetornarSolicitacaoEmAberto(dsQuadroSol4.DataSet);
    if Result = False then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol5.DataSet);
    if Result = False then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol6.DataSet);
    if Result = False then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol11.DataSet);
  end;

  if Result then
    ShowMessage('Usu�rio j� est� com Solicita��o ou Atividade em Aberto');

  //Result := VerificarTarefas(CChamadoPrograma);
end;

function TfrmQuadro2.VerificarTarefasSolicitacao(ADataSet: TDataSet): Boolean;
begin
//  Result := VerificarTarefas(CSolicitacaoPrograma);

  Result := false;
// VERIFICA OS CHAMADOS
  if dsQuadro2.DataSet.Active then
  begin
    dsQuadro2.DataSet.First;
    if dsQuadro2.DataSet.Locate('Usu_Nome', dm.NomeUsuario, []) then
      Result := True;
  end;

// VERIFICA OS ATIVIDADES
  if Result = false then
  begin
    if dsAtivQuadro2.DataSet.Active then
    begin
      dsAtivQuadro2.DataSet.First;
      if dsAtivQuadro2.DataSet.Locate('Usu_Nome', dm.NomeUsuario, []) then
        Result := True;
    end;
  end;

// VERIFICA AS SOLICITACOES
  if Result = false then
  begin
    if (Result = False) and (ADataSet.Name <> dsQuadro4.DataSet.Name) then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol4.DataSet);

    if (Result = False) and (ADataSet.Name <> dsQuadroSol5.DataSet.Name) then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol5.DataSet);

    if (Result = False) and (ADataSet.Name <> dsQuadro6.DataSet.Name) then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol6.DataSet);

    if (Result = False) and (ADataSet.Name <> dsQuadroSol7.DataSet.Name) then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol7.DataSet);

    if (Result = False) and (ADataSet.Name <> dsQuadroSol11.DataSet.Name) then
      Result := RetornarSolicitacaoEmAberto(dsQuadroSol11.DataSet);
  end;

  if Result then
    ShowMessage('Usu�rio j� est� com Solicita��o ou Atividade ou Chamado em Aberto');

end;

procedure TfrmQuadro2.WMSysCommand(var Msg: TWMSysCommand);
var
  bChamar: Boolean;
begin
  bChamar := False;
  if Msg.CmdType = SC_MyMenuItemRevenda then
  begin
    TFuncoes.CriarFormularioModal(TfrmRevenda.create(true));
    if dm.IdSelecionado > 0 then
    begin
      FIdRevenda := dm.IdSelecionado;
      bChamar := True;
      TituloJanela(FIdRevenda);
    end;
  end
  else if Msg.CmdType = SC_MyMenuItemRevendaLimpar then
  begin
    FIdRevenda := FIdRevendaPadrao;
    TituloJanela(FIdRevenda);
    bChamar := True;
  end
  else
    inherited;

  if bChamar then
  begin
    AbrirQuadrosChamados();
    AbrirQuadrosAtividades();
    InicioAgendamento();
    AbrirQuadrosRecados();
  end;
end;

end.
