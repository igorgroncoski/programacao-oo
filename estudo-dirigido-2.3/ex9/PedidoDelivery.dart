class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print('Pedido Delivery');
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Endereço: $enderecoEntrega');
    print('Taxa entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Valor final: R\$ ${valorFinal().toStringAsFixed(2)}');
    print('');
  }

  @override
  String toString() {
    return 'Delivery | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | '
        'Endereço: $enderecoEntrega | Taxa: R\$ ${taxaEntrega.toStringAsFixed(2)} | '
        'Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
