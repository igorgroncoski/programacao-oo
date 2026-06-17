class IngressoVip extends Ingresso
    implements Calculavel {
  double valorAdicional;

  IngressoVip(
    String evento,
    double valor,
    this.valorAdicional,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }
}