class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);
}

abstract class Calculavel {
  double valorFinal();
}