program TestZIPFiles;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.Title := 'TestZIP';
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
