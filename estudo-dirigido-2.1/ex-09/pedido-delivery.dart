class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
      int codigo,
      double valorTotal,
      this.enderecoEntrega,
      this.taxaEntrega)
      : super(codigo, valorTotal);

  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }
}