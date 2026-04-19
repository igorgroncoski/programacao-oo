class Personagem {
  String _nome;
  int _vida;
  int _ataque;

  Personagem(this._nome, this._vida, this._ataque) {
    if (_nome.isEmpty || _vida <= 0 || _ataque <= 0) {
      throw Exception("Dados inválidos");
    }
  }

  String get nome => _nome;
  int get vida => _vida;
  int get ataque => _ataque;

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$_nome não pode atacar");
      return;
    }

    if (!inimigo.estaVivo()) {
      print("${inimigo.nome} já está derrotado");
      return;
    }

    inimigo._vida -= _ataque;

    if (inimigo._vida < 0) {
      inimigo._vida = 0;
    }

    print("$_nome atacou ${inimigo.nome}");
  }

  void exibirStatus() {
    print("Nome: $_nome | Vida: $_vida | Ataque: $_ataque");
  }
}

void main() {
  var p1 = Personagem("Herói", 30, 8);
  var p2 = Personagem("Monstro", 25, 6);

  p1.exibirStatus();
  p2.exibirStatus();
  print("");

  while (p1.estaVivo() && p2.estaVivo()) {
    p1.atacar(p2);
    p2.exibirStatus();

    if (!p2.estaVivo()) break;

    p2.atacar(p1);
    p1.exibirStatus();

    print("");
  }

  print("Combate encerrado");
}