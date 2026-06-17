class IngressoVip extends Ingresso {
  double valorAdicional;

  IngressoVip(
      String evento,
      double valor,
      this.valorAdicional)
      : super(evento, valor);

  double valorFinal() {
    return valor + valorAdicional;
  }
}
