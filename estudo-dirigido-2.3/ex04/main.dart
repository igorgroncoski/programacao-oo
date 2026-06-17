void main() {
  
  var c1 = ContaPoupanca('Ana', 1000.00);
  var c2 = ContaCorrente('Bruno', 1500.00);
  var c3 = ContaInvestimento('Carla', 5000.00);
  var c4 = ContaPoupanca('Diego', 2500.00);
  var c5 = ContaCorrente('Elisa', 800.00);


  ListaGenerica<Rentavel> lista = ListaGenerica<Rentavel>();

 
  lista.adicionar(c1);
  lista.adicionar(c2);
  lista.adicionar(c3);
  lista.adicionar(c4);
  lista.adicionar(c5);

 
  print('=== Antes do rendimento ===');

  for (var conta in [c1, c2, c3, c4, c5]) {
    print(conta);
  }

  for (var conta in lista.itens) {
    conta.aplicarRendimento();
  }


  print('\n=== Depois do rendimento ===');

  for (var conta in [c1, c2, c3, c4, c5]) {
    print(conta);
  }
}