class Dragao extends Inimigo {
  int poderFogo;

  Dragao(
      String nome,
      int vida,
      int nivel,
      int recompensa,
      this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print("$nome soltou fogo em ${alvo.nome}");
    alvo.receberDano(poderFogo);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Poder de fogo: $poderFogo");
  }
}
