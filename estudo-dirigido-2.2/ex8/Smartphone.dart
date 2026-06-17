class Smartphone extends Dispositivo
    implements Ligavel {
  String sistemaOperacional;

  Smartphone(
    String marca,
    String modelo,
    this.sistemaOperacional,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print('Smartphone ligando...');
  }

  @override
  void desligar() {
    print('Smartphone desligando...');
  }
}
