class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  int cep;

  Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep) {
    if (rua.isEmpty) {
      throw ArgumentError("Rua nao pode ser vazia.");
    }
    if (numero <= 0) {
      throw ArgumentError("Numero deve ser maior que 0.");
    }
    if (bairro.isEmpty) {
      throw ArgumentError("Bairro nao pode ser vazio.");
    }
    if (cidade.isEmpty) {
      throw ArgumentError("Cidade nao pode ser vazia.");
    }
    if (estado.isEmpty) {
      throw ArgumentError("Estado nao pode ser vazio.");
    }
    if (cep <= 0) {
      throw ArgumentError("CEP deve ser maior que 0.");
    }
  }

  void exibirEndereco() {
    String cepFormatado = cep.toString().padLeft(8, '0');
    cepFormatado = cepFormatado.substring(0,5) + '-' + cepFormatado.substring(5);

    print("Rua: $rua, Numero: $numero");
    print("Bairro: $bairro");
    print("Cidade: $cidade");
    print("Estado: $estado");
    print("CEP: $cepFormatado");
  }
}

class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (nome.isEmpty) {
      throw ArgumentError("Nome nao pode ser vazio.");
    }
    if (idade < 0) {
      throw ArgumentError("Idade deve ser maior ou igual a 0.");
    }
    if (cpf.isEmpty) {
      throw ArgumentError("CPF nao pode ser vazio.");
    }
  }

  void exibirPessoa() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("CPF: $cpf");
    print("Endereco:");
    endereco.exibirEndereco();
    print("----------------------");
  }
}

void main() {
  try {
    Endereco end1 = Endereco("Rua das Flores", 123, "Centro", "Curitiba", "PR", 80012345);
    Endereco end2 = Endereco("Av. Brasil", 987, "Jardim", "Sao Paulo", "SP", 12345678);
    Endereco end3 = Endereco("Rua Nova", 50, "Bela Vista", "Rio de Janeiro", "RJ", 87654321);

    Pessoa p1 = Pessoa("Ana", 25, "123.456.789-00", end1);
    Pessoa p2 = Pessoa("Bruno", 30, "987.654.321-11", end2);
    Pessoa p3 = Pessoa("Carla", 40, "456.789.123-22", end3);

    p1.exibirPessoa();
    p2.exibirPessoa();
    p3.exibirPessoa();

  } catch (e) {
    print("Erro: $e");
  }
}