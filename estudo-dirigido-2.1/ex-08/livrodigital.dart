LivroDigital(
      String titulo,
      String autor,
      this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print("Arquivo: $tamanhoArquivo MB");
  }
}