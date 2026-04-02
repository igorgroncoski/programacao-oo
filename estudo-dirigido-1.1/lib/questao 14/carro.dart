class Motor {
  int _potencia;
  String _tipo;

  Motor(this._potencia, this._tipo) {
    if (_potencia <= 0 || _tipo.isEmpty) {
      throw Exception("Motor inválido");
    }
  }

  int get potencia => _potencia;
  String get tipo => _tipo;
}

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (_modelo.isEmpty) {
      throw Exception("Modelo inválido");
    }
  }

  String get modelo => _modelo;
  Motor get motor => _motor;

  void exibirMotor() {
    print("Potência: ${_motor.potencia}");
    print("Tipo: ${_motor.tipo}");
  }

  void exibirCarro() {
    print("Modelo: $_modelo");
    exibirMotor();
    print("");
  }
}

void main() {
  var m1 = Motor(150, "Gasolina");
  var m2 = Motor(200, "Diesel");

  var c1 = Carro("Sedan", m1);
  var c2 = Carro("SUV", m2);

  c1.exibirCarro();
  c2.exibirCarro();
}