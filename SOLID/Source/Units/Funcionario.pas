unit Funcionario;

// A classe Funcionario tem uma única responsabilidade,
// que é representar um funcionário com seu nome e sobrenome.

interface

type
  TFuncionario = class
  private
    FNome: string;
    FSobrenome: string;
    FCargo: string;
  public
    constructor Create(Nome, Sobrenome: string);
    property Nome: string read FNome;
    property Sobrenome: string read FSobrenome;
    property Cargo: string read FCargo;

  end;

implementation

constructor TFuncionario.Create(Nome, Sobrenome: string);
begin
  FNome := Nome;
  FSobrenome := Sobrenome;
end;

end.

