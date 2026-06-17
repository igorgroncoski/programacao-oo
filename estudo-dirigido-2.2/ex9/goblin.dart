class Goblin extends Inimigo {
  int velocidade;

  Goblin(
    String nome,
    int vida,
    int nivel,
    int recompensa,
    this.velocidade,
  ) : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    print('=== GOBLIN ===');
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Velocidade: $velocidade');
  }

  @override
  void exibirRecompensa() {
    print(
      '$nome foi derrotado! Recompensa: $recompensa moedas.',
    );
  }
}
