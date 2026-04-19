class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  Funcionario.estagiario(String nome)
      : _nome = nome,
        _cargo = "Estagiário",
        _salario = 1200;

  Funcionario.pleno(String nome, double salario)
      : _nome = nome,
        _cargo = "Pleno",
        _salario = salario;

  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = "Gerente",
        _salario = 8000 + bonus;

  double calcularPagamentoMensal() {
    return _salario;
  }

  void exibirDados() {
    print("Nome: $_nome | Cargo: $_cargo | Salário: $_salario");
  }
}

void main() {
  Funcionario f1 = Funcionario.estagiario("João");
  Funcionario f2 = Funcionario.pleno("Larissa", 3500);
  Funcionario f3 = Funcionario.gerente(nome: "Carlos", bonus: 1500);

  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();
}
//a)Permite criar diferentes perfis de funcionário de forma clara e direta, sem precisar configurar manualmente atributos depois da criação.
//b)Cada construtor define cargo e salário iniciais distintos: estagiário com valor fixo, pleno com salário informado, gerente com salário base mais bônus.
//c)Porque garante consistência desde a criação do objeto, evitando estados intermediários incorretos e simplificando o uso da cla