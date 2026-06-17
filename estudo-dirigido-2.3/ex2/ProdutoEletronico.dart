class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(
    String nome,
    double preco,
    this.garantiaMeses,
  ) : super(nome, preco);

  @override
  void exibir() {
    print('Produto Eletrônico');
    print('Nome: $nome');
    print('Preço: R\$ ${preco.toStringAsFixed(2)}');
    print('Garantia: $garantiaMeses meses');
    print('');
  }

  @override
  String toString() {
    return 'Produto Eletrônico | Nome: $nome | '
        'Preço: R\$ ${preco.toStringAsFixed(2)} | '
        'Garantia: $garantiaMeses meses';
  }
}
