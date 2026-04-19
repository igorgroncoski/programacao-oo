class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2) {
    if (nota1 < 0 || nota1 > 10) {
      throw ArgumentError("Nota1 deve estar entre 0 e 10.");
    }
    if (nota2 < 0 || nota2 > 10) {
      throw ArgumentError("Nota2 deve estar entre 0 e 10.");
    }
  }

  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }

  String verificarAprovacao() {
    return calcularMedia() >= 6 ? "Aprovado" : "Reprovado";
  }

  void exibirBoletim() {
    double media = calcularMedia();
    print("Nome: $nome");
    print("Nota1: $nota1");
    print("Nota2: $nota2");
    print("Média: ${media.toStringAsFixed(2)}");
    print("Situação: ${verificarAprovacao()}");
    print("----------------------");
  }
}

void main() {
  try {
    Aluno a1 = Aluno("lili", 8.0, 7.5);
    Aluno a2 = Aluno("igor", 5.0, 6.0);
    Aluno a3 = Aluno("gustavo", 9.0, 8.5);
    Aluno a4 = Aluno("betina", 4.0, 5.5);
    Aluno a5 = Aluno("fabiano", 6.0, 6.0);
    Aluno a6 = Aluno("Fernanda", 7.0, 9.0);
    Aluno a7 = Aluno("Gabriel", 3.0, 4.0);
    Aluno a8 = Aluno("joao", 10.0, 9.5);
    Aluno a9 = Aluno("joana", 5.5, 5.0);
    Aluno a10 = Aluno("rodrigo", 6.5, 7.0);

    a1.exibirBoletim();
    a2.exibirBoletim();
    a3.exibirBoletim();
    a4.exibirBoletim();
    a5.exibirBoletim();
    a6.exibirBoletim();
    a7.exibirBoletim();
    a8.exibirBoletim();
    a9.exibirBoletim();
    a10.exibirBoletim();

  } catch (e) {
    print("Erro: $e");
  }
}