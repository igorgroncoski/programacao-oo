class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Piu Piu');
  }

  @override
  String toString() {
    return 'Pássaro | Nome: $nome';
  }
}