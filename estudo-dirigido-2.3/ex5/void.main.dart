void main() {
  ListaGenerica<Apresentavel> pessoas =
      ListaGenerica<Apresentavel>();

  Apresentavel pessoa1 =
      Aluno('Ana', 19, 'A001', 'ADS');

  Apresentavel pessoa2 =
      Aluno(
        'Bruno',
        22,
        'A002',
        'Engenharia de Software',
      );

  Apresentavel pessoa3 =
      Professor(
        'Carla',
        38,
        'POO',
        2000.00,
      );

  Apresentavel pessoa4 =
      Professor(
        'Diego',
        41,
        'Banco de Dados',
        1900.00,
      );

  Apresentavel pessoa5 =
      Coordenador(
        'Elisa',
        45,
        'Tecnologia',
        15,
      );

  pessoas.adicionar(pessoa1);
  pessoas.adicionar(pessoa2);
  pessoas.adicionar(pessoa3);
  pessoas.adicionar(pessoa4);
  pessoas.adicionar(pessoa5);

  print('--- Impressão das pessoas ---');
  pessoas.imprimirItens();

  print('\n--- Exibindo dados ---');

  for (var pessoa in pessoas.obterItens()) {
    pessoa.exibirDados();
  }
}