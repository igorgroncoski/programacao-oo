
void main() {
 
  var i1 = IngressoVip('Show Rock', 200.00, 80.00);

  var i2 =
      IngressoPromocional('Teatro Infantil', 100.00, 20.00);

  var i3 = IngressoCamarote(
      'Festival Jazz',
      300.00,
      50.00,
      'Setor A');

  var i4 =
      IngressoPromocional('Cinema Especial', 60.00, 15.00);

  var i5 = IngressoVip('Show Pop', 180.00, 70.00);


  ListaGenerica<Calculavel> lista =
      ListaGenerica<Calculavel>();

 
  lista.adicionar(i1);
  lista.adicionar(i2);
  lista.adicionar(i3);
  lista.adicionar(i4);
  lista.adicionar(i5);

  
  print('=== Lista de Ingressos ===');
  lista.imprimirItens();

  
  print('\n=== Valores Finais ===');

  for (var ingresso in lista.itens) {
    print(
        'Valor Final: R\$ ${ingresso.valorFinal().toStringAsFixed(2)}');
  }
}