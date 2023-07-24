program prjTiposDeDados;

uses
  Vcl.Forms,
  untTiposDeDados in 'untTiposDeDados.pas' {frmTiposDeDados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTiposDeDados, frmTiposDeDados);
  Application.Run;
end.
