class Goblin extends Inimigo {
  int velocidade;

  Goblin(
      String nome,
      int vida,
      int nivel,
      int recompensa,
      this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Velocidade: $velocidade");
  }
}
