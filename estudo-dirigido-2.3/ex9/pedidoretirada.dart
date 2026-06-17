class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(
    int codigo,
    double valorTotal,
    this.nomeCliente,
  ) : super(codigo, valorTotal);

  @override
  double valorFinal() {
    return valorTotal;
  }

  @override
  void exibirPedido() {
    print('Pedido Retirada');
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Cliente: $nomeCliente');
    print('Valor final: R\$ ${valorFinal().toStringAsFixed(2)}');
    print('');
  }

  @override
  String toString() {
    return 'Retirada | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | '
        'Cliente: $nomeCliente | Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
