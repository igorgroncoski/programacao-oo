class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Código: $codigo');
    print('Valor: $valorTotal');
    print('Endereço: $enderecoEntrega');
    print('Taxa: $taxaEntrega');
    print('Valor Final: ${valorTotal + taxaEntrega}');
  }
}