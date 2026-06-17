class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Bééé');
  }

  @override
  String toString() {
    return 'Ovelha | Nome: $nome';
  }
}
