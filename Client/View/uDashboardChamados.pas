unit uDashboardChamados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Data.DB,
  Datasnap.DBClient, Vcl.ExtCtrls, uChamadoVO, System.Generics.Collections, uChamadoController, uFuncoesSIDomper,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, VCLTee.BubbleCh, Vcl.Mask, uImagens,
  Vcl.Buttons;

type
  TfrmDashboardChamados = class(TForm)
    PageControl1: TPageControl;
    ts1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    cdsInicioAtendimento: TClientDataSet;
    dsInicioAtendimento: TDataSource;
    cdsInicioAtendimentoNivel: TIntegerField;
    cdsInicioAtendimentoMedia: TFloatField;
    cdsInicioAtendimentoHoras: TStringField;
    Chart1: TChart;
    Series2: TBarSeries;
    dsChamado: TDataSource;
    cdsChamado: TClientDataSet;
    cdsChamadoNivel: TIntegerField;
    cdsChamadoQtde: TFloatField;
    cdsChamadoHoras: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edtTotalHorasInicio: TEdit;
    cdsAtendimento: TClientDataSet;
    dsAtendimento: TDataSource;
    cdsAtendimentoNivel: TIntegerField;
    cdsAtendimentoQtde: TFloatField;
    cdsAtendimentoHoras: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    edtTotalHorasAtendimento: TEdit;
    DBGrid2: TDBGrid;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    edtMediaHoraInicio: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtMediaHorasAtendimento: TEdit;
    cdsChamadoQtdeChamados: TFloatField;
    cdsAtendimentoQtdeChamados: TFloatField;
    Panel8: TPanel;
    Label5: TLabel;
    edtData: TMaskEdit;
    btnPesquisar: TBitBtn;
    cdsChamadoPerfil: TStringField;
    cdsAtendimentoPerfil: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FChamadoController: TChamadoController;
    procedure BuscarImagens;
    procedure PreencherValores;
  public
    { Public declarations }
  end;

var
  frmDashboardChamados: TfrmDashboardChamados;

implementation


{$R *.dfm}

procedure TfrmDashboardChamados.btnPesquisarClick(Sender: TObject);
begin
  PreencherValores();
end;

procedure TfrmDashboardChamados.BuscarImagens;
var
  Imagem: TfrmImagens;
begin
  Imagem := TfrmImagens.Create(Self);
  try
    btnPesquisar.Glyph := Imagem.btnFiltro.Glyph;
  finally
    FreeAndNil(Imagem);
  end;
end;

procedure TfrmDashboardChamados.edtDataExit(Sender: TObject);
begin
  try
    StrToDate(edtData.Text);
  except On E: Exception do
    begin
      raise Exception.Create('Informe a Data Correta!');
      edtData.SetFocus;
    end;
  end;
end;

procedure TfrmDashboardChamados.FormCreate(Sender: TObject);
begin
  cdsChamado.CreateDataSet;
  cdsAtendimento.CreateDataSet;
end;

procedure TfrmDashboardChamados.FormDestroy(Sender: TObject);
begin
  FChamadoController.DisposeOf;
end;

procedure TfrmDashboardChamados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmDashboardChamados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key:=#0;
    perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmDashboardChamados.FormShow(Sender: TObject);
begin
  BuscarImagens;
  Chart1.Width := Screen.Width div 2;
  Chart2.Width := Screen.Width div 2;
  Panel2.Height := (Screen.Height div 2) - 60;
  FChamadoController := TChamadoController.Create;
  edtData.Text := DateToStr(Date);
  PreencherValores;
end;

procedure TfrmDashboardChamados.PreencherValores;
var
  lista: TObjectList<TChamadoTempoMedioViewModel>;
  item: TChamadoTempoMedioViewModel;
  totalHoras: Double;
  contador: Integer;

  totalHoras2: Double;
  contador2: Integer;
begin
  cdsChamado.First;
  while not cdsChamado.Eof do
    cdsChamado.Delete;

  cdsAtendimento.First;
  while not cdsAtendimento.Eof do
    cdsAtendimento.Delete;

  totalHoras := 0;
  contador := 0;
  contador2 := 0;
  totalHoras2 := 0;

  Chart1.Series[0].Clear;
  Chart2.Series[0].Clear;

  lista := FChamadoController.RetornarMediaAtendimentos(StrToDateDef(edtData.Text, Date));
  for item in lista do
  begin
    if item.Tipo = 1 then
    begin
      Chart1.Series[0].Add(item.Tempo, 'Perfil: ' + item.Perfil + ' - ' + TFuncoes.DecimalToHora(item.Tempo));

      cdsChamado.Append;
      cdsChamadoPerfil.AsString := item.Perfil;
      cdsChamadoQtde.AsFloat := item.Tempo;
      cdsChamadoQtdeChamados.AsFloat := item.QtdeChamados;
      cdsChamadoHoras.AsString := TFuncoes.DecimalToHora(item.Tempo);
      cdsChamado.Post;

      Inc(contador);
      totalHoras := totalHoras + item.Tempo;
    end
    else begin
      Chart2.Series[0].Add(item.Tempo, 'Perfil: ' + item.Perfil + ' - ' + TFuncoes.DecimalToHora(item.Tempo));

      cdsAtendimento.Append;
      cdsAtendimentoPerfil.AsString := item.Perfil;
      cdsAtendimentoQtdeChamados.AsFloat := item.QtdeChamados;
      cdsAtendimentoQtde.AsFloat := item.Tempo;
      cdsAtendimentoHoras.AsString := TFuncoes.DecimalToHora(item.Tempo);
      cdsAtendimento.Post;

      Inc(contador2);
      totalHoras2 := totalHoras2 + item.Tempo;
    end;

    if contador > 0 then
    begin
      edtTotalHorasInicio.Text := TFuncoes.DecimalToHora(totalHoras);
      edtMediaHoraInicio.Text := TFuncoes.DecimalToHora(totalHoras / contador);
    end;

    if contador2 > 0 then
    begin
      edtTotalHorasAtendimento.Text := TFuncoes.DecimalToHora(totalHoras2);
      edtMediaHorasAtendimento.Text := TFuncoes.DecimalToHora(totalHoras2 / contador2);
    end;
  end;
  lista.DisposeOf;
end;

end.
