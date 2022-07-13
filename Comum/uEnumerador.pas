unit uEnumerador;

interface

const
  CRegistroNaoEncontrado: string = 'Registro n�o Encontrado.';
  CRegistroInativo: string = 'Registro Inativo.';
  DataEmBranco: string = '/  /';
  HoraEmBranco: string = ':';
  CDisplayFormatCliente: string = '000000';
  CDisplayFormatCodigo: string = '0000';
  QUEBRA_LINHA = #13 + #10;

  CChamadoPrograma: Integer = 1;
  CVisitaPrograma: Integer = 2;
  CSolicitacaoPrograma: Integer = 3;
  CVersaoPrograma: Integer = 4;
  CBaseConhPrograma: Integer = 6;
  CRevendaPrograma: Integer = 100;
  CProdutoPrograma: Integer = 101;
  CModuloPrograma: Integer = 102;
  CClientePrograma: Integer = 103;
  CClienteEmailPrograma: Integer = 1031;
  CClienteModuloPrograma: Integer = 1033;
  CUsuarioPrograma: Integer = 104;
  CDepartamentoPrograma: Integer = 105;
  CDepartamentoAcessoPrograma: Integer = 1051;
  CTipoPrograma: Integer = 106;
  CStatusPrograma: Integer = 107;
  CClienteEspPrograma: Integer = 108;
  CParametrosPrograma: integer = 109;
  CContaEmailPrograma: Integer = 110;
  CAtividadePrograma: Integer = 111;
  CAgendamentoPrograma: Integer = 112;
  CProspectPrograma: Integer = 113;
  COrcamentoPrograma: Integer = 114;
  CFormaPagto: Integer = 115;
  CObservacao: Integer = 116;
  CModeloRelatorio: Integer = 117;
  CRamal: Integer = 118;
  CRecadoPrograma: Integer = 119;
  CEscala: Integer = 120;
  CCidade: Integer = 121;
  CLicenca: Integer = 122;
  CFeriado: Integer = 123;
  CCategoriaPrograma: Integer = 124;
  cTabelaPreco: Integer = 125;

type
  TOperacao = (opIncluir,
               opEditar,
               opNavegar);

  TEnumPrograma = (prTodos        = 0,
                   prChamado      = 1,
                   prVisita       = 2,
                   prSolicitacao  = 3,
                   prVersao       = 4,
                   prQualidade    = 5,
                   prBase         = 6,
                   prAtividade    = 7,
                   prAgendamento  = 8,
                   prOrcamento    = 9,
                   prOrcamentoNAprovado = 91,
                   prRecado = 10,
                   prTabelaPreco = 11,
                   prOrcamentoAgroD = 12);

  TEnumSolicitacao = (solAnalise,
                      solOcorrGeral,
                      solOcorrTecnica,
                      solOcorrRegra,
                      solTodos);

  TEnumChamadoAtividade = (caChamado    = 1,
                           caAtividade  = 2);

  TEnumTipoPrograma = (tpChamado = 1,
                       tpAtividade = 111,
                       tpSolicitacao = 3);

  TEnumAgendamento = (ageAbertura,
                      ageCancelamento,
                      ageReagendamento,
                      ageEncerrado);

implementation

end.


