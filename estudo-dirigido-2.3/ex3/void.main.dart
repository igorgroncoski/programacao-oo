void main() {
  ListaGenerica<Fichavel> veiculos =
      ListaGenerica<Fichavel>();

  Fichavel veiculo1 =
      Carro('Toyota', 'Corolla', 2022, 4);

  Fichavel veiculo2 =
      Carro('Honda', 'Civic', 2021, 4);

  Fichavel veiculo3 =
      Moto('Yamaha', 'Fazer', 2023, 250);

  Fichavel veiculo4 =
      Moto('Honda', 'Biz', 2020, 125);

  Fichavel veiculo5 =
      Caminhao('Volvo', 'VM', 2019, 12);

  veiculos.adicionar(veiculo1);
  veiculos.adicionar(veiculo2);
  veiculos.adicionar(veiculo3);
  veiculos.adicionar(veiculo4);
  veiculos.adicionar(veiculo5);

  print('--- Impressão dos veículos ---');
  veiculos.imprimirItens();

  print('\n--- Fichas dos veículos ---');

  for (var veiculo in veiculos.obterItens()) {
    veiculo.exibirFicha();
  }
}