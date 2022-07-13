unit uDMRelSolicitacao;

interface

uses
  System.SysUtils, System.Classes, uDM, Datasnap.DBClient, Data.DB, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppPrnabl,
  ppCtrls, ppCache, ppDesignLayer, ppParameter, ppStrtch, ppSubRpt, ppVar,
  uFuncoesSIDomper, ppChrt, Vcl.Graphics, ppMemo;

type
  TDMRelSolicitacao = class(TDataModule)
    cdsRelatorio1: TClientDataSet;
    cdsRelatorioTempo1: TClientDataSet;
    dsRelatorio1: TDataSource;
    cdsRelatorio1Sol_Id: TAutoIncField;
    cdsRelatorio1Ver_Id: TAutoIncField;
    cdsRelatorio1Ver_Versao: TStringField;
    cdsRelatorio1Sol_Data: TDateField;
    cdsRelatorio1Sol_Hora: TTimeField;
    cdsRelatorio1Sol_Tipo: TIntegerField;
    cdsRelatorio1Sol_Nivel: TIntegerField;
    cdsRelatorio1Cli_Nome: TWideStringField;
    cdsRelatorio1Cli_Fantasia: TWideStringField;
    cdsRelatorio1Tip_Nome: TWideStringField;
    cdsRelatorio1Sta_Nome: TWideStringField;
    cdsRelatorio1Mod_Nome: TWideStringField;
    cdsRelatorio1Prod_Nome: TWideStringField;
    cdsRelatorio1Sol_TempoPrevisto: TBCDField;
    cdsRelatorio1Sol_PrevisaoEntrega: TDateField;
    cdsRelatorio1TotalTempo: TFloatField;
    cdsRelatorio1Analista: TWideStringField;
    cdsRelatorio1Desenvolvedor: TWideStringField;
    cdsRelatorio1Sol_Titulo: TStringField;
    cdsRelatorio1QSolicitacaoRelTempo1: TDataSetField;
    cdsRelatorioTempo1Usu_Nome: TWideStringField;
    cdsRelatorioTempo1STemp_HoraFim: TTimeField;
    cdsRelatorioTempo1STemp_HoraInicio: TTimeField;
    cdsRelatorioTempo1STemp_TotalHoras: TFloatField;
    dsRelatorioTempo1: TDataSource;
    dbRelatorio1: TppDBPipeline;
    Relatorio1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    dbRelatorioTempo1: TppDBPipeline;
    ppDBText2: TppDBText;
    ppSbTempo: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    lblTitulo1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lblPeriodoModelo1: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel15: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    cdsRelatorio1CTotalHoras: TStringField;
    ppLabel16: TppLabel;
    ppDBText20: TppDBText;
    ppLabel17: TppLabel;
    ppDBCalc1: TppDBCalc;
    lblRelatorio1TotalHoraVersao: TppLabel;
    Relatorio1CalcTempoVersao: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppDBCalc2: TppDBCalc;
    Relatorio1CalcTempoGeral: TppDBCalc;
    lblRelatorio1TotalHoraGeral: TppLabel;
    ppLine4: TppLine;
    cdsRelatorioTempo1CTotalHoras: TStringField;
    ppDBText4: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel18: TppLabel;
    Relatorio1CalcTotalTipo: TppDBCalc;
    ppLine5: TppLine;
    Relatorio1CalcTempoTipo: TppDBCalc;
    lblRelatorio1TotalHoraTipo: TppLabel;
    lblRelatorio1PercTipo: TppLabel;
    cdsRelatorioTipo: TClientDataSet;
    cdsRelatorioTipoTip_Codigo: TIntegerField;
    cdsRelatorioTipoTip_Nome: TWideStringField;
    cdsRelatorioTipoSol_Tipo: TIntegerField;
    cdsRelatorioTipoSol_Data: TDateField;
    cdsRelatorioTipoSol_Titulo: TStringField;
    cdsRelatorioTipoSol_Cliente: TIntegerField;
    cdsRelatorioTipoSol_Status: TIntegerField;
    cdsRelatorioTipoCli_Codigo: TIntegerField;
    cdsRelatorioTipoCli_Nome: TWideStringField;
    cdsRelatorioTipoSta_Codigo: TIntegerField;
    cdsRelatorioTipoSta_Nome: TWideStringField;
    cdsRelatorioTipoTempo: TFloatField;
    dsRelatorioTipo: TDataSource;
    dbRelatorioTipo: TppDBPipeline;
    RelatorioTipo: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    lblPeriodoPorTipo: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppDBText5: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine7: TppLine;
    ppLabel30: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppSummaryBand3: TppSummaryBand;
    ppLabel31: TppLabel;
    ppDBCalc4: TppDBCalc;
    cdsRelatorioTipoCTempo: TStringField;
    ppDBText26: TppDBText;
    CalcGTipo: TppDBCalc;
    lblGTempo: TppLabel;
    CalcGeralTipo: TppDBCalc;
    lblGeralTipo: TppLabel;
    tcGraficoTipo: TppTeeChart;
    cdsRelatorioStatus: TClientDataSet;
    cdsRelatorioStatusSol_Produto: TIntegerField;
    cdsRelatorioStatusSol_Data: TDateField;
    cdsRelatorioStatusSol_Titulo: TStringField;
    cdsRelatorioStatusSol_Cliente: TIntegerField;
    cdsRelatorioStatusSol_Status: TIntegerField;
    cdsRelatorioStatusCli_Codigo: TIntegerField;
    cdsRelatorioStatusCli_Nome: TWideStringField;
    cdsRelatorioStatusSta_Codigo: TIntegerField;
    cdsRelatorioStatusSta_Nome: TWideStringField;
    cdsRelatorioStatusProd_Codigo: TIntegerField;
    cdsRelatorioStatusProd_Nome: TWideStringField;
    cdsRelatorioStatusTempo: TFloatField;
    cdsRelatorioStatusCTempo: TStringField;
    dsRelatorioStatus: TDataSource;
    dbRelatorioStatus: TppDBPipeline;
    RelatorioStatus: TppReport;
    ppParameterList3: TppParameterList;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppLabel23: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLine8: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel38: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine10: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppLabel40: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBText34: TppDBText;
    lblTempoStatus1: TppLabel;
    lblTempoStatus2: TppLabel;
    lblTempoStatus3: TppLabel;
    CalcTempoStatus1: TppDBCalc;
    CalcTempoStatus2: TppDBCalc;
    CalcTempoStatus3: TppDBCalc;
    lblPeriodoModelo3: TppLabel;
    ppLine11: TppLine;
    tcGraficoStatus: TppTeeChart;
    cdsRelatorioStatusSol_tipo: TIntegerField;
    cdsRelatorioStatusTip_Codigo: TIntegerField;
    cdsRelatorioStatusTip_Nome: TWideStringField;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsRelatorio1CalcFields(DataSet: TDataSet);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure cdsRelatorioTempo1CalcFields(DataSet: TDataSet);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure cdsRelatorioTipoCalcFields(DataSet: TDataSet);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure cdsRelatorioStatusCalcFields(DataSet: TDataSet);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
  private
    { Private declarations }
    FTotal: Integer;
    procedure GraficoTipo;
    procedure GraficoStatus;
    function RetornarCor(AIndice: Integer): TColor;
    procedure Grafico(Agrafico: TppTeeChart; ADataSet: TClientDataSet; ACampo: string);
  public
    { Public declarations }
    procedure ImprimirRelatorio1(ADataInicial, ADataFinal: string; AMostrarTempo: Boolean;
      out AQtdeSolicitacao: Integer);
    procedure ImprimirRelatorioPorTipo(ADataInicial, ADataFinal: string);
    procedure ImprimirRelatorioPorStatus(ADataInicial, ADataFinal: string);
  end;

