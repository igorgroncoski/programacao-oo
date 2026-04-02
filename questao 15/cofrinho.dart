class Cofrinho {
  double _saldo;
  int _quantidadeDepositos;

  Cofrinho(this._saldo) : _quantidadeDepositos = 0 {
    if (_saldo < 0) {
      throw Exception("Saldo inicial inválido");
    }
  }

  double get saldo => _saldo;
  int get quantidadeDepositos => _quantidadeDepositos;

  void depositar(double valor) {
    if (valor <= 0) {
      throw Exception("Valor inválido");
    }
    _saldo += valor;
    _quantidadeDepositos++;
  }

  void quebrar() {
    print("Total acumulado: ${_saldo.toStringAsFixed(2)}");
    print("Quantidade de depósitos: $_quantidadeDepositos");
    _saldo = 0;
    _quantidadeDepositos = 0;
  }

  void exibirSaldo() {
    print("Saldo atual: ${_saldo.toStringAsFixed(2)}");
  }
}

void main() {
  var cofrinho = Cofrinho(0);

  cofrinho.depositar(10);
  cofrinho.depositar(25.5);
  cofrinho.depositar(5);

  cofrinho.exibirSaldo();

  cofrinho.quebrar();

  cofrinho.exibirSaldo();
}