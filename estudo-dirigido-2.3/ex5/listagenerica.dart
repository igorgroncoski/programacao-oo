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

abstract class Apresentavel {
  void exibirDados();
}

abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}
