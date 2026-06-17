class Mago extends Combatente implements Magico {
  int mana;

  Mago(
    String nome,
    int vida,
    int nivel,
    int forca,
    this.mana,
  ) : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print('$nome atacou ${alvo.nome} causando $forca de dano.');
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      int dano = forca + 15;

      mana -= 10;

      print(
        '$nome lançou magia em ${alvo.nome} causando $dano de dano.',
      );

      alvo.receberDano(dano);
    } else {
      print('$nome não possui mana suficiente.');
    }
  }

  @override
  void exibirStatus() {
    print('=== MAGO ===');
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Mana: $mana');
  }
}

abstract class Inimigo extends Personagem {
  int recompensa;

  Inimigo(
    String nome,
    int vida,
    int nivel,
    this.recompensa,
  ) : super(nome, vida, nivel);

  void exibirRecompensa();
}
