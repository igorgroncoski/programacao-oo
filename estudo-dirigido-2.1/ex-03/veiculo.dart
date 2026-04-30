class Veiculo {
  String marca, modelo;
  int ano;
 
  Veiculo(this.marca, this.modelo, this.ano);
 
  void exibirFicha() {
    print('$marca $modelo - $ano');
  }
}