program Project5;

uses
  Vcl.Forms,
  Unit6 in 'Forms\Unit6.pas' {Form6},
  CalculadoraSalario in 'Source\Units\CalculadoraSalario.pas',
  Funcionario in 'Source\Units\Funcionario.pas',
  FuncionarioSubclasses in 'Source\Units\FuncionarioSubclasses.pas',
  GerenciadorFuncionarios in 'Source\Units\GerenciadorFuncionarios.pas',
  Interfaces in 'Source\Units\Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
