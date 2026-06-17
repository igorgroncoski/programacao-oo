class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(
    String nome,
    int vida,
    int nivel,
    int forca,
    this.armadura,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print('$nome atacou ${alvo.nome} causando $forca de dano.');
    alvo.receberDano(forca);
  }

  void ataquePesado(Personagem alvo) {
    int dano = forca * 2;

    print(
      '$nome usou ataque pesado em ${alvo.nome} causando $dano de dano.',
    );

    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('=== GUERREIRO ===');
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Armadura: $armadura');
  }
}