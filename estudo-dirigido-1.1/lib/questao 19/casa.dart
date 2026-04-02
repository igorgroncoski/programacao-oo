class Comodo {
  String _nome;
  double _tamanho;

  Comodo(this._nome, this._tamanho) {
    if (_nome.isEmpty || _tamanho <= 0) {
      throw Exception("Cômodo inválido");
    }
  }

  String get nome => _nome;
  double get tamanho => _tamanho;
}

class Casa {
  String _proprietario;
  Comodo _comodo1;
  Comodo _comodo2;
  Comodo _comodo3;

  Casa(this._proprietario, this._comodo1, this._comodo2, this._comodo3) {
    if (_proprietario.isEmpty) {
      throw Exception("Proprietário inválido");
    }
  }

  void exibirCasa() {
    print("Proprietário: $_proprietario");
    _exibir(_comodo1);
    _exibir(_comodo2);
    _exibir(_comodo3);
    print("Área total: ${calcularAreaTotal().toStringAsFixed(2)}");
  }

  void _exibir(Comodo c) {
    print("Cômodo: ${c.nome} | Tamanho: ${c.tamanho}");
  }

  double calcularAreaTotal() {
    return _comodo1.tamanho +
        _comodo2.tamanho +
        _comodo3.tamanho;
  }
}

void main() {
  var c1 = Comodo("Sala", 20.5);
  var c2 = Comodo("Quarto", 15.0);
  var c3 = Comodo("Cozinha", 10.0);

  var casa = Casa("João", c1, c2, c3);

  casa.exibirCasa();
}