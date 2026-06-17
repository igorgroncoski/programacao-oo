class Gato extends Animal implements Sonoro {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Miau');
  }

  @override
  String toString() {
    return 'Gato | Nome: $nome';
  }
}
