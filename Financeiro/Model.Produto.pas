unit Model.Produto;

interface

type
  TProduto = class
  private
    FCodigo: Integer;
    FDescricao: string;
    FDescricaoResumida: string;
    FPrecoCusto: Currency;
    FPrecoVenda: Currency;
    FUnidade: string;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property DescricaoResumida: string read FDescricaoResumida write FDescricaoResumida;
    property PrecoCusto: Currency read FPrecoCusto write FPrecoCusto;
    property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;
    property Unidade: string read FUnidade write FUnidade;

    constructor Create; // Construtor para inicializar valores padrão
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  FCodigo := 0;
  FDescricao := '';
  FDescricaoResumida := '';
  FPrecoCusto := 0.0;
  FPrecoVenda := 0.0;
  FUnidade := '';
end;

end.
