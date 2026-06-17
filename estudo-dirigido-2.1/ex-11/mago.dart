class Mago extends Combatente {
  int mana;

  Mago(
      String nome,
      int vida,
      int nivel,
      int forca,
      this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (mana >= 10) {
      mana -= 10;
      int dano = forca + 15;

      print("$nome lançou magia em ${alvo.nome}");
      alvo.receberDano(dano);
    } else {
      print("$nome não possui mana suficiente.");
    }
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Mana: $mana");
  }
}
