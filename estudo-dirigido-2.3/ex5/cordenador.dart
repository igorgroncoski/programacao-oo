class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(
    String nome,
    int idade,
    this.area,
    this.tempoExperiencia,
  ) : super(nome, idade);

  @override
  void exibirDados() {
    print('Coordenador');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Área: $area');
    print('Experiência: $tempoExperiencia anos');
    print('');
  }

  @override
  String toString() {
    return 'Coordenador | Nome: $nome | Idade: $idade | '
        'Área: $area | '
        'Experiência: $tempoExperiencia anos';
  }
}
