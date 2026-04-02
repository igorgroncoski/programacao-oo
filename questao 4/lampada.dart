class Lampada {
  bool ligada;
  int quantidadeLigacoes;
  bool queimada;

  Lampada()
      : ligada = false,
        quantidadeLigacoes = 0,
        queimada = false;

  void ligar() {
    if (queimada) {
      print("A lâmpada está queimada e não pode ser ligada.");
      return;
    }

    if (!ligada) {
      ligada = true;
      quantidadeLigacoes++;

      if (quantidadeLigacoes >= 5) {
        queimada = true;
        ligada = false;
        print("A lâmpada queimou!");
      }
    }
  }

  void desligar() {
    if (!queimada) {
      ligada = false;
    }
  }

  void exibirEstado() {
    if (queimada) {
      print("Estado: Queimada");
    } else if (ligada) {
      print("Estado: Ligada");
    } else {
      print("Estado: Desligada");
    }
  }
}

void main() {
  Lampada lampada = Lampada();

  lampada.exibirEstado();

  lampada.ligar();
  lampada.exibirEstado();

  lampada.desligar();
  lampada.exibirEstado();

  lampada.ligar();
  lampada.ligar();
  lampada.ligar();
  lampada.ligar();

  lampada.exibirEstado();

  lampada.ligar();
  lampada.exibirEstado();
}