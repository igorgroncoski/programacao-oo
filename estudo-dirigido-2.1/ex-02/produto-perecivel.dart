
class ProdutoPerecivel extends Produto {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    super.exibir();
    print('Validade: $dataValidade');
  }

 
  void exibirDados() {
    exibir();
  }
}
