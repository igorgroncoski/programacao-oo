class Caminhao extends Veiculo implements Fichavel {
  int capacidadeCarga;

  Caminhao(
    String marca,
    String modelo,
    int ano,
    this.capacidadeCarga,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Caminhão');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Capacidade de carga: $capacidadeCarga toneladas');
    print('');
  }

  @override
  String toString() {
    return 'Caminhão | Marca: $marca | Modelo: $modelo | '
        'Ano: $ano | Capacidade: $capacidadeCarga toneladas';
  }
}