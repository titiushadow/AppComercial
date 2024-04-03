program AppComercial;

uses
  Vcl.Forms,
  uFrmComercial in 'Views\uFrmComercial.pas' {FrmComercial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema Comercial';
  Application.CreateForm(TFrmComercial, FrmComercial);
  Application.Run;
end.
