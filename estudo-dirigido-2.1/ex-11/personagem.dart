lass Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw Exception("Nome inválido");
    }

    if (vida < 0) {
      throw Exception("Vida inválida");
    }

    if (nivel < 1) {
      throw Exception("Nível inválido");
    }
  }

  void exibirStatus() {
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nível: $nivel");
  }

  void receberDano(int dano) {
    vida -= dano;

    if (vida < 0) {
      vida = 0;
    }
  }

  bool estaVivo() {
    return vida > 0;
  }
}
