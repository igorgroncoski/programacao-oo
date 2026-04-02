class Semaforo {
  String _corAtual;
  int _tempoRestante;

  Semaforo(this._corAtual, this._tempoRestante) {
    _validar();
  }

  void _validar() {
    if (!["vermelho", "verde", "amarelo"].contains(_corAtual)) {
      throw Exception("Cor inválida");
    }
  }

  String _emoji() {
    if (_corAtual == "vermelho") return "🔴";
    if (_corAtual == "verde") return "🟢";
    return "🟡";
  }

  int _tempoPorCor(String cor) {
    if (cor == "vermelho") return 5;
    if (cor == "verde") return 4;
    return 2;
  }

  void trocarCor() {
    if (_corAtual == "vermelho") {
      _corAtual = "verde";
    } else if (_corAtual == "verde") {
      _corAtual = "amarelo";
    } else {
      _corAtual = "vermelho";
    }
    _tempoRestante = _tempoPorCor(_corAtual);
  }

  void reduzirTempo() {
    _tempoRestante--;
    if (_tempoRestante <= 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print("Cor: ${_emoji()} ($_corAtual) | Tempo: $_tempoRestante");
  }
}

void main() {
  var s = Semaforo("vermelho", 5);

  for (int i = 0; i < 15; i++) {
    s.exibirEstado();
    s.reduzirTempo();
  }
}