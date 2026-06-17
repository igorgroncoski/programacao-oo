void main() {
  Guerreiro thoran =
      Guerreiro('Thoran', 120, 5, 20, 30);

  Arqueiro lia =
      Arqueiro('Lia', 90, 4, 15, 10);

  Mago merlin =
      Mago('Merlin', 80, 6, 18, 50);

  Goblin gob =
      Goblin('Gob', 30, 2, 50, 25);

  Dragao ignis =
      Dragao('Ignis', 200, 10, 500, 35);

  print('=== COMBATE ===\n');

  thoran.atacar(gob);

  lia.atacar(gob);

  merlin.lancarMagia(ignis);

  ignis.soltarFogo(thoran);

  print('\n=== STATUS FINAL ===\n');

  thoran.exibirStatus();
  print('');

  lia.exibirStatus();
  print('');

  merlin.exibirStatus();
  print('');

  gob.exibirStatus();

  if (!gob.estaVivo()) {
    gob.exibirRecompensa();
  }

  print('');

  ignis.exibirStatus();

  if (!ignis.estaVivo()) {
    ignis.exibirRecompensa();
  }
}