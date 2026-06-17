void main() {
  Informativo digital =
      LivroDigital('Dart', 'Autor A', 8.5);

  Informativo fisico =
      LivroFisico('POO', 'Autor B', 300);

  digital.exibirInformacoes();
  print('');
  fisico.exibirInformacoes();
}