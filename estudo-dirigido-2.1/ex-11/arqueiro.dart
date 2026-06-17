class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(
      String nome,
      int vida,
      int nivel,
      int forca,
      this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      flechas--;
      print("$nome disparou uma flecha em ${alvo.nome}");
      alvo.receberDano(forca);
    } else {
      print("$nome está sem flechas.");
    }
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Flechas: $flechas");
  }
}