unit GerenciadorFuncionarios;

interface

//  Classe GerenciadorFuncionarios que depende das abstra��es (interfaces)
//  em vez das implementa��es concretas:

uses
  SysUtils,Interfaces;

type
  TGerenciadorFuncionarios = class
  private
    function ObterDadosFuncionario(DadosFuncionario: IDadosFuncionario; CalculoSalario: ICalculoSalario; Cargo: ICargo): string;
  public
    function ObterDetalhesFuncionario(DadosFuncionario: IDadosFuncionario; CalculoSalario: ICalculoSalario; Cargo: ICargo): string;
  end;

implementation

function TGerenciadorFuncionarios.ObterDadosFuncionario(DadosFuncionario: IDadosFuncionario; CalculoSalario: ICalculoSalario; Cargo: ICargo): string;
begin
  Result := 'Nome: ' + DadosFuncionario.GetNome + ' ' + DadosFuncionario.GetSobrenome + sLineBreak +
            'Cargo: ' + Cargo.ObterCargo + sLineBreak +
            'Sal�rio: ' + CurrToStrF(CalculoSalario.CalcularSalario,ffCurrency, 2);
end;

function TGerenciadorFuncionarios.ObterDetalhesFuncionario(DadosFuncionario: IDadosFuncionario; CalculoSalario: ICalculoSalario; Cargo: ICargo): string;
begin
  // Outros detalhes ou processamento
  Result := ObterDadosFuncionario(DadosFuncionario, CalculoSalario, Cargo);
end;

end.

