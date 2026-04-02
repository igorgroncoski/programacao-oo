class Circulo {
  static const double pi = 3.14;

  double _raio;
  String _cor;

  Circulo(this._raio, this._cor) {
    _validar();
  }

  void _validar() {
    if (_raio <= 0) {
      throw Exception("Raio inválido");
    }
    if (_cor.isEmpty) {
      throw Exception("Cor inválida");
    }
  }

  double get raio => _raio;
  String get cor => _cor;

  set raio(double v) {
    _raio = v;
    _validar();
  }

  set cor(String v) {
    _cor = v;
    _validar();
  }

  double calcularArea() {
    return pi * _raio * _raio;
  }

  double calcularPerimetro() {
    return 2 * pi * _raio;
  }

  void exibirResumo() {
    print("Raio: $_raio");
    print("Cor: $_cor");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("");
  }
}

void main() {
  var c1 = Circulo(2, "Azul");
  var c2 = Circulo(4.5, "Vermelho");
  var c3 = Circulo(3, "Verde");

  c1.exibirResumo();
  c2.exibirResumo();
  c3.exibirResumo();
}