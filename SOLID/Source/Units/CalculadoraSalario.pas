unit CalculadoraSalario;

// Classe que estende essa funcionalidade para calcular o sal�rio de um funcion�rio.
// Isso demonstra o Princ�pio do Aberto/Fechado (OCP) permitindo a extens�o sem modificar a classe base

interface

uses
  FuncionarioSubclasses,Funcionario;

type
  TCalculadoraSalario = class
  public
    function CalcularSalario(Funcionario: TFuncionario): Currency;
  end;

implementation

function TCalculadoraSalario.CalcularSalario(Funcionario: TFuncionario): Currency;
var
  Salario: Double;
begin
  // Use o m�todo ObterSalario da inst�ncia de TFuncionario para calcular o sal�rio com base no cargo
  if Funcionario is TGerente then
    Salario := (Funcionario as TGerente).ObterSalario
  else if Funcionario is TProgramador then
    Salario := (Funcionario as TProgramador).ObterSalario
  else
    Salario := 0.0; // Sal�rio padr�o para outros cargos desconhecidos

  Result := Salario;
end;

end.

