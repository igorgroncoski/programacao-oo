class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(
    String nome,
    int vida,
    int nivel,
    int forca,
    this.flechas,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      flechas--;

      print(
        '$nome disparou uma flecha em ${alvo.nome} causando $forca de dano.',
      );

      alvo.receberDano(forca);
    } else {
      print('$nome não possui flechas para atacar.');
    }
  }

  @override
  void exibirStatus() {
    print('=== ARQUEIRO ===');
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Flechas: $flechas');
  }
}
