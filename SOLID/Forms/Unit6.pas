unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Funcionario, CalculadoraSalario, FuncionarioSubclasses, Interfaces,
  GerenciadorFuncionarios, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    LabelResultado: TLabel;
    Button1: TButton;
    EditNome: TEdit;
    EditSobrenome: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CboCargo: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
  Nome, Sobrenome: string;
  Funcionario: TFuncionario;
  Calculadora: TCalculadoraSalario;
  Salario: Currency;
  Cargo: string;
begin

  try

    Nome := EditNome.Text;
    Sobrenome := EditSobrenome.Text;
    Cargo := CboCargo.Text;

    if (Nome <> '') and (Sobrenome <> '') and( Cargo <> '') then
    begin


      // Crie a instância correta de TFuncionario com base na seleção do cargo
      if Cargo = 'Gerente' then
        Funcionario := TGerente.Create(Nome, Sobrenome)
      else if Cargo = 'Desenvolvedor' then
        Funcionario := TProgramador.Create(Nome, Sobrenome)
      else
        Funcionario := TFuncionario.Create(Nome, Sobrenome);

      Calculadora := TCalculadoraSalario.Create;

      try

        Salario := Calculadora.CalcularSalario(Funcionario);
        LabelResultado.Caption := 'Salário de ' + Funcionario.Nome + ': ' +
          CurrToStrF(Salario, ffCurrency, 2);

        // LabelResultado.Caption := 'Salário de ' + Funcionario.Nome + ': ' + CurrToStr(Salario);
      finally
        Funcionario.Free;
        Calculadora.Free;
      end;

    end
    else
      ShowMessage('Preencha os campos Nome,Sobrenome e Cargo antes de calcular o salário.');

  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

end;

end.
