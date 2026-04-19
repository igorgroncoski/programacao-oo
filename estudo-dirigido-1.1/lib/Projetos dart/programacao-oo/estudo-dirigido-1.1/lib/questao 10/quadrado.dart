class Quadrado {
  double lado;
  String caractere;

  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      throw ArgumentError("Lado deve ser maior que 0.");
    }
    if (caractere.isEmpty || caractere.length != 1) {
      throw ArgumentError("Caractere deve ter exatamente 1 simbolo.");
    }
  }

  double calcularArea() {
    return lado * lado;
  }

  double calcularPerimetro() {
    return 4 * lado;
  }

  void desenhar() {
    int tamanho = lado.round(); // converte lado para inteiro para desenhar
    for (int i = 0; i < tamanho; i++) {
      print(caractere * tamanho);
    }
  }

  void exibirResumo() {
    print("Lado: $lado");
    print("Area: ${calcularArea().toStringAsFixed(2)}");
    print("Perimetro: ${calcularPerimetro().toStringAsFixed(2)}");
  }

  bool ehIgual(Quadrado outroQuadrado) {
    return lado == outroQuadrado.lado && caractere == outroQuadrado.caractere;
  }
}

void main() {
  try {
    // 2 quadrados diferentes
    Quadrado q1 = Quadrado(4, "*");
    Quadrado q2 = Quadrado(6, "#");

    // 2 quadrados iguais
    Quadrado q3 = Quadrado(5, "@");
    Quadrado q4 = Quadrado(5, "@");

    List<Quadrado> quadrados = [q1, q2, q3, q4];

    for (int i = 0; i < quadrados.length; i++) {
      print("Quadrado ${i+1}");
      quadrados[i].exibirResumo();
      quadrados[i].desenhar();
      print("----------------------");
    }

    // Verificar quais quadrados sao iguais
    for (int i = 0; i < quadrados.length; i++) {
      for (int j = i + 1; j < quadrados.length; j++) {
        if (quadrados[i].ehIgual(quadrados[j])) {
          print("Quadrado ${i+1} e Quadrado ${j+1} sao iguais.");
        }
      }
    }

  } catch (e) {
    print("Erro: $e");
  }
}