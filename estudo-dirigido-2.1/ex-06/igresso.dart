class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print("Evento: $evento");
    print("Valor: R\$ $valor");
  }
}