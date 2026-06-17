class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido() {
    print("Código: $codigo");
    print("Valor: R\$ $valorTotal");
  }
}
