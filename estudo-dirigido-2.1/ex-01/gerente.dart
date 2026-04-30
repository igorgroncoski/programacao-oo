class Gerente extends Funcionario {
  String setor;
 
  Gerente(String nome, double salario, this.setor)
      : super(nome, salario);
 
  @override
  void exibirDados() {
    super.exibirDados();
    print('Setor: $setor');
  }
}