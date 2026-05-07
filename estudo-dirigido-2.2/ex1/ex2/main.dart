void main() {
  ContaPoupanca poupanca =
      ContaPoupanca('Ana', 1000);

  ContaCorrente corrente =
      ContaCorrente('Pedro', 1000);

  poupanca.depositar(500);
  poupanca.aplicarRendimento();

  corrente.depositar(500);
  corrente.aplicarRendimento();

  print('Conta Poupança');
  poupanca.exibirSaldo();

  print('----------------');

  print('Conta Corrente');
  corrente.exibirSaldo();
}