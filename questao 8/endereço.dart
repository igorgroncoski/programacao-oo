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
    print("----------------------");
  }
}

void main() {
  try {
    Endereco e1 = Endereco("Rua das Flores", 123, "Centro", "Curitiba", "PR", 80012345);
    Endereco e2 = Endereco("Av. Brasil", 987, "Jardim", "Sao Paulo", "SP", 12345678);
    Endereco e3 = Endereco("Rua Nova", 50, "Bela Vista", "Rio de Janeiro", "RJ", 87654321);

    e1.exibirEndereco();
    e2.exibirEndereco();
    e3.exibirEndereco();

  } catch (e) {
    print("Erro: $e");
  }
}