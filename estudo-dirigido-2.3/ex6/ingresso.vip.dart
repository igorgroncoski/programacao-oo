class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  String toString() {
    return 'Evento: $evento | '
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} | '
        'Tipo: VIP | '
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}