class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(
      String nome,
      int vida,
      int nivel,
      int forca,
      this.armadura)
      : super(nome, vida, nivel, forca);

  void ataquePesado(Personagem alvo) {
    print("$nome usou ataque pesado!");
    alvo.receberDano(forca * 2);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print("Armadura: $armadura");
  }
}
