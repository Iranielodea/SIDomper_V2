object ServerModule2: TServerModule2
  OldCreateOrder = False
  Height = 640
  Width = 902
  object QAgendamentoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Age_Id,'
      #9'Age_Data,'
      #9'Age_Hora,'
      #9'Age_Usuario,'
      #9'Age_Cliente,'
      '  Age_NomeCliente,'
      #9'Age_Contato,'
      #9'Age_Programa,'
      #9'Age_Tipo,'
      #9'Age_Status,'
      #9'Age_Descricao,'
      #9'Age_Motivo,'
      #9'Age_Visita,'
      #9'Age_Atividade,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Cli_Codigo,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Sta_Codigo,'
      #9'Sta_Nome'
      'FROM Agendamento'
      #9'INNER JOIN Usuario ON Age_Usuario = Usu_Id'
      #9'INNER JOIN Cliente ON Age_Cliente = Cli_Id'
      #9'INNER JOIN Tipo ON Age_Tipo = Tip_Id'
      #9'INNER JOIN Status ON Age_Status = Sta_Id'
      'WHERE Age_Id = :Id')
    Left = 40
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QAgendamentoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Age_Id,'
      #9'Age_Data,'
      #9'Age_Hora,'
      #9'Age_NomeCliente,'
      #9'Tip_Nome,'
      #9'Sta_Nome,'
      '  Usu_Nome'
      'FROM Agendamento'
      #9'INNER JOIN Cliente ON Age_Cliente = Cli_Id'
      #9'INNER JOIN Tipo ON Age_Tipo = Tip_Id'
      #9'INNER JOIN Status ON Age_Status = Status.Sta_Id'
      '  INNER JOIN Usuario ON Age_Usuario = Usu_Id')
    Left = 208
    Top = 24
  end
  object dspAgendamentoCad: TDataSetProvider
    DataSet = QAgendamentoCad
    Left = 96
    Top = 24
  end
  object dspAgendamentoCons: TDataSetProvider
    DataSet = QAgendamentoCons
    Left = 256
    Top = 24
  end
  object spAgendamento: TFDStoredProc
    Connection = DM.Conexao
    SchemaName = 'dbo'
    StoredProcName = 'Agendamento_sp_IU'
    Left = 152
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Data'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Hora'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@IdUsuario'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@IdCliente'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Contato'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 9
        Name = '@Programa'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@IdTipo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@IdStatus'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@Descricao'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Position = 13
        Name = '@Motivo'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Position = 14
        Name = '@IdVisita'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@IdAtividade'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@NomeCliente'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 17
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QAgendaQuadro: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Age_Id,'
      #9'Age_Data,'
      #9'Age_Hora,'
      '  Age_Cliente,'
      '  Age_NomeCliente,'
      #9'Usu_Nome,'
      '  Sta_Nome'
      'FROM Agendamento'
      'INNER JOIN Cliente ON  Age_Cliente = Cli_Id'
      'INNER JOIN Usuario ON Age_Usuario = Usu_Id'
      'INNER JOIN Status ON Age_Status = Sta_Id')
    Left = 40
    Top = 72
  end
  object dspAgendaQuadro: TDataSetProvider
    DataSet = QAgendaQuadro
    Left = 96
    Top = 72
  end
  object QPlanoBackup: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Plb_Id,'
      #9'Plb_Destino,'
      #9'Plb_Domingo,'
      #9'Plb_Segunda,'
      #9'Plb_Terca,'
      #9'Plb_Quarta,'
      #9'Plb_Quinta,'
      #9'Plb_Sexta,'
      #9'Plb_Sabado,'
      #9'Plb_Ativo,'
      #9'Plb_DataUltimoBackup'
      'FROM PlanoBackup'#9)
    Left = 40
    Top = 120
    object QPlanoBackupPlb_Id: TFDAutoIncField
      FieldName = 'Plb_Id'
      Origin = 'Plb_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPlanoBackupPlb_Destino: TStringField
      FieldName = 'Plb_Destino'
      Origin = 'Plb_Destino'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object QPlanoBackupPlb_Domingo: TBooleanField
      FieldName = 'Plb_Domingo'
      Origin = 'Plb_Domingo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Segunda: TBooleanField
      FieldName = 'Plb_Segunda'
      Origin = 'Plb_Segunda'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Terca: TBooleanField
      FieldName = 'Plb_Terca'
      Origin = 'Plb_Terca'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Quarta: TBooleanField
      FieldName = 'Plb_Quarta'
      Origin = 'Plb_Quarta'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Quinta: TBooleanField
      FieldName = 'Plb_Quinta'
      Origin = 'Plb_Quinta'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Sexta: TBooleanField
      FieldName = 'Plb_Sexta'
      Origin = 'Plb_Sexta'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Sabado: TBooleanField
      FieldName = 'Plb_Sabado'
      Origin = 'Plb_Sabado'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_Ativo: TBooleanField
      FieldName = 'Plb_Ativo'
      Origin = 'Plb_Ativo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupPlb_DataUltimoBackup: TDateField
      FieldName = 'Plb_DataUltimoBackup'
      Origin = 'Plb_DataUltimoBackup'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspPlanoBackup: TDataSetProvider
    DataSet = QPlanoBackup
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 120
  end
  object QPlanoBackupItens: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'PlbIte_Hora,'
      #9'PlbIte_Id,'
      #9'PlbIte_PlanoBackup,'
      #9'PlbIte_Status'
      'FROM PlanoBackupItens'
      #9'WHERE PlbIte_PlanoBackup = :IdPlano')
    Left = 40
    Top = 168
    ParamData = <
      item
        Name = 'IDPLANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPlanoBackupItensPlbIte_Id: TFDAutoIncField
      FieldName = 'PlbIte_Id'
      Origin = 'PlbIte_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPlanoBackupItensPlbIte_Hora: TTimeField
      FieldName = 'PlbIte_Hora'
      Origin = 'PlbIte_Hora'
      ProviderFlags = [pfInUpdate]
    end
    object QPlanoBackupItensPlbIte_PlanoBackup: TIntegerField
      FieldName = 'PlbIte_PlanoBackup'
      Origin = 'PlbIte_PlanoBackup'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QPlanoBackupItensPlbIte_Status: TBooleanField
      FieldName = 'PlbIte_Status'
      Origin = 'PlbIte_Status'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspPlanoBackupItens: TDataSetProvider
    DataSet = QPlanoBackupItens
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 168
  end
  object spPlanoBackup: TFDStoredProc
    Connection = DM.Conexao
    SchemaName = 'dbo'
    StoredProcName = 'PlanoBackup_sp_IU'
    Left = 144
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Destino'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 5
        Name = '@Domingo'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Segunda'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Terca'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Quarta'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@Quinta'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@Sexta'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Sabado'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@Ativo'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@DataUltimoBackup'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object spPlanoBackupItens: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'PlanoBackupItens_sp_IU'
    Left = 144
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PlanoBackup'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Hora'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Status'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object QBackup: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'DatePart(DW, CAST(GETDATE() AS date)) AS DiaHoje,'
      #9'Plb_Destino,'
      #9'Plb_Domingo,'
      #9'Plb_Segunda,'
      #9'Plb_Terca,'
      #9'Plb_Quarta,'
      #9'Plb_Quinta,'
      #9'Plb_Sexta,'
      #9'Plb_Sabado,'
      #9'Plb_DataUltimoBackup,'
      #9'PlbIte_Id,'
      #9'PlbIte_Hora,'
      #9'PlbIte_Status'
      'FROM PlanoBackup'
      #9'INNER JOIN PlanoBackupItens ON Plb_Id = PlbIte_PlanoBackup'
      'WHERE Plb_Ativo = 1'
      'ORDER BY PlbIte_Hora')
    Left = 208
    Top = 80
    object QBackupDiaHoje: TIntegerField
      FieldName = 'DiaHoje'
      Origin = 'DiaHoje'
      ReadOnly = True
    end
    object QBackupPlb_Destino: TStringField
      FieldName = 'Plb_Destino'
      Origin = 'Plb_Destino'
      Required = True
      Size = 200
    end
    object QBackupPlb_Domingo: TBooleanField
      FieldName = 'Plb_Domingo'
      Origin = 'Plb_Domingo'
      Required = True
    end
    object QBackupPlb_Segunda: TBooleanField
      FieldName = 'Plb_Segunda'
      Origin = 'Plb_Segunda'
      Required = True
    end
    object QBackupPlb_Terca: TBooleanField
      FieldName = 'Plb_Terca'
      Origin = 'Plb_Terca'
      Required = True
    end
    object QBackupPlb_Quarta: TBooleanField
      FieldName = 'Plb_Quarta'
      Origin = 'Plb_Quarta'
      Required = True
    end
    object QBackupPlb_Quinta: TBooleanField
      FieldName = 'Plb_Quinta'
      Origin = 'Plb_Quinta'
      Required = True
    end
    object QBackupPlb_Sexta: TBooleanField
      FieldName = 'Plb_Sexta'
      Origin = 'Plb_Sexta'
      Required = True
    end
    object QBackupPlb_Sabado: TBooleanField
      FieldName = 'Plb_Sabado'
      Origin = 'Plb_Sabado'
      Required = True
    end
    object QBackupPlb_DataUltimoBackup: TDateField
      FieldName = 'Plb_DataUltimoBackup'
      Origin = 'Plb_DataUltimoBackup'
    end
    object QBackupPlbIte_Id: TFDAutoIncField
      FieldName = 'PlbIte_Id'
      Origin = 'PlbIte_Id'
      ReadOnly = True
    end
    object QBackupPlbIte_Hora: TTimeField
      FieldName = 'PlbIte_Hora'
      Origin = 'PlbIte_Hora'
    end
    object QBackupPlbIte_Status: TBooleanField
      FieldName = 'PlbIte_Status'
      Origin = 'PlbIte_Status'
    end
  end
  object QProspectCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Pros_Ativo,'
      #9'Pros_Contato,'
      #9'Pros_Docto,'
      #9'Pros_Endereco,'
      #9'Pros_Enquadramento,'
      #9'Pros_Fantasia,'
      #9'Pros_Id,'
      #9'Pros_Nome,'
      #9'Pros_Revenda,'
      #9'Pros_Telefone,'
      #9'Pros_Usuario,'
      '  Pros_Codigo,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Usu_Codigo,'
      #9'Usu_Nome'
      'FROM Prospect'
      #9'INNER JOIN Revenda On Pros_Revenda = rev_id'
      #9'LEFT JOIN Usuario ON Pros_Usuario = Usu_Id'
      'WHERE Pros_Id = :Pros_Id')
    Left = 40
    Top = 216
    ParamData = <
      item
        Name = 'PROS_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QProspectCadPros_Id: TFDAutoIncField
      FieldName = 'Pros_Id'
      Origin = 'Pros_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QProspectCadPros_Ativo: TBooleanField
      FieldName = 'Pros_Ativo'
      Origin = 'Pros_Ativo'
      ProviderFlags = [pfInUpdate]
    end
    object QProspectCadPros_Contato: TStringField
      FieldName = 'Pros_Contato'
      Origin = 'Pros_Contato'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QProspectCadPros_Docto: TStringField
      FieldName = 'Pros_Docto'
      Origin = 'Pros_Docto'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object QProspectCadPros_Endereco: TStringField
      FieldName = 'Pros_Endereco'
      Origin = 'Pros_Endereco'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object QProspectCadPros_Enquadramento: TStringField
      FieldName = 'Pros_Enquadramento'
      Origin = 'Pros_Enquadramento'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QProspectCadPros_Fantasia: TStringField
      FieldName = 'Pros_Fantasia'
      Origin = 'Pros_Fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QProspectCadPros_Nome: TStringField
      FieldName = 'Pros_Nome'
      Origin = 'Pros_Nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QProspectCadPros_Revenda: TIntegerField
      FieldName = 'Pros_Revenda'
      Origin = 'Pros_Revenda'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QProspectCadPros_Telefone: TStringField
      FieldName = 'Pros_Telefone'
      Origin = 'Pros_Telefone'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QProspectCadPros_Usuario: TIntegerField
      FieldName = 'Pros_Usuario'
      Origin = 'Pros_Usuario'
      ProviderFlags = [pfInUpdate]
    end
    object QProspectCadPros_Codigo: TIntegerField
      FieldName = 'Pros_Codigo'
      Origin = 'Pros_Codigo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QProspectCadRev_Codigo: TIntegerField
      FieldName = 'Rev_Codigo'
      Origin = 'Rev_Codigo'
      ProviderFlags = []
    end
    object QProspectCadRev_Nome: TWideStringField
      FieldName = 'Rev_Nome'
      Origin = 'Rev_Nome'
      ProviderFlags = []
      Size = 100
    end
    object QProspectCadUsu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'Usu_Codigo'
      ProviderFlags = []
    end
    object QProspectCadUsu_Nome: TWideStringField
      FieldName = 'Usu_Nome'
      Origin = 'Usu_Nome'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspProspectCad: TDataSetProvider
    DataSet = QProspectCad
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 216
  end
  object QProspectCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Pros_Id,'
      #9'Pros_Codigo,'
      #9'Pros_Nome,'
      #9'Pros_Fantasia,'
      #9'Pros_Docto,'
      #9'Pros_Telefone,'
      '    Pros_Ativo,'
      #9'CASE Pros_Enquadramento'
      '        WHEN '#39'00'#39' THEN '#39'00-N'#227'o Definido'#39
      #9#9'WHEN '#39'01'#39' THEN '#39'01-Simples'#39
      #9#9'WHEN '#39'02'#39' THEN '#39'02-Lucro Presumido'#39
      #9#9'WHEN '#39'03'#39' THEN '#39'03-Lucro Real'#39
      #9'END AS Pros_Enquadramento,'
      #9'Usu_Nome,'
      #9'Rev_Nome'
      'FROM Prospect'
      #9'LEFT JOIN Usuario ON Pros_Usuario = Usu_Id'
      #9'LEFT JOIN Revenda ON Pros_Revenda = Rev_Id ')
    Left = 200
    Top = 216
  end
  object spProspect: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'Prospect_sp_IU'
    Left = 144
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Nome'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = '@Fantasia'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 7
        Name = '@Docto'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 8
        Name = '@Enquadramento'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 9
        Name = '@Endereco'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 10
        Name = '@Telefone'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 11
        Name = '@Contato'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 12
        Name = '@IdUsuario'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@IdRevenda'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@Ativo'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object dspProspectCons: TDataSetProvider
    DataSet = QProspectCons
    Left = 248
    Top = 216
  end
  object QProspectEmail: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      #9'ProsEm_Id,'
      #9'ProsEm_Prospect,'
      #9'ProsEm_Email,'
      #9'ProsEm_Descricao'
      'FROM Prospect_Email'
      #9'WHERE ProsEm_Prospect = :IdProspect')
    Left = 40
    Top = 264
    ParamData = <
      item
        Name = 'IDPROSPECT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QProspectEmailProsEm_Id: TFDAutoIncField
      FieldName = 'ProsEm_Id'
      Origin = 'ProsEm_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QProspectEmailProsEm_Prospect: TIntegerField
      FieldName = 'ProsEm_Prospect'
      Origin = 'ProsEm_Prospect'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QProspectEmailProsEm_Email: TStringField
      FieldName = 'ProsEm_Email'
      Origin = 'ProsEm_Email'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QProspectEmailProsEm_Descricao: TStringField
      FieldName = 'ProsEm_Descricao'
      Origin = 'ProsEm_Descricao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object dspProspectEmail: TDataSetProvider
    DataSet = QProspectEmail
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 264
  end
  object spProspectEmail: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'ProspectEmail_sp_IU'
    Left = 144
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IdProspect'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Email'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = '@Descricao'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
  end
  object QOrcamentoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Orc_Data,'
      #9'Orc_Id,'
      #9'Orc_Numero,'
      #9'Orc_Observacao,'
      #9'Orc_ObservacaoEmail,'
      #9'Orc_Prospect,'
      #9'Orc_Usuario,'
      '    Orc_Cliente,'
      '    Orc_Situacao,'
      #9'Orc_FormaPagto,'
      '    Orc_RazaoSocial,'
      '    Orc_Fantasia,'
      '    Orc_Endereco,'
      '    Orc_Telefone,'
      '    Orc_Contato,'
      '    Orc_Dcto,'
      #9'Orc_Tipo,'
      '    Orc_SubTipo,'
      '    Orc_EmailEnviado,'
      '    Orc_DataSituacao,'
      #9'Orc_Logradouro,'
      #9'Orc_Bairro,'
      #9'Orc_CEP,'
      #9'Orc_Cidade,'
      #9'Orc_Fone1,'
      #9'Orc_Fone2,'
      #9'Orc_Celular,'
      #9'Orc_FoneOutro,'
      #9'Orc_ContatoFinanceiro,'
      #9'Orc_ContatoFinanceiroFone,'
      #9'Orc_ContatoCompraVenda,'
      #9'Orc_ContatoCompraVendaFone,'
      #9'Orc_IE,'
      #9'Orc_RepreLegal,'
      #9'Orc_RepreLegalCPF,'
      '        Orc_Enquadramento,'
      #9'Pros_Codigo,'
      #9'Pros_Nome,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      '        Cli_Codigo,'
      '        Cli_Nome,'
      #9'Fpg_Codigo,'
      #9'Fpg_Nome,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Cid_Codigo,'
      #9'Cid_Nome,'
      #9'Cid_UF'
      'FROM Orcamento'
      #9'LEFT JOIN Prospect ON Orc_Prospect = Pros_Id'
      #9'LEFT JOIN Usuario ON Orc_Usuario = Usu_Id'
      #9'LEFT JOIN Cliente ON Orc_Cliente = Cli_Id'
      #9'LEFT JOIN FormaPagto ON Orc_FormaPagto = Fpg_Id'
      #9'LEFT JOIN Tipo On Orc_Tipo = Tip_Id'
      #9'LEFT JOIN Cidade ON Orc_Cidade = Cid_Id'
      'WHERE Orc_Id = :Id')
    Left = 40
    Top = 312
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoCad: TDataSetProvider
    DataSet = QOrcamentoCad
    Left = 96
    Top = 312
  end
  object spOrcamento: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'dbo.Orcamento_sp_IU'
    Left = 144
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Numero'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Data'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@IdUsuario'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@IdProspect'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Obs'
        DataType = ftMemo
        ParamType = ptInput
        Size = 2147483647
      end
      item
        Position = 9
        Name = '@ObsEmail'
        DataType = ftMemo
        ParamType = ptInput
        Size = 2147483647
      end
      item
        Position = 10
        Name = '@IdCliente'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Situacao'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@IdFormaPagto'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@RazaoSocial'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 14
        Name = '@Fantasia'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 15
        Name = '@Endereco'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 16
        Name = '@Telefone'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 17
        Name = '@Contato'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 18
        Name = '@Dcto'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 19
        Name = '@IdTipo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@SubTipo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@EmailEnviado'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 22
        Name = '@DataSituacao'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 23
        Name = '@Logradouro'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 24
        Name = '@Bairro'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 25
        Name = '@CEP'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 26
        Name = '@IdCidade'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 27
        Name = '@Fone1'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 28
        Name = '@Fone2'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 29
        Name = '@Celular'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 30
        Name = '@FoneOutro'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 31
        Name = '@ContatoFinanceiro'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end
      item
        Position = 32
        Name = '@ContatoFinanceiroFone'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 33
        Name = '@ContatoCompraVenda'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end
      item
        Position = 34
        Name = '@ContatoCompraVendaFone'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 35
        Name = '@IE'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 36
        Name = '@RepreLegal'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end
      item
        Position = 37
        Name = '@RepreLegalCPF'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 38
        Name = '@Enquadramento'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 39
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QOrcamentoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Orc_Data,'
      #9'Orc_Id,'
      #9'Orc_Numero,'
      '        Orc_Situacao,'
      '        Orc_EmailEnviado,'
      #9'Pros_Nome,'
      '        Orc_RazaoSocial,'
      #9'Usu_Nome,'
      #9'Cli_Nome'
      'FROM Orcamento'
      #9'LEFT JOIN Prospect ON Orc_Prospect = Pros_Id'
      #9'LEFT JOIN Usuario ON Orc_Usuario = Usu_Id'
      '        LEFT JOIN Cliente ON Orc_Cliente = Cli_Id')
    Left = 192
    Top = 312
  end
  object dspOrcamentoCons: TDataSetProvider
    DataSet = QOrcamentoCons
    Left = 240
    Top = 312
  end
  object QOrcamentoItemCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcIte_Descricao,'
      #9'OrcIte_Id,'
      #9'OrcIte_Orcamento,'
      #9'OrcIte_Produto,'
      #9'OrcIte_Status,'
      #9'OrcIte_Tipo,'
      #9'OrcIte_ValorDescImpl,'
      #9'OrcIte_ValorDescMensal,'
      #9'OrcIte_ValorLicencaImpl,'
      #9'OrcIte_ValorLicencaMensal,'
      #9'Prod_Codigo,'
      #9'Prod_Nome,'
      #9'Sta_Codigo,'
      #9'Sta_Nome,'
      #9'Tip_Codigo,'
      #9'Tip_Nome'
      'FROM Orcamento_Item'
      #9'INNER JOIN Produto ON OrcIte_Produto = Prod_Id'
      #9'LEFT JOIN Status ON OrcIte_Status = Sta_Id'
      #9'LEFT JOIN Tipo ON OrcIte_Tipo = Tip_Id'
      'WHERE OrcIte_Id = :Id')
    Left = 40
    Top = 360
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoItemCad: TDataSetProvider
    DataSet = QOrcamentoItemCad
    Left = 96
    Top = 360
  end
  object spOrcamentoItem: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'Orcamento_Item_sp_IU'
    Left = 144
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IdOrcamento'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@IdProduto'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Descricao'
        DataType = ftString
        ParamType = ptInput
        Size = 1000
      end
      item
        Position = 7
        Name = '@ValorLicencaImpl'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@ValorDescImpl'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@ValorLicencaMensal'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@ValorDescMensal'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@IdTipo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@IdStatus'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QOrcamentoItemCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcIte_Descricao,'
      #9'OrcIte_Id,'
      #9'OrcIte_Orcamento,'
      #9'OrcIte_Produto,'
      #9'OrcIte_Status,'
      #9'OrcIte_Tipo,'
      #9'OrcIte_ValorDescImpl,'
      #9'OrcIte_ValorDescMensal,'
      #9'OrcIte_ValorLicencaImpl,'
      #9'OrcIte_ValorLicencaMensal,'
      #9'Prod_Codigo,'
      #9'Prod_Nome,'
      #9'Sta_Codigo,'
      #9'Sta_Nome,'
      #9'Tip_Codigo,'
      #9'Tip_Nome'
      'FROM Orcamento_Item'
      #9'INNER JOIN Produto ON OrcIte_Produto = Prod_Id'
      #9'LEFT JOIN Status ON OrcIte_Status = Sta_Id'
      #9'LEFT JOIN Tipo ON OrcIte_Tipo = Tip_Id'
      'WHERE OrcIte_Orcamento = :Id')
    Left = 192
    Top = 360
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoItemCons: TDataSetProvider
    DataSet = QOrcamentoItemCons
    Left = 240
    Top = 360
  end
  object QOrcamentoItemModuloCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcIteMod_Descricao,'
      #9'OrcIteMod_Id,'
      #9'OrcIteMod_Modulo,'
      #9'OrcIteMod_OrcamentoItem,'
      #9'Mod_Codigo,'
      #9'Mod_Nome'
      'FROM Orcamento_Item_Modulo'
      #9'INNER JOIN Modulo ON OrcIteMod_Modulo = Mod_id'
      'WHERE OrcIteMod_Id = :Id')
    Left = 40
    Top = 408
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoItemModuloCad: TDataSetProvider
    DataSet = QOrcamentoItemModuloCad
    Left = 96
    Top = 408
  end
  object spOrcamentoItemModulo: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'Orcamento_Item_Modulo_sp_IU'
    Left = 144
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IdOrcamentoItem'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@IdModulo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Descricao'
        DataType = ftString
        ParamType = ptInput
        Size = 1000
      end
      item
        Position = 7
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QOrcamentoItemModuloCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcIteMod_Id,'
      '        OrcIteMod_Descricao,'
      #9'OrcIteMod_Modulo,'
      #9'OrcIteMod_OrcamentoItem,'
      #9'Mod_Codigo,'
      #9'Mod_Nome'
      'FROM Orcamento_Item_Modulo'
      
        #9'INNER JOIN Orcamento_Item ON OrcIteMod_OrcamentoItem = OrcIte_I' +
        'd'
      #9'INNER JOIN Orcamento ON OrcIte_Orcamento = Orc_Id'
      #9'INNER JOIN Modulo ON OrcIteMod_Modulo = Mod_id'
      'WHERE Orc_Id = :IdOrcamento'
      ''
      '')
    Left = 192
    Top = 408
    ParamData = <
      item
        Name = 'IDORCAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoItemModuloCons: TDataSetProvider
    DataSet = QOrcamentoItemModuloCons
    Left = 240
    Top = 408
  end
  object QOrcamentoOcorrenciaCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcOco_Data,'
      #9'OrcOco_Descricao,'
      #9'OrcOco_Id,'
      #9'OrcOco_Orcamento,'
      #9'OrcOco_Usuario'
      'FROM Orcamento_Ocorrencia'
      #9'INNER JOIN Usuario ON OrcOco_Usuario = Usu_Id'
      'WHERE OrcOco_Id = :Id')
    Left = 40
    Top = 456
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoOcorrenciaCad: TDataSetProvider
    DataSet = QOrcamentoOcorrenciaCad
    Left = 96
    Top = 456
  end
  object spOrcamentoOcorrencia: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'Orcamento_Ocorrencia_sp_IU'
    Left = 144
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IdOrcamento'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Data'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@IdUsuario'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Descricao'
        DataType = ftString
        ParamType = ptInput
        Size = 1000
      end
      item
        Position = 8
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QOrcamentoOcorrenciaCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcOco_Data,'
      #9'OrcOco_Descricao,'
      #9'OrcOco_Id,'
      #9'OrcOco_Orcamento,'
      #9'OrcOco_Usuario,'
      #9'Usu_Codigo,'
      #9'Usu_Nome'
      'FROM Orcamento_Ocorrencia'
      #9'INNER JOIN Usuario On OrcOco_Usuario = Usu_Id'
      'WHERE OrcOco_Orcamento = :IdOrcamento')
    Left = 192
    Top = 456
    ParamData = <
      item
        Name = 'IDORCAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoOcorrenciaCons: TDataSetProvider
    DataSet = QOrcamentoOcorrenciaCons
    Left = 240
    Top = 456
  end
  object QOrcamentoVectCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcVect_Data,'
      #9'OrcVect_Descricao,'
      #9'OrcVect_Id,'
      #9'OrcVect_Orcamento,'
      #9'OrcVect_Parcela,'
      #9'OrcVect_Valor'
      'FROM Orcamento_Vectos'
      #9'WHERE OrcVect_Id = :Id')
    Left = 40
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoVectCad: TDataSetProvider
    DataSet = QOrcamentoVectCad
    Left = 96
    Top = 504
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 264
  end
  object spOrcamentoVect: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'Orcamento_Vectos_sp_IU'
    Left = 144
    Top = 504
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IdOrcamento'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Parcela'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Data'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Valor'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Descricao'
        DataType = ftString
        ParamType = ptInput
        Size = 1000
      end
      item
        Position = 9
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QOrcamentoVectCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcVect_Data,'
      #9'OrcVect_Descricao,'
      #9'OrcVect_Id,'
      #9'OrcVect_Orcamento,'
      #9'OrcVect_Parcela,'
      #9'OrcVect_Valor'
      'FROM Orcamento_Vectos'
      #9'WHERE OrcVect_Orcamento = :IdOrcamento')
    Left = 192
    Top = 504
    ParamData = <
      item
        Name = 'IDORCAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoVectCon: TDataSetProvider
    DataSet = QOrcamentoVectCons
    Left = 240
    Top = 504
  end
  object QObservacaoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Obs_Ativo,'
      #9'Obs_Codigo,'
      #9'Obs_Descricao,'
      #9'Obs_Id,'
      #9'Obs_Nome,'
      #9'Obs_Padrao,'
      #9'Obs_Programa,'
      '  Obs_ObsEmail,'
      '  Obs_EmailPadrao'
      'FROM Observacao'
      #9'WHERE Obs_Id = :Id')
    Left = 360
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspObservacaoCad: TDataSetProvider
    DataSet = QObservacaoCad
    Left = 424
    Top = 16
  end
  object QObservacaoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Obs_Ativo,'
      #9'Obs_Codigo,'
      #9'Obs_Descricao,'
      #9'Obs_Id,'
      #9'Obs_Nome,'
      #9'Obs_Programa'
      'FROM Observacao'
      '')
    Left = 512
    Top = 16
  end
  object dspObservacaoCons: TDataSetProvider
    DataSet = QObservacaoCons
    Left = 576
    Top = 16
  end
  object spObservacao: TFDStoredProc
    Connection = DM.Conexao
    StoredProcName = 'Observacao_sp_IU'
    Left = 624
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IU'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = '@Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Descricao'
        DataType = ftMemo
        ParamType = ptInput
        Size = 2147483647
      end
      item
        Position = 6
        Name = '@Ativo'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Nome'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 8
        Name = '@Padrao'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@Programa'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@RetornoId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QFormaPagtoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Fpg_Ativo,'
      #9'Fpg_Codigo,'
      #9'Fpg_Id,'
      #9'Fpg_Nome'
      'FROM FormaPagto'
      #9'WHERE Fpg_Id = :Id')
    Left = 360
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspFormaPagtoCad: TDataSetProvider
    DataSet = QFormaPagtoCad
    Left = 424
    Top = 64
  end
  object QFormaPagtoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Fpg_Id,'
      #9'Fpg_Ativo,'
      #9'Fpg_Codigo,'
      #9'Fpg_Nome'
      'FROM FormaPagto')
    Left = 512
    Top = 64
  end
  object dspFormaPagtoCons: TDataSetProvider
    DataSet = QFormaPagtoCons
    Left = 576
    Top = 64
  end
  object QFormaPagtoItemCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'SELECT FpgIte_Id, FpgIte_Dias, FpgIte_Obs, FpgIte_FormaPagto FRO' +
        'M FormaPagto_Item ')
    Left = 360
    Top = 113
  end
  object dspFormaPagtoItemCons: TDataSetProvider
    DataSet = QFormaPagtoItemCons
    Left = 424
    Top = 112
  end
  object QOrcamentoImprimir: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Orc_Id,'
      #9'Orc_Numero,'
      #9'Orc_Data,'
      #9'Orc_Usuario AS Orc_IdUsuario,'
      #9'Orc_Prospect AS Orc_IdProspect,'
      #9'Orc_Observacao,'
      #9'Orc_ObservacaoEmail,'
      #9'Orc_Cliente As Orc_IdCliente,'
      #9'Orc_Situacao,'
      #9'Orc_FormaPagto AS Orc_IdFormaPagto,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Cli_Codigo,'
      #9'Orc_RazaoSocial,'
      #9'Orc_Fantasia,'
      #9'Orc_Contato,'
      #9'Orc_Dcto,'
      #9'Orc_Endereco,'
      #9'Orc_Telefone,'
      '  Orc_Logradouro,'
      '  Orc_Bairro,'
      '  Orc_CEP,'
      #9'Orc_Fone1,'
      #9'Orc_Fone2,'
      #9'Orc_Celular,'
      #9'Orc_FoneOutro,'
      #9'Orc_ContatoFinanceiro,'
      #9'Orc_ContatoFinanceiroFone,'
      #9'Orc_ContatoCompraVenda,'
      #9'Orc_ContatoCompraVendaFone,'
      #9'Orc_IE,'
      #9'Orc_RepreLegal,'
      #9'Orc_RepreLegalCPF,'
      #9'OrcIte_Id,'
      #9'OrcIte_Orcamento,'
      #9'OrcIte_Produto AS Orc_IdProduto,'
      #9'OrcIte_Descricao,'
      #9'OrcIte_ValorLicencaImpl,'
      #9'OrcIte_ValorDescImpl,'
      #9'OrcIte_ValorLicencaMensal,'
      #9'OrcIte_ValorDescMensal,'
      #9'OrcIte_Tipo AS Orc_IdTipo,'
      #9'OrcIte_Status AS Orc_IdStatus,'
      #9'(OrcIte_ValorLicencaImpl - OrcIte_ValorDescImpl) AS TotalItem,'
      #9'Prod_Codigo,'
      #9'Prod_Nome,'
      #9'Sta_Codigo,'
      #9'Sta_Nome,'
      #9'Cid_Codigo,'
      #9'Cid_Nome,'
      #9'Cid_UF'
      'FROM Orcamento'
      #9'INNER JOIN Usuario ON Orc_Usuario = Usu_Id'
      #9'INNER JOIN Orcamento_Item On Orc_Id = OrcIte_Orcamento'
      #9'INNER JOIN Produto On OrcIte_Produto = Prod_Id'
      #9'LEFT JOIN Cliente ON Orc_Cliente = Cli_Id'
      #9'LEFT JOIN Tipo ON OrcIte_Tipo = Tip_Id'
      #9'LEFT JOIN Status ON OrcIte_Status = Sta_Id'
      #9'LEFT JOIN Cidade ON Orc_Cidade = Cid_Id'
      'WHERE Orc_Id = :Id')
    Left = 360
    Top = 160
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QOrcamentoImprimirOrc_Id: TFDAutoIncField
      FieldName = 'Orc_Id'
      Origin = 'Orc_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QOrcamentoImprimirOrc_Numero: TIntegerField
      FieldName = 'Orc_Numero'
      Origin = 'Orc_Numero'
      Required = True
    end
    object QOrcamentoImprimirOrc_Data: TDateField
      FieldName = 'Orc_Data'
      Origin = 'Orc_Data'
      Required = True
    end
    object QOrcamentoImprimirOrc_IdUsuario: TIntegerField
      FieldName = 'Orc_IdUsuario'
      Origin = 'Orc_IdUsuario'
      Required = True
    end
    object QOrcamentoImprimirOrc_IdProspect: TIntegerField
      FieldName = 'Orc_IdProspect'
      Origin = 'Orc_IdProspect'
    end
    object QOrcamentoImprimirOrc_Observacao: TMemoField
      FieldName = 'Orc_Observacao'
      Origin = 'Orc_Observacao'
      BlobType = ftMemo
      Size = 2147483647
    end
    object QOrcamentoImprimirOrc_ObservacaoEmail: TMemoField
      FieldName = 'Orc_ObservacaoEmail'
      Origin = 'Orc_ObservacaoEmail'
      BlobType = ftMemo
      Size = 2147483647
    end
    object QOrcamentoImprimirOrc_IdCliente: TIntegerField
      FieldName = 'Orc_IdCliente'
      Origin = 'Orc_IdCliente'
    end
    object QOrcamentoImprimirOrc_Situacao: TIntegerField
      FieldName = 'Orc_Situacao'
      Origin = 'Orc_Situacao'
    end
    object QOrcamentoImprimirOrc_IdFormaPagto: TIntegerField
      FieldName = 'Orc_IdFormaPagto'
      Origin = 'Orc_IdFormaPagto'
    end
    object QOrcamentoImprimirUsu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'Usu_Codigo'
      Required = True
    end
    object QOrcamentoImprimirUsu_Nome: TWideStringField
      FieldName = 'Usu_Nome'
      Origin = 'Usu_Nome'
      Required = True
      Size = 100
    end
    object QOrcamentoImprimirCli_Codigo: TIntegerField
      FieldName = 'Cli_Codigo'
      Origin = 'Cli_Codigo'
    end
    object QOrcamentoImprimirOrcIte_Id: TFDAutoIncField
      FieldName = 'OrcIte_Id'
      Origin = 'OrcIte_Id'
      ReadOnly = True
    end
    object QOrcamentoImprimirOrcIte_Orcamento: TIntegerField
      FieldName = 'OrcIte_Orcamento'
      Origin = 'OrcIte_Orcamento'
      Required = True
    end
    object QOrcamentoImprimirOrc_IdProduto: TIntegerField
      FieldName = 'Orc_IdProduto'
      Origin = 'Orc_IdProduto'
      Required = True
    end
    object QOrcamentoImprimirOrcIte_Descricao: TStringField
      FieldName = 'OrcIte_Descricao'
      Origin = 'OrcIte_Descricao'
      Size = 1000
    end
    object QOrcamentoImprimirOrcIte_ValorLicencaImpl: TCurrencyField
      FieldName = 'OrcIte_ValorLicencaImpl'
      Origin = 'OrcIte_ValorLicencaImpl'
    end
    object QOrcamentoImprimirOrcIte_ValorDescImpl: TCurrencyField
      FieldName = 'OrcIte_ValorDescImpl'
      Origin = 'OrcIte_ValorDescImpl'
    end
    object QOrcamentoImprimirOrcIte_ValorLicencaMensal: TCurrencyField
      FieldName = 'OrcIte_ValorLicencaMensal'
      Origin = 'OrcIte_ValorLicencaMensal'
    end
    object QOrcamentoImprimirOrcIte_ValorDescMensal: TCurrencyField
      FieldName = 'OrcIte_ValorDescMensal'
      Origin = 'OrcIte_ValorDescMensal'
    end
    object QOrcamentoImprimirOrc_IdTipo: TIntegerField
      FieldName = 'Orc_IdTipo'
      Origin = 'Orc_IdTipo'
    end
    object QOrcamentoImprimirOrc_IdStatus: TIntegerField
      FieldName = 'Orc_IdStatus'
      Origin = 'Orc_IdStatus'
    end
    object QOrcamentoImprimirProd_Codigo: TIntegerField
      FieldName = 'Prod_Codigo'
      Origin = 'Prod_Codigo'
      Required = True
    end
    object QOrcamentoImprimirProd_Nome: TWideStringField
      FieldName = 'Prod_Nome'
      Origin = 'Prod_Nome'
      Required = True
      Size = 100
    end
    object QOrcamentoImprimirSta_Codigo: TIntegerField
      FieldName = 'Sta_Codigo'
      Origin = 'Sta_Codigo'
    end
    object QOrcamentoImprimirSta_Nome: TWideStringField
      FieldName = 'Sta_Nome'
      Origin = 'Sta_Nome'
      Size = 50
    end
    object QOrcamentoImprimirTotalItem: TCurrencyField
      FieldName = 'TotalItem'
      Origin = 'TotalItem'
      ReadOnly = True
    end
    object QOrcamentoImprimirOrc_RazaoSocial: TStringField
      FieldName = 'Orc_RazaoSocial'
      Origin = 'Orc_RazaoSocial'
      Size = 100
    end
    object QOrcamentoImprimirOrc_Fantasia: TStringField
      FieldName = 'Orc_Fantasia'
      Origin = 'Orc_Fantasia'
      Size = 100
    end
    object QOrcamentoImprimirOrc_Contato: TStringField
      FieldName = 'Orc_Contato'
      Origin = 'Orc_Contato'
      Size = 200
    end
    object QOrcamentoImprimirOrc_Dcto: TStringField
      FieldName = 'Orc_Dcto'
      Origin = 'Orc_Dcto'
      Size = 25
    end
    object QOrcamentoImprimirOrc_Endereco: TStringField
      FieldName = 'Orc_Endereco'
      Origin = 'Orc_Endereco'
      Size = 200
    end
    object QOrcamentoImprimirOrc_Telefone: TStringField
      FieldName = 'Orc_Telefone'
      Origin = 'Orc_Telefone'
      Size = 100
    end
    object QOrcamentoImprimirOrc_Fone1: TStringField
      FieldName = 'Orc_Fone1'
      Origin = 'Orc_Fone1'
    end
    object QOrcamentoImprimirOrc_Fone2: TStringField
      FieldName = 'Orc_Fone2'
      Origin = 'Orc_Fone2'
    end
    object QOrcamentoImprimirOrc_Celular: TStringField
      FieldName = 'Orc_Celular'
      Origin = 'Orc_Celular'
    end
    object QOrcamentoImprimirOrc_FoneOutro: TStringField
      FieldName = 'Orc_FoneOutro'
      Origin = 'Orc_FoneOutro'
    end
    object QOrcamentoImprimirOrc_ContatoFinanceiro: TStringField
      FieldName = 'Orc_ContatoFinanceiro'
      Origin = 'Orc_ContatoFinanceiro'
      Size = 60
    end
    object QOrcamentoImprimirOrc_ContatoFinanceiroFone: TStringField
      FieldName = 'Orc_ContatoFinanceiroFone'
      Origin = 'Orc_ContatoFinanceiroFone'
    end
    object QOrcamentoImprimirOrc_ContatoCompraVenda: TStringField
      FieldName = 'Orc_ContatoCompraVenda'
      Origin = 'Orc_ContatoCompraVenda'
      Size = 60
    end
    object QOrcamentoImprimirOrc_ContatoCompraVendaFone: TStringField
      FieldName = 'Orc_ContatoCompraVendaFone'
      Origin = 'Orc_ContatoCompraVendaFone'
    end
    object QOrcamentoImprimirOrc_IE: TStringField
      FieldName = 'Orc_IE'
      Origin = 'Orc_IE'
      Size = 25
    end
    object QOrcamentoImprimirOrc_RepreLegal: TStringField
      FieldName = 'Orc_RepreLegal'
      Origin = 'Orc_RepreLegal'
      Size = 60
    end
    object QOrcamentoImprimirOrc_RepreLegalCPF: TStringField
      FieldName = 'Orc_RepreLegalCPF'
      Origin = 'Orc_RepreLegalCPF'
    end
    object QOrcamentoImprimirCid_Codigo: TIntegerField
      FieldName = 'Cid_Codigo'
      Origin = 'Cid_Codigo'
    end
    object QOrcamentoImprimirCid_Nome: TStringField
      FieldName = 'Cid_Nome'
      Origin = 'Cid_Nome'
      Size = 60
    end
    object QOrcamentoImprimirCid_UF: TStringField
      FieldName = 'Cid_UF'
      Origin = 'Cid_UF'
      FixedChar = True
      Size = 2
    end
    object QOrcamentoImprimirOrc_Logradouro: TStringField
      FieldName = 'Orc_Logradouro'
      Origin = 'Orc_Logradouro'
      Size = 80
    end
    object QOrcamentoImprimirOrc_Bairro: TStringField
      FieldName = 'Orc_Bairro'
      Origin = 'Orc_Bairro'
      Size = 50
    end
    object QOrcamentoImprimirOrc_CEP: TStringField
      FieldName = 'Orc_CEP'
      Origin = 'Orc_CEP'
      Size = 15
    end
  end
  object dspOrcamentoImprimir: TDataSetProvider
    DataSet = QOrcamentoImprimir
    Left = 424
    Top = 160
  end
  object QOrcamentoOcorrenciaImp: TFDQuery
    IndexFieldNames = 'OrcOco_Orcamento'
    MasterSource = dsPonteOrcamentoOcorr
    MasterFields = 'Orc_Id'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcOco_Data,'
      #9'OrcOco_Descricao,'
      #9'OrcOco_Id,'
      #9'OrcOco_Orcamento,'
      #9'OrcOco_Usuario,'
      #9'Usu_Codigo,'
      #9'Usu_Nome'
      'FROM Orcamento_Ocorrencia'
      #9'INNER JOIN Usuario On OrcOco_Usuario = Usu_Id'
      'WHERE OrcOco_Orcamento = :Orc_Id')
    Left = 528
    Top = 160
    ParamData = <
      item
        Name = 'ORC_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QOrcamentoOcorrenciaImpOrcOco_Data: TDateField
      FieldName = 'OrcOco_Data'
      Origin = 'OrcOco_Data'
      Required = True
    end
    object QOrcamentoOcorrenciaImpOrcOco_Descricao: TStringField
      FieldName = 'OrcOco_Descricao'
      Origin = 'OrcOco_Descricao'
      Size = 1000
    end
    object QOrcamentoOcorrenciaImpOrcOco_Id: TFDAutoIncField
      FieldName = 'OrcOco_Id'
      Origin = 'OrcOco_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QOrcamentoOcorrenciaImpOrcOco_Orcamento: TIntegerField
      FieldName = 'OrcOco_Orcamento'
      Origin = 'OrcOco_Orcamento'
      Required = True
    end
    object QOrcamentoOcorrenciaImpOrcOco_Usuario: TIntegerField
      FieldName = 'OrcOco_Usuario'
      Origin = 'OrcOco_Usuario'
      Required = True
    end
    object QOrcamentoOcorrenciaImpUsu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'Usu_Codigo'
      Required = True
    end
    object QOrcamentoOcorrenciaImpUsu_Nome: TWideStringField
      FieldName = 'Usu_Nome'
      Origin = 'Usu_Nome'
      Required = True
      Size = 100
    end
  end
  object dsPonteOrcamentoOcorr: TDataSource
    DataSet = QOrcamentoImprimir
    Left = 472
    Top = 160
  end
  object dspOrcamentoOcorrenciaImp: TDataSetProvider
    DataSet = QOrcamentoOcorrenciaImp
    Left = 568
    Top = 160
  end
  object QOrcamentoVenctImp: TFDQuery
    IndexFieldNames = 'OrcVect_Orcamento'
    MasterSource = dsPonteOrcamentoOcorr
    MasterFields = 'Orc_Id'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      #9'OrcVect_Data,'
      #9'OrcVect_Descricao,'
      #9'OrcVect_Id,'
      #9'OrcVect_Orcamento,'
      #9'OrcVect_Parcela,'
      #9'OrcVect_Valor'
      'FROM Orcamento_Vectos'
      #9'WHERE OrcVect_Orcamento = :Orc_Id')
    Left = 360
    Top = 208
    ParamData = <
      item
        Name = 'ORC_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoVenctImp: TDataSetProvider
    DataSet = QOrcamentoVenctImp
    Left = 424
    Top = 208
  end
  object QOrcamentoItemModuloImp: TFDQuery
    IndexFieldNames = 'OrcIteMod_OrcamentoItem'
    MasterSource = dsPonteOrcamentoOcorr
    MasterFields = 'OrcIte_Id'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'OrcIteMod_Descricao,'
      #9'OrcIteMod_Id,'
      #9'OrcIteMod_Modulo,'
      #9'OrcIteMod_OrcamentoItem,'
      #9'Mod_Codigo,'
      #9'Mod_Nome'
      'FROM Orcamento_Item_Modulo'
      #9'INNER JOIN Modulo ON OrcIteMod_Modulo = Mod_Id'
      'WHERE OrcIteMod_OrcamentoItem = :OrcIte_Id')
    Left = 528
    Top = 209
    ParamData = <
      item
        Name = 'ORCITE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspOrcamentoItemModuloImp: TDataSetProvider
    DataSet = QOrcamentoItemModuloImp
    Left = 568
    Top = 208
  end
  object QModeloRelatorioCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'ModR_Id,'
      #9'ModR_Codigo,'
      #9'ModR_Descricao,'
      #9'ModR_Arquivo,'
      #9'ModR_Revenda,'
      #9'Rev_Codigo,'
      #9'Rev_Nome'
      'FROM Modelo_Relatorio'
      #9'LEFT JOIN Revenda ON ModR_Revenda = Rev_Id'
      #9'WHERE ModR_Id = :Id')
    Left = 360
    Top = 304
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QModeloRelatorioCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'ModR_Id,'
      #9'ModR_Codigo,'
      #9'ModR_Descricao,'
      #9'ModR_Arquivo'
      'FROM Modelo_Relatorio')
    Left = 472
    Top = 304
  end
  object dspModeloRelatorioCad: TDataSetProvider
    DataSet = QModeloRelatorioCad
    Left = 424
    Top = 304
  end
  object dspModeloRelatorioCons: TDataSetProvider
    DataSet = QModeloRelatorioCons
    Left = 512
    Top = 304
  end
  object QRamalCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Ram_Id,'
      '  Ram_Departamento'
      'FROM Ramal'
      '  WHERE Ram_Id = :Id')
    Left = 360
    Top = 264
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QRamalCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT Ram_Id, Ram_Departamento FROM Ramal')
    Left = 472
    Top = 264
  end
  object dspRamalCad: TDataSetProvider
    DataSet = QRamalCad
    Left = 424
    Top = 264
  end
  object dspRamalCons: TDataSetProvider
    DataSet = QRamalCons
    Left = 512
    Top = 264
  end
  object QRamalItens: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'RamIt_Id,'
      #9'RamIt_Nome,'
      #9'RamIt_Numero,'
      '        RamIt_Ramal'
      'FROM Ramal_Itens'
      #9'WHERE RamIt_Ramal = :IdRamal')
    Left = 568
    Top = 264
    ParamData = <
      item
        Name = 'IDRAMAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspRamalItens: TDataSetProvider
    DataSet = QRamalItens
    Left = 608
    Top = 264
  end
  object QRamalRelatorio: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Ram_Id,'
      '  Ram_Departamento,'
      '  RamIt_Numero,'
      '  RamIt_Nome'
      'FROM Ramal'
      #9'INNER JOIN Ramal_Itens ON Ram_Id = RamIt_Ramal'
      'ORDER BY Ram_Id, RamIt_Numero')
    Left = 568
    Top = 304
  end
  object dspRamalRelatorio: TDataSetProvider
    DataSet = QRamalRelatorio
    Left = 608
    Top = 304
  end
  object QOrcamentoRelatorio1: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '        Orc'#31'_Id,'
      #9'Orc_Data,'
      '  Orc_DataSituacao,'
      #9'Orc_RazaoSocial,'
      #9'CASE Orc_Situacao'
      #9#9'WHEN 1 THEN '#39'Em Analise'#39
      #9#9'WHEN 2 THEN '#39'Aprovado'#39
      #9#9'WHEN 3 THEN '#39'N'#227'o Aprovado'#39
      '                WHEN 4 THEN '#39'Aprovado'#39
      #9'END AS Situacao,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      
        #9'SUM(OrcIte_ValorLicencaImpl) - SUM(OrcIte_ValorDescImpl) AS Tot' +
        'al_Orc,'
      
        #9'SUM(OrcIte_ValorLicencaMensal) - SUM(OrcIte_ValorDescMensal) AS' +
        ' Total_Mensal'
      'FROM Orcamento'
      #9'INNER JOIN Orcamento_Item ON Orc_Id = OrcIte_Orcamento'
      #9'INNER JOIN Usuario ON Orc_Usuario = Usu_Id'
      #9'LEFT JOIN Tipo ON Orc_Tipo = Tip_Id'
      'GROUP BY'
      '        Orc_Id,'
      #9'Orc_Data,'
      '  Orc_DataSituacao,'
      #9'Orc_RazaoSocial,'
      #9'Orc_Tipo,'
      #9'Orc_Situacao,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Usu_Codigo,'
      #9'Usu_Nome'
      '')
    Left = 360
    Top = 352
  end
  object dspOrcamentoRelatorio1: TDataSetProvider
    DataSet = QOrcamentoRelatorio1
    Left = 424
    Top = 352
  end
  object QOrcamentoGraficoTipo: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Count(Orc_id) AS Qtde'
      'FROM Orcamento'
      #9'LEFT JOIN Tipo ON Orc_Tipo = Tip_Id'
      'GROUP BY'
      #9'tip_Codigo,'
      #9'Tip_Nome')
    Left = 360
    Top = 400
  end
  object dspOrcamentoGraficoTipo: TDataSetProvider
    DataSet = QOrcamentoGraficoTipo
    Left = 424
    Top = 400
  end
  object QOrcamentoGraficoUsuario: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'CASE Orc_Situacao'
      #9#9'WHEN  1 THEN '#39'Em Analise'#39
      #9#9'WHEN  2 THEN '#39'Aprovado'#39
      #9#9'WHEN  3 THEN '#39'N'#227'o Aprovado'#39
      #9'END AS Situacao,'
      #9'Count(Orc_id) AS Qtde'
      'FROM Orcamento'
      #9'LEFT JOIN Tipo ON Orc_Tipo = Tip_Id'
      'GROUP BY'
      #9'Orc_Situacao'
      '')
    Left = 360
    Top = 456
  end
  object dspOrcamentoGraficoUsuario: TDataSetProvider
    DataSet = QOrcamentoGraficoUsuario
    Left = 424
    Top = 456
  end
  object QOrcamentoGraficoUsuarioQtde: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Count(Orc_id) AS Qtde'
      'FROM Orcamento'
      #9'LEFT JOIN Usuario ON Orc_Usuario = Usu_Id'
      'GROUP BY'
      #9'Usu_Codigo,'
      #9'Usu_Nome')
    Left = 504
    Top = 352
  end
  object dspOrcamentoGraficoUsuarioQtde: TDataSetProvider
    DataSet = QOrcamentoGraficoUsuarioQtde
    Left = 568
    Top = 352
  end
  object QOrcamentoRelatorio3: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Orc_Id,'
      #9'Orc_Data,'
      '  Orc_DataSituacao,'
      #9'Orc_Situacao,'
      #9'Orc_RazaoSocial,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'OrcNAp_Descricao,'
      
        #9'SUM(OrcIte_ValorLicencaImpl) - SUM(OrcIte_ValorDescImpl) AS Tot' +
        'al_Orc,'
      
        #9'SUM(OrcIte_ValorLicencaMensal) - SUM(OrcIte_ValorDescMensal) AS' +
        ' Total_Mensal'
      'FROM Orcamento'
      #9'INNER JOIN Orcamento_Item ON Orc_Id = OrcIte_Orcamento'
      #9'INNER JOIN Usuario ON Orc_Usuario = Usu_Id'
      #9'LEFT JOIN Orcamento_NaoAprovado ON Orc_Id = OrcNap_Orcamento'
      #9'INNER JOIN Tipo ON OrcNAp_Tipo = Tip_Id'
      'WHERE Orc_Situacao = 3'
      'GROUP BY'
      #9'Orc_Id,'
      #9'Orc_Data,'
      #9'Orc_Situacao,'
      '  Orc_DataSituacao,'
      #9'Orc_RazaoSocial,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'OrcNAp_Descricao')
    Left = 360
    Top = 504
  end
  object dspOrcamentoRelatorio3: TDataSetProvider
    DataSet = QOrcamentoRelatorio3
    Left = 424
    Top = 504
  end
  object QOrcamentoGraficoNaoAprovado: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Count(Orc_id) AS Qtde'
      'FROM Orcamento'
      #9'INNER JOIN Orcamento_NaoAprovado ON Orc_Id = OrcNap_Orcamento'
      #9'INNER JOIN Tipo ON OrcNAp_Tipo = Tip_Id'
      'WHERE Orc_Situacao = 3'
      'GROUP BY'
      #9'tip_Codigo,'
      #9'Tip_Nome')
    Left = 496
    Top = 504
  end
  object dspOrcamentoGraficoNaoAprovado: TDataSetProvider
    DataSet = QOrcamentoGraficoNaoAprovado
    Left = 544
    Top = 504
  end
  object QRecadoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Rec_Id,'
      #9'Rec_data,'
      #9'Rec_Hora,'
      #9'Rec_UsuarioLcto,'
      #9'Rec_Nivel,'
      #9'Rec_Cliente,'
      #9'Rec_RazaoSocial,'
      #9'Rec_Fantasia,'
      #9'Rec_Endereco,'
      #9'Rec_Telefone,'
      #9'Rec_Contato,'
      #9'Rec_UsuarioDestino,'
      #9'Rec_Tipo,'
      #9'Rec_Status,'
      #9'Rec_DescricaoInicial,'
      #9'Rec_DataFinal,'
      #9'Rec_HoraFinal,'
      #9'Rec_DescricaoFinal,'
      #9'UsuLan.Usu_Nome AS NomeUsuarioLcto,'
      #9'UsuDest.Usu_Nome AS NomeUsuarioDest,'
      '  UsuLan.Usu_Codigo AS Usu_CodigoLcto,'
      '  UsuDest.Usu_Codigo AS Usu_CodigoDest,'
      #9'Cli_Codigo,'
      #9'Cli_Nome,'
      #9'Tip_Codigo,'
      #9'Tip_Nome,'
      #9'Sta_Codigo,'
      #9'Sta_Nome'
      'FROM Recado'
      #9'INNER JOIN Usuario UsuLan On Rec_UsuarioLcto = UsuLan.Usu_Id'
      
        #9'INNER JOIN Usuario UsuDest On Rec_UsuarioDestino = UsuDest.Usu_' +
        'Id'
      #9'INNER JOIN Status On Rec_Status = Sta_Id'
      #9'LEFT JOIN Cliente On Rec_Cliente = Cli_Id'
      #9'LEFT JOIN Tipo ON Rec_Tipo = Tip_Id'
      'WHERE Rec_Id = :Id')
    Left = 696
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspRecadoCad: TDataSetProvider
    DataSet = QRecadoCad
    Left = 752
    Top = 16
  end
  object QRecadoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      #9'Rec_Id, '
      #9'UsuLan.Usu_Nome AS NomeUsuarioLcto, '
      #9'Rec_Data, '
      #9'Rec_Hora, '
      #9'Rec_RazaoSocial, '
      #9'Rec_Contato, '
      #9'Rec_Telefone,'
      '  Rec_Nivel,'
      #9'UsuDest.Usu_Nome AS NomeUsuarioDest,'
      '  Sta_Nome'
      'FROM Recado '
      #9'INNER JOIN Usuario UsuLan On Rec_UsuarioLcto = UsuLan.Usu_Id '
      
        #9'INNER JOIN Usuario UsuDest On Rec_UsuarioDestino = UsuDest.Usu_' +
        'Id'
      '  INNER JOIN Status ON Rec_Status = Sta_Id')
    Left = 696
    Top = 72
  end
  object dspRecadoCons: TDataSetProvider
    DataSet = QRecadoCons
    Left = 752
    Top = 72
  end
  object QRecadoQuadro: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9#39'L'#39' AS Tipo,'
      #9'Rec_Id,'
      #9'Rec_Data,'
      #9'Rec_Nivel,'
      #9'Rec_RazaoSocial,'
      #9'Rec_Telefone,'
      '  Rec_Hora,'
      '  Rec_UsuarioLcto,'
      '  Rec_UsuarioDestino,'
      #9'UsuL.Usu_Nome AS UsuarioLcto,'
      #9'UsuD.Usu_Nome AS UsuarioDestino'
      'FROM Recado'
      #9'INNER JOIN Usuario AS UsuL ON Rec_UsuarioLcto = UsuL.Usu_Id'
      #9'INNER JOIN Status ON Rec_Status = Sta_Id'
      '  LEFT JOIN Cliente ON Rec_Cliente = Cli_Id'
      #9'LEFT JOIN Usuario AS UsuD ON Rec_UsuarioDestino = UsuD.Usu_Id'
      'WHERE Rec_DataFinal IS NULL'
      'AND ((Rec_UsuarioLcto = :IdUsuario) OR (:IdUsuario = 0))'
      'AND ((Cli_Revenda = :IdRevenda) OR (:IdRevenda = 0))'
      ''
      'UNION'
      'SELECT'
      #9#39'D'#39' AS Tipo,'
      #9'Rec_Id,'
      #9'Rec_Data,'
      #9'Rec_Nivel,'
      #9'Rec_RazaoSocial,'
      #9'Rec_Telefone,'
      '  Rec_Hora,'
      '  Rec_UsuarioLcto,'
      '  Rec_UsuarioDestino,'
      #9'UsuL.Usu_Nome AS UsuarioLcto,'
      #9'UsuD.Usu_Nome AS UsuarioDestino'
      'FROM Recado'
      #9'INNER JOIN Usuario AS UsuL ON Rec_UsuarioLcto = UsuL.Usu_Id'
      '  INNER JOIN Status ON Rec_Status = Sta_Id'
      '  LEFT JOIN Cliente ON Rec_Cliente = Cli_Id'
      #9'LEFT JOIN Usuario AS UsuD ON Rec_UsuarioDestino = UsuD.Usu_Id'
      ''
      
        '--WHERE Sta_Codigo NOT IN (SELECT COALESCE(Par_Valor,0) FROM Par' +
        'ametros WHERE Par_Codigo = 44)'
      'WHERE Rec_DataFinal IS NULL'
      'AND ((Rec_UsuarioDestino = :IdUsuario) OR (:IdUsuario = 0))'
      'AND ((Cli_Revenda = :IdRevenda) OR (:IdRevenda = 0))'
      '')
    Left = 696
    Top = 128
  end
  object dspRecadoQuadro: TDataSetProvider
    DataSet = QRecadoQuadro
    Left = 752
    Top = 128
  end
  object QUsuarioRenda: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9#39'CHAM'#39' AS Tipo,'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome,'
      '  0 AS Valor,'
      #9'COUNT(DISTINCT Cha_id) AS Qtde,'
      #9'SUM(ChOco_TotalHoras) AS Horas'
      'FROM Chamado_Ocorrencia'
      #9'INNER JOIN Chamado ON ChOco_Chamado = Cha_Id'
      #9'INNER JOIN Usuario ON ChOco_Usuario = Usu_Id'
      '        INNER JOIN Departamento ON Usu_Departamento = Dep_Id'
      #9'LEFT JOIN Revenda ON Usu_Revenda = Rev_Id'
      'WHERE Cha_TipoMovimento = 1'
      'AND ChOco_Data BETWEEN :DataInicial AND :DataFinal'
      'GROUP BY'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome'
      ''
      'UNION'
      'SELECT'
      #9#39'CHAC'#39' AS Tipo,'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome,'
      '  0 AS Valor,'
      #9'0 AS Qtde,'
      #9'SUM(ChaOcol_TotalHoras) AS Horas'
      'FROM Chamado_Ocorr_Colaborador'
      
        #9'INNER JOIN Chamado_Ocorrencia ON ChaOCol_ChamadoOcorrencia = Ch' +
        'Oco_Id'
      #9'INNER JOIN Chamado ON ChOco_Chamado = Cha_Id'
      #9'INNER JOIN Usuario ON ChaOCol_Usuario = Usu_Id'
      #9'INNER JOIN Departamento ON Usu_Departamento = Dep_Id'
      #9'LEFT JOIN Revenda ON Usu_Revenda = Rev_Id'
      'WHERE Cha_TipoMovimento = 1'
      'AND ChOco_Data BETWEEN :DataInicial AND :DataFinal'
      'GROUP BY'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome'
      ''
      'UNION'
      'SELECT'
      #9#39'ATIV'#39' AS Tipo,'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome,'
      '  0 AS Valor,'
      #9'COUNT(DISTINCT Cha_id) AS Qtde,'
      #9'SUM(ChOco_TotalHoras) AS Horas'
      'FROM Chamado_Ocorrencia'
      #9'INNER JOIN Chamado ON ChOco_Chamado = Cha_Id'
      #9'INNER JOIN Usuario ON ChOco_Usuario = Usu_Id'
      #9'INNER JOIN Departamento ON Usu_Departamento = Dep_Id'
      #9'LEFT JOIN Revenda ON Usu_Revenda = Rev_Id'
      'WHERE Cha_TipoMovimento = 2'
      'AND ChOco_Data BETWEEN :DataInicial AND :DataFinal'
      'GROUP BY'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome'
      ''
      'UNION'
      'SELECT'
      #9#39'ATIC'#39' AS Tipo,'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome,'
      '  0 AS Valor,'
      #9'0 AS Qtde,'
      #9'SUM(ChaOcol_TotalHoras) AS Horas'
      'FROM Chamado_Ocorr_Colaborador'
      
        #9'INNER JOIN Chamado_Ocorrencia ON ChaOCol_ChamadoOcorrencia = Ch' +
        'Oco_Id'
      #9'INNER JOIN Chamado ON ChOco_Chamado = Cha_Id'
      #9'INNER JOIN Usuario ON ChaOCol_Usuario = Usu_Id'
      #9'INNER JOIN Departamento ON Usu_Departamento = Dep_Id'
      #9'LEFT JOIN Revenda ON Usu_Revenda = Rev_Id'
      'WHERE Cha_TipoMovimento = 2'
      'AND ChOco_Data BETWEEN :DataInicial AND :DataFinal'
      'GROUP BY'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome'
      ''
      ''
      'UNION'
      'SELECT'
      #9#39'VISI'#39' AS Tipo,'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome,'
      '  SUM(Vis_Valor) AS Valor,'
      #9'COUNT(Vis_id) AS Qtde,'
      #9'SUM(Vis_TotalHoras) AS Horas'
      'FROM Visita'
      #9'INNER JOIN Usuario ON Vis_Usuario = Usu_Id'
      #9'INNER JOIN Departamento ON Usu_Departamento = Dep_Id'
      #9'LEFT JOIN Revenda ON Usu_Revenda = Rev_Id'
      'WHERE Vis_Data BETWEEN :DataInicial AND :DataFinal'
      'GROUP BY'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome'
      ''
      'UNION'
      'SELECT'
      #9#39'TEMP'#39' AS Tipo,'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome,'
      '  0 AS Valor,'
      #9'0 AS Qtde,'
      #9'SUM(STemp_TotalHoras) AS Horas'
      'FROM Solicitacao_Tempo'
      #9'INNER JOIN Usuario ON STemp_UsuarioOperacional = Usu_Id'
      #9'INNER JOIN Departamento ON Usu_Departamento = Dep_Id'
      #9'LEFT JOIN Revenda ON Usu_Revenda = Rev_Id'
      'WHERE STemp_Data BETWEEN :DataInicial AND :DataFinal'
      'GROUP BY'
      '  Usu_Id,'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Rev_Codigo,'
      #9'Rev_Nome,'
      #9'Dep_Codigo,'
      #9'Dep_Nome'
      '')
    Left = 696
    Top = 176
  end
  object dspUsuarioRenda: TDataSetProvider
    DataSet = QUsuarioRenda
    Left = 752
    Top = 176
  end
  object QEscalaCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Esc_Id,'
      #9'Esc_Data,'
      #9'Esc_Usuario,'
      #9'Esc_HoraInicio,'
      #9'Esc_HoraFim,'
      #9'Usu_Codigo,'
      #9'Usu_Nome'
      'FROM Escala'
      'INNER JOIN Usuario ON Esc_Usuario = Usu_Id')
    Left = 696
    Top = 224
  end
  object dspEscalaCons: TDataSetProvider
    DataSet = QEscalaCons
    Left = 752
    Top = 224
  end
  object QEscalaCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Esc_Id,'
      #9'Esc_Data,'
      #9'Esc_Usuario,'
      #9'Esc_HoraInicio,'
      #9'Esc_HoraFim,'
      #9'Usu_Codigo,'
      #9'Usu_Nome'
      'FROM Escala'
      'LEFT JOIN Usuario ON Esc_Usuario = Usu_Id'
      'WHERE Esc_Id = :Id')
    Left = 696
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QEscalaCadEsc_Id: TFDAutoIncField
      FieldName = 'Esc_Id'
      Origin = 'Esc_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEscalaCadEsc_Data: TDateField
      FieldName = 'Esc_Data'
      Origin = 'Esc_Data'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QEscalaCadEsc_Usuario: TIntegerField
      FieldName = 'Esc_Usuario'
      Origin = 'Esc_Usuario'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QEscalaCadEsc_HoraInicio: TTimeField
      FieldName = 'Esc_HoraInicio'
      Origin = 'Esc_HoraInicio'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QEscalaCadEsc_HoraFim: TTimeField
      FieldName = 'Esc_HoraFim'
      Origin = 'Esc_HoraFim'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QEscalaCadUsu_Codigo: TIntegerField
      FieldName = 'Usu_Codigo'
      Origin = 'Usu_Codigo'
      ProviderFlags = []
    end
    object QEscalaCadUsu_Nome: TWideStringField
      FieldName = 'Usu_Nome'
      Origin = 'Usu_Nome'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspEscalaCad: TDataSetProvider
    DataSet = QEscalaCad
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 272
  end
  object QEscalaRelatorio1: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Usu_Codigo,'
      #9'Usu_Nome,'
      #9'Esc_Usuario,'
      #9'Esc_Data,'
      #9'Esc_HoraFim,'
      #9'Esc_HoraInicio,'
      #9'Esc_TotalHoras,'
      
        #9'(SELECT ISNULL(SUM(ChOco_TotalHoras ),0) FROM Chamado_Ocorrenci' +
        'a, Chamado'
      #9#9'WHERE Esc_Usuario = Cha_UsuarioAbertura'
      #9#9'AND Esc_Data = Cha_DataAbertura'
      #9#9'AND Cha_HoraAbertura BETWEEN Esc_HoraInicio AND Esc_HoraFim'
      #9#9'AND Esc_Data = ChOco_Data) AS TotalHoras'
      'FROM Escala'
      #9'INNER JOIN Usuario ON Esc_Usuario = Usu_Id')
    Left = 696
    Top = 320
  end
  object dspEscalaRelatorio1: TDataSetProvider
    DataSet = QEscalaRelatorio1
    Left = 752
    Top = 320
  end
  object QCidadeCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Cid_Id,'
      #9'Cid_Codigo,'
      #9'Cid_Nome,'
      #9'Cid_UF,'
      '        Cid_Ativo'
      'FROM Cidade'
      #9'WHERE Cid_Id = :Id')
    Left = 696
    Top = 368
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCidadeCadCid_Id: TFDAutoIncField
      FieldName = 'Cid_Id'
      Origin = 'Cid_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QCidadeCadCid_Codigo: TIntegerField
      FieldName = 'Cid_Codigo'
      Origin = 'Cid_Codigo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QCidadeCadCid_Nome: TStringField
      FieldName = 'Cid_Nome'
      Origin = 'Cid_Nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QCidadeCadCid_UF: TStringField
      FieldName = 'Cid_UF'
      Origin = 'Cid_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object QCidadeCadCid_Ativo: TBooleanField
      FieldName = 'Cid_Ativo'
      Origin = 'Cid_Ativo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCidadeCad: TDataSetProvider
    DataSet = QCidadeCad
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 368
  end
  object QCidadeCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Cid_Id,'
      #9'Cid_Codigo,'
      #9'Cid_Nome,'
      #9'Cid_UF,'
      '        Cid_Ativo'
      'FROM Cidade')
    Left = 696
    Top = 416
  end
  object dspCidadeCons: TDataSetProvider
    DataSet = QCidadeCons
    Left = 752
    Top = 416
  end
  object QContato: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      #9'Cont_Id,'
      #9'Cont_Cliente,'
      #9'Cont_Orcamento,'
      #9'Cont_Nome,'
      #9'Cont_Fone1,'
      #9'Cont_Fone2,'
      #9'Cont_Depto,'
      #9'Cont_Email'
      'FROM Contato')
    Left = 696
    Top = 472
  end
  object dspContato: TDataSetProvider
    DataSet = QContato
    Left = 752
    Top = 472
  end
  object QFeriadoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Fer_Id,'
      '  Fer_Data,'
      '  Fer_Descricao'
      'FROM Feriado'
      '  WHERE Fer_Id = :Id')
    Left = 696
    Top = 520
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFeriadoCadFer_Id: TFDAutoIncField
      FieldName = 'Fer_Id'
      Origin = 'Fer_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFeriadoCadFer_Data: TDateField
      FieldName = 'Fer_Data'
      Origin = 'Fer_Data'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QFeriadoCadFer_Descricao: TStringField
      FieldName = 'Fer_Descricao'
      Origin = 'Fer_Descricao'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dspFeriadoCad: TDataSetProvider
    DataSet = QFeriadoCad
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 520
  end
  object QFeriadoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Fer_Id,'
      '  Fer_Data,'
      '  Fer_Descricao'
      'FROM Feriado')
    Left = 696
    Top = 568
  end
  object dspFeriadoCons: TDataSetProvider
    DataSet = QFeriadoCons
    Left = 752
    Top = 568
  end
  object QCategoriaCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Cat_Id,'
      '  Cat_Codigo,'
      '  Cat_Nome,'
      '  Cat_Ativo'
      'FROM Categoria WHERE Cat_Id = :Id')
    Left = 40
    Top = 552
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCategoriaCadCat_Id: TFDAutoIncField
      FieldName = 'Cat_Id'
      Origin = 'Cat_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QCategoriaCadCat_Codigo: TIntegerField
      FieldName = 'Cat_Codigo'
      Origin = 'Cat_Codigo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QCategoriaCadCat_Nome: TStringField
      FieldName = 'Cat_Nome'
      Origin = 'Cat_Nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QCategoriaCadCat_Ativo: TBooleanField
      FieldName = 'Cat_Ativo'
      Origin = 'Cat_Ativo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object QCategoriaCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Cat_Id,'
      '  Cat_Codigo,'
      '  Cat_Nome,'
      '  Cat_Ativo'
      'FROM Categoria')
    Left = 192
    Top = 552
  end
  object dspCategoriaCad: TDataSetProvider
    DataSet = QCategoriaCad
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 552
  end
  object dspCategoriaCons: TDataSetProvider
    DataSet = QCategoriaCons
    Left = 240
    Top = 552
  end
  object QTabPrecoCons: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT Tab_Id, Tab_Referencia, Tab_Nome FROM TabPreco')
    Left = 360
    Top = 561
    object QTabPrecoConsTab_Id: TFDAutoIncField
      FieldName = 'Tab_Id'
      Origin = 'Tab_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QTabPrecoConsTab_Nome: TStringField
      FieldName = 'Tab_Nome'
      Origin = 'Tab_Nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QTabPrecoConsTab_Referencia: TStringField
      FieldName = 'Tab_Referencia'
      Origin = 'Tab_Referencia'
      Size = 30
    end
  end
  object QTabPrecoCad: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  Tab_Id,'
      #9' Tab_Data,'
      #9' Tab_Referencia,'
      #9' Tab_Nome,'
      #9' Tab_Produto,'
      #9' Tab_Status,'
      #9' Tab_Tipo,'
      #9' Tab_Ativo,'
      #9' Tab_ValorImplSimples,'
      #9' Tab_ValorMensalSimples,'
      #9' Tab_Observacao,'
      #9' Tab_ValorImplRegNormal,'
      #9' Tab_ValorMensalRegNormal,'
      '   Prod_Codigo,'
      '   Prod_Nome,'
      '   Sta_Codigo,'
      '   Sta_Nome,'
      '   Tip_Codigo,'
      '   Tip_Nome'
      'FROM TabPreco'
      '   LEFT JOIN Produto ON Tab_Produto = Prod_Id'
      '   LEFT JOIN Status ON Tab_Status = Sta_Id'
      '   LEFT JOIN Tipo ON Tab_Tipo = Tip_Id'
      '   WHERE Tab_Id = :Id')
    Left = 496
    Top = 560
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTabPrecoCadTab_Id: TFDAutoIncField
      FieldName = 'Tab_Id'
      Origin = 'Tab_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QTabPrecoCadTab_Data: TDateField
      FieldName = 'Tab_Data'
      Origin = 'Tab_Data'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QTabPrecoCadTab_Referencia: TStringField
      FieldName = 'Tab_Referencia'
      Origin = 'Tab_Referencia'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QTabPrecoCadTab_Nome: TStringField
      FieldName = 'Tab_Nome'
      Origin = 'Tab_Nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object QTabPrecoCadTab_Produto: TIntegerField
      FieldName = 'Tab_Produto'
      Origin = 'Tab_Produto'
      ProviderFlags = [pfInUpdate]
    end
    object QTabPrecoCadTab_Status: TIntegerField
      FieldName = 'Tab_Status'
      Origin = 'Tab_Status'
      ProviderFlags = [pfInUpdate]
    end
    object QTabPrecoCadTab_Tipo: TIntegerField
      FieldName = 'Tab_Tipo'
      Origin = 'Tab_Tipo'
      ProviderFlags = [pfInUpdate]
    end
    object QTabPrecoCadTab_Ativo: TBooleanField
      FieldName = 'Tab_Ativo'
      Origin = 'Tab_Ativo'
      ProviderFlags = [pfInUpdate]
    end
    object QTabPrecoCadTab_ValorImplSimples: TBCDField
      FieldName = 'Tab_ValorImplSimples'
      Origin = 'Tab_ValorImplSimples'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object QTabPrecoCadTab_ValorMensalSimples: TBCDField
      FieldName = 'Tab_ValorMensalSimples'
      Origin = 'Tab_ValorMensalSimples'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object QTabPrecoCadTab_Observacao: TStringField
      FieldName = 'Tab_Observacao'
      Origin = 'Tab_Observacao'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object QTabPrecoCadTab_ValorImplRegNormal: TBCDField
      FieldName = 'Tab_ValorImplRegNormal'
      Origin = 'Tab_ValorImplRegNormal'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object QTabPrecoCadTab_ValorMensalRegNormal: TBCDField
      FieldName = 'Tab_ValorMensalRegNormal'
      Origin = 'Tab_ValorMensalRegNormal'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object QTabPrecoCadProd_Codigo: TIntegerField
      FieldName = 'Prod_Codigo'
      Origin = 'Prod_Codigo'
      ProviderFlags = []
    end
    object QTabPrecoCadProd_Nome: TWideStringField
      FieldName = 'Prod_Nome'
      Origin = 'Prod_Nome'
      ProviderFlags = []
      Size = 100
    end
    object QTabPrecoCadSta_Codigo: TIntegerField
      FieldName = 'Sta_Codigo'
      Origin = 'Sta_Codigo'
      ProviderFlags = []
    end
    object QTabPrecoCadSta_Nome: TWideStringField
      FieldName = 'Sta_Nome'
      Origin = 'Sta_Nome'
      ProviderFlags = []
      Size = 50
    end
    object QTabPrecoCadTip_Codigo: TIntegerField
      FieldName = 'Tip_Codigo'
      Origin = 'Tip_Codigo'
      ProviderFlags = []
    end
    object QTabPrecoCadTip_Nome: TWideStringField
      FieldName = 'Tip_Nome'
      Origin = 'Tip_Nome'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspTabPrecoCons: TDataSetProvider
    DataSet = QTabPrecoCons
    Left = 400
    Top = 560
  end
  object dspTabPrecoCad: TDataSetProvider
    DataSet = QTabPrecoCad
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 560
  end
  object QTabPrecoItens: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      'TabM_Id,'
      'TabM_TabPreco,'
      'TabM_Modulo,'
      'Mod_Codigo,'
      'Mod_Nome'
      'FROM TabPreco_Modulo'
      #9'LEFT JOIN TabPreco ON TabM_TabPreco = Tab_Id'
      #9'LEFT JOIN Modulo ON TabM_Modulo = Mod_Id'
      'WHERE TabM_TabPreco = :IdTabela')
    Left = 496
    Top = 456
    ParamData = <
      item
        Name = 'IDTABELA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTabPrecoItensTabM_Id: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'TabM_Id'
      Origin = 'TabM_Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object QTabPrecoItensTabM_TabPreco: TIntegerField
      FieldName = 'TabM_TabPreco'
      Origin = 'TabM_TabPreco'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QTabPrecoItensTabM_Modulo: TIntegerField
      FieldName = 'TabM_Modulo'
      Origin = 'TabM_Modulo'
      ProviderFlags = [pfInUpdate]
    end
    object QTabPrecoItensMod_Codigo: TIntegerField
      FieldName = 'Mod_Codigo'
      Origin = 'Mod_Codigo'
      ProviderFlags = []
    end
    object QTabPrecoItensMod_Nome: TWideStringField
      FieldName = 'Mod_Nome'
      Origin = 'Mod_Nome'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspTabPrecoItens: TDataSetProvider
    DataSet = QTabPrecoItens
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 456
  end
end
