
class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(
      String evento,
      double valor,
      this.taxaServico,
      this.localizacao)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return 'Evento: $evento | '
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} | '
        'Tipo: Camarote ($localizacao) | '
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

