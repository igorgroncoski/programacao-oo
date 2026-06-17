class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String titular, double saldo)
      : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.08;
  }
}