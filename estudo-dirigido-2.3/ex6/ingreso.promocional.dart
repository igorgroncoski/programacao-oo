class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }

  @override
  String toString() {
    return 'Evento: $evento | '
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} | '
        'Tipo: Promocional | '
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
