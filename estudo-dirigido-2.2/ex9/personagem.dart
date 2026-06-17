abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw Exception('O nome não pode ser vazio.');
    }

    if (vida < 0) {
      throw Exception('A vida não pode ser negativa.');
    }

    if (nivel < 1) {
      throw Exception('O nível deve ser maior ou igual a 1.');
    }
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

  void exibirStatus();
}

abstract class Combatente extends Personagem
    implements Atacavel {
  int forca;

  Combatente(
    String nome,
    int vida,
    int nivel,
    this.forca,
  ) : super(nome, vida, nivel);
}