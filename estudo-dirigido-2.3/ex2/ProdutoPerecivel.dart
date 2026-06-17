class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(
    String nome,
    double preco,
    this.dataValidade,
  ) : super(nome, preco);

  @override
  void exibir() {
    print('Produto Perecível');
    print('Nome: $nome');
    print('Preço: R\$ ${preco.toStringAsFixed(2)}');
    print('Data de validade: $dataValidade');
    print('');
  }

  @override
  String toString() {
    return 'Produto Perecível | Nome: $nome | '
        'Preço: R\$ ${preco.toStringAsFixed(2)} | '
        'Validade: $dataValidade';
  }
}