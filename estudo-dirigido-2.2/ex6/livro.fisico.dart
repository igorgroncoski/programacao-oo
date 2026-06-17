class LivroFisico extends Livro
    implements Informativo {
  int quantidadePaginas;

  LivroFisico(
    String titulo,
    String autor,
    this.quantidadePaginas,
  ) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('Páginas: $quantidadePaginas');
  }
}