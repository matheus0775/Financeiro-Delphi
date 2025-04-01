unit Model.Cliente;

interface

type
  TCliente = class
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

constructor TCliente.Create;
begin
  FCodigo := 0;
  FNome := '';
end;

end.
