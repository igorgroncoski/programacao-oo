void main() {
  ContaPoupanca cp = ContaPoupanca("Maria", 1000);
  ContaCorrente cc = ContaCorrente("João", 1000);

  cp.aplicarRendimento();
  cc.aplicarRendimento();

  cp.exibirSaldo();
  cc.exibirSaldo();
}