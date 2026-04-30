class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  void exibir() {
    print('Produto: $nome - R\$ $preco');
  }

  
  void exibirDados() {
    exibir();
  }
}
