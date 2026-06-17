class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(
    int codigo,
    double valorTotal,
    this.nomeCliente,
  ) : super(codigo, valorTotal);
