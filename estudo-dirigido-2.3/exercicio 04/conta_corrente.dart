class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo)
      : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.05;
  }
}
