class Vaca extends Animal implements Sonoro {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Muuu');
  }

  @override
  String toString() {
    return 'Vaca | Nome: $nome';
  }
}
