class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(
    int codigo,
    double valorTotal,
    this.taxaUrgencia,
  ) : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaUrgencia;
  }

  @override
  void exibirPedido() {
    print('Pedido Express');
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)}');
    print('Valor final: R\$ ${valorFinal().toStringAsFixed(2)}');
    print('');
  }

  @override
  String toString() {
    return 'Express | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | '
        'Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | '
        'Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
