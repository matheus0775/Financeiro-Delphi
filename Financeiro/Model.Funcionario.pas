unit Model.Funcionario;

interface

type
  TFuncionario = class
  private
    FCodigo: Integer;
    FNome: string;
  public
    constructor Create;
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
  end;

implementation

{ TProduto }

constructor TFuncionario.Create;
begin
  FCodigo := 0;
  FNome := '';
end;

end.
