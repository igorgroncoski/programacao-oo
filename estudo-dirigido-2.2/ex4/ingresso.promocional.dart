class IngressoPromocional extends Ingresso
    implements Calculavel {
  double desconto;

  IngressoPromocional(
    String evento,
    double valor,
    this.desconto,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }
}