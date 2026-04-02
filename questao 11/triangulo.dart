import 'dart:math';

class Triangulo {
  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {
    _validar();
  }

  void _validar() {
    if (_lado1 <= 0 || _lado2 <= 0 || _lado3 <= 0) {
      throw Exception("Lados inválidos");
    }

    if (!(_lado1 + _lado2 > _lado3 &&
        _lado1 + _lado3 > _lado2 &&
        _lado2 + _lado3 > _lado1)) {
      throw Exception("Não forma triângulo");
    }

    if (_caractere.isEmpty || _caractere.length != 1) {
      throw Exception("Caractere inválido");
    }
  }

  double get lado1 => _lado1;
  double get lado2 => _lado2;
  double get lado3 => _lado3;
  String get caractere => _caractere;

  set lado1(double v) {
    _lado1 = v;
    _validar();
  }

  set lado2(double v) {
    _lado2 = v;
    _validar();
  }

  set lado3(double v) {
    _lado3 = v;
    _validar();
  }

  set caractere(String v) {
    _caractere = v;
    _validar();
  }

  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double p = calcularPerimetro() / 2;
    return sqrt(p * (p - _lado1) * (p - _lado2) * (p - _lado3));
  }

  void desenharEsquerda() {
    int h = _lado1.toInt();
    for (int i = 1; i <= h; i++) {
      print(_caractere * i);
    }
  }

  void desenharCentralizado() {
    int h = _lado1.toInt();
    for (int i = 1; i <= h; i++) {
      print(" " * (h - i) + _caractere * (2 * i - 1));
    }
  }

  void exibirResumo() {
    print("Lados: $_lado1, $_lado2, $_lado3");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
  }
}

void main() {
  var t1 = Triangulo(3, 4, 5, "*");
  var t2 = Triangulo(5, 5, 6, "#");

  t1.exibirResumo();
  t1.desenharEsquerda();
  t1.desenharCentralizado();

  print("");

  t2.exibirResumo();
  t2.desenharEsquerda();
  t2.desenharCentralizado();
}