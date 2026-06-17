class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(
    String nome,
    int idade,
    this.matricula,
    this.curso,
  ) : super(nome, idade);

  @override
  void exibirDados() {
    print('Aluno');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Matrícula: $matricula');
    print('Curso: $curso');
    print('');
  }

  @override
  String toString() {
    return 'Aluno | Nome: $nome | Idade: $idade | '
        'Matrícula: $matricula | Curso: $curso';
  }
}
