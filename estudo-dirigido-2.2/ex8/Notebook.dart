class Notebook extends Dispositivo
    implements Ligavel {
  int memoriaRam;

  Notebook(
    String marca,
    String modelo,
    this.memoriaRam,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print('Notebook ligando...');
  }