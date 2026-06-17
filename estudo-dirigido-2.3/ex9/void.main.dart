void main() {
  ListaGenerica<Processavel> pedidos = ListaGenerica<Processavel>();

  Processavel p1 =
      PedidoDelivery(1001, 120.00, 'Rua A, 100', 15.00);

  Processavel p2 =
      PedidoRetirada(1002, 80.00, 'Ana');

  Processavel p3 =
      PedidoExpress(1003, 200.00, 40.00);

  Processavel p4 =
      PedidoDelivery(1004, 150.00, 'Rua B, 250', 20.00);

  Processavel p5 =
      PedidoRetirada(1005, 60.00, 'Bruno');

  pedidos.adicionar(p1);
  pedidos.adicionar(p2);
  pedidos.adicionar(p3);
  pedidos.adicionar(p4);
  pedidos.adicionar(p5);

  print('--- Impressão dos pedidos ---');
  pedidos.imprimirItens();

  print('\n--- Exibindo pedidos ---');

  for (var pedido in pedidos.obterItens()) {
    pedido.exibirPedido();
    print('Valor final calculado: R\$ ${pedido.valorFinal().toStringAsFixed(2)}');
    print('');
  }
}