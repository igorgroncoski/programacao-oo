class LivroDigital extends Livro
    implements Informativo {
  double tamanhoArquivo;

  LivroDigital(
    String titulo,
    String autor,
    this.tamanhoArquivo,
  ) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('Arquivo: $tamanhoArquivo MB');
  }
}
