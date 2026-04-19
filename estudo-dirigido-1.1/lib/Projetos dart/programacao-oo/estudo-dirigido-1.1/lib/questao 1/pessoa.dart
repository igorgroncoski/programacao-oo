class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (nome.trim().isEmpty) {
      throw ArgumentError("O nome não pode ser vazio.");
    }
    if (idade < 0) {
      throw ArgumentError("A idade deve ser maior ou igual a 0.");
    }
  }

  void exibirDados() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("----------------------");
  }
}

void main() {
  try {
    
    Pessoa p1 = Pessoa("igor", 22);
    Pessoa p2 = Pessoa("gustavo", 20);
    Pessoa p3 = Pessoa("fabiano", 19);

    p1.exibirDados();
    p2.exibirDados();
    p3.exibirDados();

  } catch (e) {
    print("Erro ao criar pessoa: $e");
  }
}