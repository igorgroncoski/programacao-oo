class ContaPoupanca extends ContaBancaria {
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular, double saldo)
      : super(titular, saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }
}