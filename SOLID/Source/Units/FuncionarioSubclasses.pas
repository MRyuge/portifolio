unit FuncionarioSubclasses;

interface

uses
  Funcionario;

type
  TGerente = class(TFuncionario)
  public
    function ObterCargo: string;
    function ObterSalario: Double;
  end;

  TProgramador = class(TFuncionario)
  public
    function ObterCargo: string;
    function ObterSalario: Double; // Implementa��o simples apenas para exemplo
  end;

implementation

function TGerente.ObterCargo: string;
begin
  Result := 'Gerente';
end;

function TGerente.ObterSalario: Double;
begin
  // Implemente a l�gica de c�lculo do sal�rio do gerente aqui
  Result := 15000.0; // Valor de exemplo
end;

function TProgramador.ObterCargo: string;
begin
  Result := 'Desenvolvedor'; // Pode ser qualquer linguagem
end;

function TProgramador.ObterSalario: Double;
begin
  // Implemente a l�gica de c�lculo do sal�rio do programador aqui
  Result := 13000.0; // Valor de exemplo
end;

end.

