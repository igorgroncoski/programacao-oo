class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

abstract class Ligavel {
  void ligar();
  void desligar();
}
