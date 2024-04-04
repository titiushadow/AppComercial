object DMComercial: TDMComercial
  OldCreateOrder = False
  Height = 501
  Width = 824
  object Conexao: TSQLConnection
    ConnectionName = 'DBVendas'
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
    Left = 344
    Top = 344
  end
  object QryProduto: TSQLQuery
    Params = <>
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
  end
  object QryUsuario: TSQLQuery
    Params = <>
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
  end
  object QryPerfil: TSQLQuery
    Params = <>
    Left = 64
    Top = 264
  end
  object DpsPerfil: TDataSetProvider
    DataSet = QryPerfil
    Left = 144
    Top = 264
  end
  object CdsPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsPerfil'
    Left = 224
    Top = 264
  end
  object QryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 472
    Top = 264
  end
  object DpsVendas: TDataSetProvider
    DataSet = QryVendas
    Left = 552
    Top = 264
  end
  object CdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsVendas'
    Left = 632
    Top = 264
  end
  object QryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
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
    Params = <>
    ProviderName = 'DspCliente'
    Left = 432
    Top = 48
    object CdsClienteCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
      Required = True
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
    end
  end
end
