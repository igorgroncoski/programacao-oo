class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: Au Au');
  }

  @override
  String toString() {
    return 'Cachorro | Nome: $nome';
  }
}
