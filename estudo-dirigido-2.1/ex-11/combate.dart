class Combatente extends Personagem {
  int forca;

  Combatente(
      String nome,
      int vida,
      int nivel,
      this.forca)
      : super(nome, vida, nivel);

  void atacar(Personagem alvo) {
    print("$nome atacou ${alvo.nome}");
    alvo.receberDano(forca);
  }
}