var
  DMRelSolicitacao: TDMRelSolicitacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMRelSolicitacao.cdsRelatorio1CalcFields(DataSet: TDataSet);
begin
  cdsRelatorio1CTotalHoras.AsString := TFuncoes.DecimalToHora(cdsRelatorio1TotalTempo.AsFloat);
end;

procedure TDMRelSolicitacao.cdsRelatorioStatusCalcFields(DataSet: TDataSet);
begin
  if cdsRelatorioStatus.State = dsInternalCalc then
  begin
    cdsRelatorioStatusCTempo.AsString := TFuncoes.DecimalToHora(cdsRelatorioStatusTempo.AsFloat);
  end;
end;

procedure TDMRelSolicitacao.cdsRelatorioTempo1CalcFields(DataSet: TDataSet);
begin
  cdsRelatorioTempo1CTotalHoras.AsString := TFuncoes.DecimalToHora(cdsRelatorioTempo1STemp_TotalHoras.AsFloat);
end;

procedure TDMRelSolicitacao.cdsRelatorioTipoCalcFields(DataSet: TDataSet);
begin
  if cdsRelatorioTipo.State = dsInternalCalc then
  begin
    cdsRelatorioTipoCTempo.AsString := TFuncoes.DecimalToHora(cdsRelatorioTipoTempo.AsFloat);
  end;
end;

procedure TDMRelSolicitacao.DataModuleCreate(Sender: TObject);
var
  i: Integer;
begin
  for I := 0 to Self.ComponentCount-1 do
  begin
    if Self.Components[i] is TClientDataSet then
      TClientDataSet(Components[i]).RemoteServer := dm.DSPConexao;
  end;
end;

procedure TDMRelSolicitacao.Grafico(Agrafico: TppTeeChart;
  ADataSet: TClientDataSet; ACampo: string);
var
  i: Integer;
  SituacaoOld: string;
  iContador: Integer;
  iCor: Integer;
