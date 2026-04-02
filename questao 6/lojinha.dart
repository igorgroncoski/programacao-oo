class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;

  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade) {
    if (codigo <= 0) {
      throw ArgumentError("Codigo deve ser maior que 0.");
    }
    if (nome.isEmpty) {
      throw ArgumentError("Nome nao pode ser vazio.");
    }
    if (precoUnitario <= 0) {
      throw ArgumentError("Preco deve ser maior que 0.");
    }
    if (quantidade <= 0) {
      throw ArgumentError("Quantidade deve ser maior que 0.");
    }
  
  }

  double calcularDesconto() {
    double total = precoUnitario * quantidade;
    double percentual = 0;

    if (quantidade >= 5 && quantidade <= 9) {
      percentual = 0.05;
    } else if (quantidade >= 10 && quantidade <= 19) {
      percentual = 0.10;
    } else if (quantidade >= 20) {
      percentual = 0.15;
    }

    return total * percentual;
  }

  double calcularTotal() {
    double total = precoUnitario * quantidade;
    return total - calcularDesconto();
  }

  void exibirResumo() {
    double desconto = calcularDesconto();
    double total = calcularTotal();

    print("Codigo: $codigo");
    print("Nome: $nome");
    print("Preco Unitario: R\$ ${precoUnitario.toStringAsFixed(2)}");
    print("Quantidade: $quantidade");
    print("Desconto: R\$ ${desconto.toStringAsFixed(2)}");
    print("Total: R\$ ${total.toStringAsFixed(2)}");
    print("----------------------");
  }
}

void main() {
  try {
    Produto p = Produto(1, "Notebook", 2500.0, 3);

    p.exibirResumo();

    p.codigo = 2;
    p.nome = "Mouse";
    p.precoUnitario = 100.0;
    p.quantidade = 12;

    p.exibirResumo();

  } catch (e) {
    print("Erro: $e");
  }
}