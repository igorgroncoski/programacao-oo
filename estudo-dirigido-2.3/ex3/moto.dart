class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(
    String marca,
    String modelo,
    int ano,
    this.cilindradas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Moto');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Cilindradas: $cilindradas');
    print('');
  }

  @override
  String toString() {
    return 'Moto | Marca: $marca | Modelo: $modelo | '
        'Ano: $ano | Cilindradas: $cilindradas';
  }
}