begin
  Agrafico.Chart.Series[0].Clear;
  iCor := 0;
  I := 0;

  ADataSet.First;
  while not ADataSet.Eof do
  begin
    if I = 0 then
    begin
      SituacaoOld := ADataSet.FieldByName(ACampo).AsString;
      iContador := 0;
    end;

    if SituacaoOld = ADataSet.FieldByName(ACampo).AsString then
      Inc(iContador)
    else begin
      Agrafico.Chart.Series[0].Add(iContador, SituacaoOld, RetornarCor(iCor));
      SituacaoOld :=  ADataSet.FieldByName(ACampo).AsString;
      iContador := 1;
      Inc(iCor);
    end;

    SituacaoOld := ADataSet.FieldByName(ACampo).AsString;
    Inc(i);
    ADataSet.Next;
  end;
  Agrafico.Chart.Series[0].Add(iContador, SituacaoOld, RetornarCor(iCor));
end;

procedure TDMRelSolicitacao.GraficoStatus;
begin
  Grafico(tcGraficoStatus, cdsRelatorioStatus, 'Sta_Nome');
end;

procedure TDMRelSolicitacao.GraficoTipo;
begin
  Grafico(tcGraficoTipo, cdsRelatorioTipo, 'Tip_Nome');
end;

procedure TDMRelSolicitacao.ImprimirRelatorio1(ADataInicial,
  ADataFinal: string; AMostrarTempo: Boolean; out AQtdeSolicitacao: Integer);
begin
  FTotal := AQtdeSolicitacao;

  ppSbTempo.Visible := AMostrarTempo;
  lblPeriodoModelo1.Caption := 'Per�odo de: ' + ADataInicial + ' A ' + ADataFinal;
  cdsRelatorio1.Close;
  Relatorio1.Print;
  cdsRelatorio1.Close;
end;

procedure TDMRelSolicitacao.ImprimirRelatorioPorStatus(ADataInicial,
  ADataFinal: string);
begin
  if cdsRelatorioStatus.Active then
    cdsRelatorioStatus.Close;
  cdsRelatorioStatus.Open;

  GraficoStatus();

  lblPeriodoModelo3.Caption := 'Per�odo de: ' + ADataInicial + ' At�: ' + ADataFinal;
  RelatorioStatus.Print;
  cdsRelatorioStatus.Close;

end;

procedure TDMRelSolicitacao.ImprimirRelatorioPorTipo(ADataInicial,
  ADataFinal: string);
begin
  if cdsRelatorioTipo.Active then
    cdsRelatorioTipo.Close;
  cdsRelatorioTipo.Open;

  GraficoTipo();

  lblPeriodoPorTipo.Caption := 'Per�odo de: ' + ADataInicial + ' At�: ' + ADataFinal;
  RelatorioTipo.Print;
  cdsRelatorioTipo.Close;
end;

procedure TDMRelSolicitacao.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  lblRelatorio1TotalHoraVersao.Caption := TFuncoes.DecimalToHora(Relatorio1CalcTempoVersao.Value);
end;

procedure TDMRelSolicitacao.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  dPerc: Double;
  vTotal: Double;
begin
  lblRelatorio1TotalHoraTipo.Caption := TFuncoes.DecimalToHora(Relatorio1CalcTempoTipo.Value);

  vTotal := Relatorio1CalcTotalTipo.Value;

  if FTotal <= 0 then
    FTotal := 1;

  dPerc := (vTotal / FTotal) * 100;
  lblRelatorio1PercTipo.Caption := '(' + FormatFloat(',#.00', dPerc) + '%)';

end;

procedure TDMRelSolicitacao.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  lblGTempo.Caption := TFuncoes.DecimalToHora(CalcGTipo.Value);
end;

procedure TDMRelSolicitacao.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  lblTempoStatus2.Caption := TFuncoes.DecimalToHora(CalcTempoStatus2.Value);
end;

procedure TDMRelSolicitacao.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  lblTempoStatus1.Caption := TFuncoes.DecimalToHora(CalcTempoStatus1.Value);
end;

procedure TDMRelSolicitacao.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  lblRelatorio1TotalHoraGeral.Caption := TFuncoes.DecimalToHora(Relatorio1CalcTempoGeral.Value);
end;

procedure TDMRelSolicitacao.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  lblGeralTipo.Caption := TFuncoes.DecimalToHora(CalcGeralTipo.Value);
end;

procedure TDMRelSolicitacao.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  lblTempoStatus3.Caption := TFuncoes.DecimalToHora(CalcTempoStatus3.Value);
end;

function TDMRelSolicitacao.RetornarCor(AIndice: Integer): TColor;
begin
  case AIndice of
    0: Result := clOlive;
    1: Result := clGreen;
    2: Result := clRed;
    3: Result := clMaroon;
    4: Result := clYellow;
    5: Result := clBlack;
    6: Result := clNavy;
    7: Result := clInfoBk;
    8: Result := clTeal;
    9: Result := clGray;
  else
    Result := clPurple;
  end;
end;

end.
