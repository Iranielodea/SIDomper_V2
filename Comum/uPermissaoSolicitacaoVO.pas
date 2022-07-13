unit uPermissaoSolicitacaoVO;

interface

uses
  System.SysUtils;

type
  TPermissaoSolicitacaoVO = class
  private
    FOcorrenciaGeral: Boolean;
    FAnalise: Boolean;
    FOcorrenciaTecnica: Boolean;
    FAbertura: Boolean;
    FOcorrenciaRegra: Boolean;
    FStatusSolicitacao: Boolean;
    FTempo: Boolean;
    FConfTempoGeral: Boolean;
    procedure SetAbertura(const Value: Boolean);
    procedure SetAnalise(const Value: Boolean);
    procedure SetOcorrenciaGeral(const Value: Boolean);
    procedure SetOcorrenciaRegra(const Value: Boolean);
    procedure SetOcorrenciaTecnica(const Value: Boolean);
    procedure SetStatusSolicitacao(const Value: Boolean);
    procedure SetTempo(const Value: Boolean);
    procedure SetConfTempoGeral(const Value: Boolean);
  public
    property Abertura: Boolean read FAbertura write SetAbertura;
    property Analise: Boolean read FAnalise write SetAnalise;
    property OcorrenciaGeral: Boolean read FOcorrenciaGeral write SetOcorrenciaGeral;
    property OcorrenciaTecnica: Boolean read FOcorrenciaTecnica write SetOcorrenciaTecnica;
    property OcorrenciaRegra: Boolean read FOcorrenciaRegra write SetOcorrenciaRegra;
    property StatusSolicitacao: Boolean read FStatusSolicitacao write SetStatusSolicitacao;
    property Tempo: Boolean read FTempo write SetTempo;
    property ConfTempoGeral: Boolean read FConfTempoGeral write SetConfTempoGeral;
  end;

implementation

{ TPermissaoSolicitacaoVO }

procedure TPermissaoSolicitacaoVO.SetAbertura(const Value: Boolean);
begin
  FAbertura := Value;
end;

procedure TPermissaoSolicitacaoVO.SetAnalise(const Value: Boolean);
begin
  FAnalise := Value;
end;

procedure TPermissaoSolicitacaoVO.SetConfTempoGeral(const Value: Boolean);
begin
  FConfTempoGeral := Value;
end;

procedure TPermissaoSolicitacaoVO.SetOcorrenciaGeral(const Value: Boolean);
begin
  FOcorrenciaGeral := Value;
end;

procedure TPermissaoSolicitacaoVO.SetOcorrenciaRegra(const Value: Boolean);
begin
  FOcorrenciaRegra := Value;
end;

procedure TPermissaoSolicitacaoVO.SetOcorrenciaTecnica(const Value: Boolean);
begin
  FOcorrenciaTecnica := Value;
end;

procedure TPermissaoSolicitacaoVO.SetStatusSolicitacao(const Value: Boolean);
begin
  FStatusSolicitacao := Value;
end;

procedure TPermissaoSolicitacaoVO.SetTempo(const Value: Boolean);
begin
  FTempo := Value;
end;

end.
