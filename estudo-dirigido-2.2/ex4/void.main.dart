void main() {
  IngressoVip vip =
      IngressoVip('Show', 100, 50);

  IngressoPromocional promo =
      IngressoPromocional('Show', 100, 20);

  print(vip.valorFinal());
  print(promo.valorFinal());
}