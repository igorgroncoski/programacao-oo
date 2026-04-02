class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(this.hora, this.minuto, this.segundo) {
    if (hora < 0 || hora > 23) {
      throw ArgumentError("Hora deve estar entre 0 e 23.");
    }
    if (minuto < 0 || minuto > 59) {
      throw ArgumentError("Minuto deve estar entre 0 e 59.");
    }
    if (segundo < 0 || segundo > 59) {
      throw ArgumentError("Segundo deve estar entre 0 e 59.");
    }
  }

  void exibirHorario() {
    String h = hora.toString().padLeft(2, '0');
    String m = minuto.toString().padLeft(2, '0');
    String s = segundo.toString().padLeft(2, '0');

    print("$h:$m:$s");
  }
}

void main() {
  try {
    Relogio r1 = Relogio(10, 30, 45);
    Relogio r2 = Relogio(23, 59, 59);
    Relogio r3 = Relogio(0, 5, 9);

    r1.exibirHorario();
    r2.exibirHorario();
    r3.exibirHorario();

    // Relogio r4 = Relogio(25, 10, 10);

  } catch (e) {
    print("Erro ao criar relógio: $e");
  }
}