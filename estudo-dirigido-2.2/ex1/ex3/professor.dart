class Professor extends Pessoa {
  String disciplina;
  double salario;

  Professor(
    String nome,
    int idade,
    this.disciplina,
    this.salario,
  ) : super(nome, idade);

  @override
  void exibirDados() {
    print('Professor');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Disciplina: $disciplina');
    print('Salário: R\$ $salario');
    print('');
  }
}
