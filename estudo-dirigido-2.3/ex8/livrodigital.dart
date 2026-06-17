class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo; // em MB

  LivroDigital(
    String titulo,
    String autor,
    this.tamanhoArquivo,
  ) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Livro Digital');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Tamanho: ${tamanhoArquivo} MB');
    print('');
  }

  @override
  String toString() {
    return 'Livro Digital | $titulo | $autor | ${tamanhoArquivo} MB';
  }
}
