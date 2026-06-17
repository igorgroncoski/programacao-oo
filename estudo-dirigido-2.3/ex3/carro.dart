class Carro extends Veiculo implements Fichavel {
  int quantidadePortas;

  Carro(
    String marca,
    String modelo,
    int ano,
    this.quantidadePortas,
  ) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Carro');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Portas: $quantidadePortas');
    print('');
  }

  @override
  String toString() {
    return 'Carro | Marca: $marca | Modelo: $modelo | '
        'Ano: $ano | Portas: $quantidadePortas';
  }
}