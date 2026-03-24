class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano) {
    if (dia < 1 || dia > 31) {
      throw ArgumentError("Dia deve estar entre 1 e 31.");
    }
    if (mes < 1 || mes > 12) {
      throw ArgumentError("Mês deve estar entre 1 e 12.");
    }
    if (ano <= 0) {
      throw ArgumentError("Ano deve ser maior que 0.");
    }
  }

  void exibirData() {
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');
    String a = ano.toString().padLeft(4, '0');

    print("$d/$m/$a");
  }
}

void main() {
  try {
    Data d1 = Data(2, 3, 2006);
    Data d2 = Data(1, 7, 2006);
    Data d3 = Data(26, 3, 2003);

    d1.exibirData();
    d2.exibirData();
    d3.exibirData();

  } catch (e) {
    print("Erro ao criar data: $e");
  }
}