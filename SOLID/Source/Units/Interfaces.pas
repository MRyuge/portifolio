unit Interfaces;

interface

type

  IDadosFuncionario = interface
    function GetNome: string;
    function GetSobrenome: string;
  end;

  ICalculoSalario = interface
    function CalcularSalario: Currency;
  end;

  ICargo = interface
    function ObterCargo: string;
  end;

  ILinguagemProgramacao = interface
    function ObterLinguagem: string;
  end;

implementation

end.

