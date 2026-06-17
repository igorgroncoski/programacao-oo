class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(
    String titulo,
    String autor,
    this.duracaoMinutos,
  ) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Audiobook');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Duração: $duracaoMinutos minutos');
    print('');
  }

  @override
  String toString() {
    return 'Audiobook | $titulo | $autor | $duracaoMinutos min';
  }
}