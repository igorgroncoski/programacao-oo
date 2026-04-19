class Produto {
  String _nome;
  double _preco;

  Produto(this._nome, this._preco) {
    if (_nome.isEmpty || _preco <= 0) {
      throw Exception("Produto inválido");
    }
  }

  String get nome => _nome;
  double get preco => _preco;
}

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero, this._produto, this._quantidade) {
    _validar();
  }

  void _validar() {
    if (_numero <= 0) {
      throw Exception("Número inválido");
    }
    if (_quantidade <= 0) {
      throw Exception("Quantidade inválida");
    }
  }

  int get numero => _numero;
  Produto get produto => _produto;
  int get quantidade => _quantidade;

  double calcularTotal() {
    return _produto.preco * _quantidade;
  }

  void exibirPedido() {
    print("Pedido: $_numero");
    print("Produto: ${_produto.nome}");
    print("Preço: ${_produto.preco.toStringAsFixed(2)}");
    print("Quantidade: $_quantidade");
    print("Total: ${calcularTotal().toStringAsFixed(2)}");
    print("");
  }
}

void main() {
  var p1 = Produto("Teclado", 100.0);
  var p2 = Produto("Mouse", 50.0);

  var pedido1 = Pedido(1, p1, 2);
  var pedido2 = Pedido(2, p2, 3);

  pedido1.exibirPedido();
  pedido2.exibirPedido();
}