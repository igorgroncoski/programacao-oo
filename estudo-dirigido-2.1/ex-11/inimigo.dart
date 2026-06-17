class Inimigo extends Personagem {
  int recompensa;

  Inimigo(
      String nome,
      int vida,
      int nivel,
      this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa() {
    print("Recompensa: $recompensa moedas");
  }
}
