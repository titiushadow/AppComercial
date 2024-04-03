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
    Left = 392
    Top = 344
  end
  object QryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 256
    Top = 48
  end
  object DspCliente: TDataSetProvider
    Left = 352
    Top = 48
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCliente'
    Left = 432
    Top = 48
  end
  object DsCliente: TDataSource
    Left = 536
    Top = 48
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
  object DsProduto: TDataSource
    DataSet = CdsProduto
    Left = 536
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
  object DsUsuario: TDataSource
    DataSet = CdsUsuario
    Left = 536
    Top = 184
  end
  object QryPerfil: TSQLQuery
    Params = <>
    Left = 16
    Top = 264
  end
  object DpsPerfil: TDataSetProvider
    DataSet = QryPerfil
    Left = 96
    Top = 264
  end
  object CdsPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsPerfil'
    Left = 176
    Top = 264
  end
  object DsPerfil: TDataSource
    DataSet = CdsPerfil
    Left = 256
    Top = 264
  end
  object QryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 536
    Top = 264
  end
  object DpsVendas: TDataSetProvider
    DataSet = QryVendas
    Left = 616
    Top = 264
  end
  object CdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsVendas'
    Left = 696
    Top = 264
  end
  object DsVendas: TDataSource
    DataSet = CdsVendas
    Left = 776
    Top = 264
  end
end
