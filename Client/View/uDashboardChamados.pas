unit uDashboardChamados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Data.DB,
  Datasnap.DBClient, Vcl.ExtCtrls, uChamadoVO, System.Generics.Collections, uChamadoController, uFuncoesSIDomper,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, VCLTee.BubbleCh;

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
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FChamadoController: TChamadoController;
    procedure PreencherValores;
  public
    { Public declarations }
  end;

var
  frmDashboardChamados: TfrmDashboardChamados;

implementation


{$R *.dfm}

procedure TfrmDashboardChamados.FormCreate(Sender: TObject);
begin
  cdsChamado.CreateDataSet;
  cdsAtendimento.CreateDataSet;
end;

procedure TfrmDashboardChamados.FormDestroy(Sender: TObject);
begin
  FChamadoController.DisposeOf;
end;

procedure TfrmDashboardChamados.FormShow(Sender: TObject);
begin

  Chart1.Width := Screen.Width div 2;
  Chart2.Width := Screen.Width div 2;
  Panel2.Height := (Screen.Height div 2) - 50;
  FChamadoController := TChamadoController.Create;
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
  totalHoras := 0;
  contador := 0;
  contador2 := 0;
  totalHoras2 := 0;

  Chart1.Series[0].Clear;
  Chart2.Series[0].Clear;

  lista := FChamadoController.RetornarMediaAtendimentos();
  for item in lista do
  begin
    if item.Tipo = 1 then
    begin
      Chart1.Series[0].Add(item.Tempo, 'Nivel: ' + item.Nivel.ToString() + ' - ' + TFuncoes.DecimalToHora(item.Tempo));

      cdsChamado.Append;
      cdsChamadoNivel.AsInteger := item.Nivel;
      cdsChamadoQtde.AsFloat := item.Tempo;
      cdsChamadoHoras.AsString := TFuncoes.DecimalToHora(item.Tempo);
      cdsChamado.Post;

      Inc(contador);
      totalHoras := totalHoras + item.Tempo;
    end
    else begin
      Chart2.Series[0].Add(item.Tempo, 'Nivel: ' + item.Nivel.ToString() + ' - ' + TFuncoes.DecimalToHora(item.Tempo));

      cdsAtendimento.Append;
      cdsAtendimentoNivel.AsInteger := item.Nivel;
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
