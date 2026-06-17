void main() {
  ListaGenerica<Informativo> livros = ListaGenerica<Informativo>();

  Informativo l1 =
      LivroFisico('Clean Code', 'Robert Martin', 425);

  Informativo l2 =
      LivroDigital('Dart Básico', 'Mariana Souza', 12);

  Informativo l3 =
      Audiobook('POO na Prática', 'Carlos Lima', 180);

  Informativo l4 =
      LivroFisico('Algoritmos Modernos', 'Ana Torres', 350);

  Informativo l5 =
      LivroDigital('Flutter Essencial', 'Pedro Alves', 25);

  livros.adicionar(l1);
  livros.adicionar(l2);
  livros.adicionar(l3);
  livros.adicionar(l4);
  livros.adicionar(l5);

  print('--- Impressão dos livros ---');
  livros.imprimirItens();

  print('\n--- Exibindo informações ---');

  for (var livro in livros.obterItens()) {
    livro.exibirInformacoes();
  }
}