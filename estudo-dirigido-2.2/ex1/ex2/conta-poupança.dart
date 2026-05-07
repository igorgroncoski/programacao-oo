class ContaPoupanca extends ContaBancaria
    implements Rentavel {

  ContaPoupanca(String titular, double saldo)
      : super(titular, saldo);


  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }
}
