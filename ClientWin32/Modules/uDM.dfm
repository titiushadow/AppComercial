object DMComercial: TDMComercial
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 501
  Width = 824
  object Conexao: TSQLConnection
    ConnectionName = 'DBVENDAS'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver240.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver240.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      
        'VendorLib=C:\Program Files (x86)\Firebird\Firebird_2_1\bin\fbcli' +
        'ent.dll'
      
        'VendorLibWin64=C:\Program Files (x86)\Firebird\Firebird_2_1\bin\' +
        'fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\Comercial\DB\DBVENDAS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 352
    Top = 432
  end
  object QryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    SQLConnection = Conexao
    Left = 256
    Top = 120
  end
  object DpsProduto: TDataSetProvider
    DataSet = QryProduto
    Left = 352
    Top = 120
  end
  object CdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsProduto'
    Left = 432
    Top = 120
    object CdsProdutoPRODUTOID: TIntegerField
      FieldName = 'PRODUTOID'
      Required = True
    end
    object CdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object CdsProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object CdsProdutoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object QryUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    SQLConnection = Conexao
    Left = 256
    Top = 184
  end
  object DpsUsuario: TDataSetProvider
    DataSet = QryUsuario
    Left = 352
    Top = 184
  end
  object CdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsUsuario'
    Left = 432
    Top = 184
    object CdsUsuarioUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object CdsUsuarioPREFILID: TIntegerField
      FieldName = 'PREFILID'
      Required = True
    end
    object CdsUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object CdsUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 75
    end
    object CdsUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object CdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object CdsUsuarioVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
  end
  object sdsPerfil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PERFIL')
    SQLConnection = Conexao
    Left = 88
    Top = 264
  end
  object DpsPerfil: TDataSetProvider
    DataSet = sdsPerfil
    Left = 152
    Top = 264
  end
  object CdsPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsPerfil'
    Left = 232
    Top = 264
    object CdsPerfilPREFILID: TIntegerField
      FieldName = 'PREFILID'
      Required = True
    end
    object CdsPerfilNOME: TStringField
      FieldName = 'NOME'
    end
    object CdsPerfilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object CdsPerfilsdsPerfilConf: TDataSetField
      FieldName = 'sdsPerfilConf'
    end
  end
  object sdsVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM VENDAS')
    SQLConnection = Conexao
    Left = 536
    Top = 264
  end
  object DpsVendas: TDataSetProvider
    DataSet = sdsVendas
    Left = 616
    Top = 264
  end
  object CdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsVendas'
    Left = 696
    Top = 264
    object CdsVendasVENDAID: TIntegerField
      FieldName = 'VENDAID'
      Required = True
    end
    object CdsVendasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
      Required = True
    end
    object CdsVendasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object CdsVendasDATA: TDateField
      FieldName = 'DATA'
    end
    object CdsVendassdsItens: TDataSetField
      FieldName = 'sdsItens'
    end
  end
  object QryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CLIENTEID, NOME, ENDERECO, BAIRRO, CIDADE, CEP, UF, EMAIL' +
        ', TELEFONE FROM CLIENTES')
    SQLConnection = Conexao
    Left = 256
    Top = 48
  end
  object DspCliente: TDataSetProvider
    DataSet = QryCliente
    Left = 352
    Top = 48
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CLIENTEID'
    Params = <>
    ProviderName = 'DspCliente'
    Left = 432
    Top = 48
    object CdsClienteCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object CdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object CdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 75
    end
    object CdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object CdsClienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      FixedChar = True
      Size = 9
    end
    object CdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 75
    end
    object CdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
  end
  object sdsPerfilConf: TSQLDataSet
    CommandText = 'select *  from PERFIL_CONF WHERE PREFILID =:PREFILID'
    DataSource = DsPerfil_PerfilConf
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PREFILID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 88
    Top = 344
  end
  object DsPerfil_PerfilConf: TDataSource
    DataSet = sdsPerfil
    Left = 32
    Top = 304
  end
  object cdsPerfilConf: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPerfilsdsPerfilConf
    Params = <>
    Left = 232
    Top = 344
  end
  object sdsItens: TSQLDataSet
    CommandText = 'select * from VENDAITEM WHERE VENDAID =:VENDAID'
    DataSource = DsVenda_itens
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VENDAID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 536
    Top = 336
  end
  object DsVenda_itens: TDataSource
    DataSet = sdsVendas
    Left = 480
    Top = 312
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    DataSetField = CdsVendassdsItens
    Params = <>
    Left = 696
    Top = 336
  end
end
