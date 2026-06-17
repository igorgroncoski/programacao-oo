void main() {
  IngressoVip vip =
      IngressoVip("Show Rock", 100, 50);

  vip.exibirResumo();
  print("Valor final: ${vip.valorFinal()}");
}