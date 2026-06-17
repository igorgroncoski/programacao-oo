void main() {
  PedidoDelivery pedido = PedidoDelivery(
      101, 80, "Rua A, 123", 10);

  pedido.exibirPedido();
  print("Valor final: ${pedido.calcularValorFinal()}");
}