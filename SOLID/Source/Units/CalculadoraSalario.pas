unit CalculadoraSalario;

// Classe que estende essa funcionalidade para calcular o salário de um funcionário.
// Isso demonstra o Princípio do Aberto/Fechado (OCP) permitindo a extensão sem modificar a classe base

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
  // Use o método ObterSalario da instância de TFuncionario para calcular o salário com base no cargo
  if Funcionario is TGerente then
    Salario := (Funcionario as TGerente).ObterSalario
  else if Funcionario is TProgramador then
    Salario := (Funcionario as TProgramador).ObterSalario
  else
    Salario := 0.0; // Salário padrão para outros cargos desconhecidos

  Result := Salario;
end;

end.

