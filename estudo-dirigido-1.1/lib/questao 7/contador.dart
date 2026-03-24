class Contador {
  int valor;

  Contador(this.valor) {
    if (valor < 0) {
      throw ArgumentError("Valor inicial deve ser maior ou igual a 0.");
    }
  }

  void incrementar() {
    valor++;
  }

  void decrementar() {
    if (valor > 0) {
      valor--;
    }
  }

  void zerar() {
    valor = 0;
  }

  void exibirValor() {
    print("Valor atual: $valor");
  }
}

void main() {
  try {
    Contador c1 = Contador(3);
    Contador c2 = Contador(0);

    c1.exibirValor();
    c1.incrementar();
    c1.exibirValor();
    c1.decrementar();
    c1.exibirValor();
    c1.zerar();
    c1.exibirValor();

    c2.exibirValor();
    c2.decrementar(); 
    c2.exibirValor();
    c2.incrementar();
    c2.exibirValor();

  } catch (e) {
    print("Erro: $e");
  }
}