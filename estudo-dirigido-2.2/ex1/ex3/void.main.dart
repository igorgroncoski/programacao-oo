void main() {
  Pessoa aluno =
      Aluno('Pedro', 20, '2025001', 'ADS');

  Pessoa professor =
      Professor('Carlos', 45, 'POO', 7500);

  aluno.exibirDados();
  professor.exibirDados();
}