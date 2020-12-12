inherited ServiceUser: TServiceUser
  OldCreateOrder = True
  Height = 129
  Width = 376
  inherited FDConnection: TFDConnection
    Left = 80
    Top = 48
  end
  object qryPesquisa: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select id, first_name, last_name, email, country, state '
      '  from mock_data'
      ' where 1 = 1')
    Left = 168
    Top = 48
    object qryPesquisaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesquisafirst_name: TStringField
      FieldName = 'first_name'
      Origin = 'first_name'
      Size = 50
    end
    object qryPesquisalast_name: TStringField
      FieldName = 'last_name'
      Origin = 'last_name'
      Size = 50
    end
    object qryPesquisaemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object qryPesquisacountry: TStringField
      FieldName = 'country'
      Origin = 'country'
      Size = 50
    end
    object qryPesquisastate: TStringField
      FieldName = 'state'
      Origin = 'state'
      Size = 50
    end
  end
  object qryRecordCount: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select count(id) as count'
      '  from mock_data'
      ' where 1 = 1')
    Left = 256
    Top = 48
    object qryRecordCountcount: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'count'
      Origin = 'count'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
