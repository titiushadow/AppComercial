object DMComercial: TDMComercial
  OldCreateOrder = False
  Height = 398
  Width = 737
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
    Left = 312
    Top = 184
  end
  object QryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 192
    Top = 112
  end
  object DspCliente: TDataSetProvider
    Left = 272
    Top = 112
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCliente'
    Left = 352
    Top = 112
  end
  object DsCliente: TDataSource
    Left = 432
    Top = 112
  end
end