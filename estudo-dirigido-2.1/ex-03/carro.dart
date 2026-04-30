class Carro extends Veiculo {
  int quantidadePortas;
 
  Carro(String marca, String modelo, int ano, this.quantidadePortas)
      : super(marca, modelo, ano);
 
  void exibirFicha() {
    super.exibirFicha();
    print('Portas: $quantidadePortas');
  }
}  