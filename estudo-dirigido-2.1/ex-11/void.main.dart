void main() {
  Guerreiro thoran =
      Guerreiro("Thoran", 120, 5, 20, 30);

  Arqueiro lia =
      Arqueiro("Lia", 90, 4, 15, 10);

  Mago merlin =
      Mago("Merlin", 80, 6, 18, 50);

  Goblin gob =
      Goblin("Gob", 60, 2, 20, 25);

  Dragao ignis =
      Dragao("Ignis", 200, 10, 500, 35);

  thoran.atacar(gob);

  lia.atacar(gob);

  merlin.lancarMagia(ignis);

  ignis.soltarFogo(thoran);

  print("\n=== STATUS FINAL ===");

  thoran.exibirStatus();
  print("");

  lia.exibirStatus();
  print("");

  merlin.exibirStatus();
  print("");

  gob.exibirStatus();
  print("");

  ignis.exibirStatus();
}