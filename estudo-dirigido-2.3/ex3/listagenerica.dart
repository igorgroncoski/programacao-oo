class ListaGenerica<T> {
  final List<T> itens = [];

  void adicionar(T item) {
    itens.add(item);
  }

  void imprimirItens() {
    for (var item in itens) {
      print(item);
    }
  }

  List<T> obterItens() {
    return itens;
  }
}

abstract class Fichavel {
  void exibirFicha();
}

abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);
}
