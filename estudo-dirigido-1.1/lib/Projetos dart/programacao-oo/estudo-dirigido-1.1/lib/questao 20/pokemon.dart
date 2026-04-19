class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_nome.isEmpty ||
        _tipo.isEmpty ||
        _nivel < 1 ||
        _nivel > 100 ||
        _hp <= 0) {
      throw Exception("Pokémon inválido");
    }
  }

  int get numero => _numero;
  String get nome => _nome;
  String get tipo => _tipo;
  int get nivel => _nivel;
  int get hp => _hp;
}

class Treinador {
  String _nome;
  Pokemon _pokemon1;
  Pokemon _pokemon2;
  Pokemon _pokemon3;

  Treinador(this._nome, this._pokemon1, this._pokemon2, this._pokemon3) {
    if (_nome.isEmpty) {
      throw Exception("Treinador inválido");
    }
  }

  void exibirTime() {
    print("Treinador: $_nome");
    _exibir(_pokemon1);
    _exibir(_pokemon2);
    _exibir(_pokemon3);
    print("Poder total: ${calcularPoderTotal()}");
    pokemonMaisForte();
  }

  void _exibir(Pokemon p) {
    print(
        "Nº: ${p.numero} | Nome: ${p.nome} | Tipo: ${p.tipo} | Nível: ${p.nivel} | HP: ${p.hp}");
  }

  int calcularPoderTotal() {
    return _pokemon1.nivel +
        _pokemon2.nivel +
        _pokemon3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon maisForte = _pokemon1;

    if (_pokemon2.nivel > maisForte.nivel) {
      maisForte = _pokemon2;
    }
    if (_pokemon3.nivel > maisForte.nivel) {
      maisForte = _pokemon3;
    }

    print("Pokémon mais forte: ${maisForte.nome} (Nível ${maisForte.nivel})");
  }
}

void main() {
  var p1 = Pokemon(25, "Pikachu", "Elétrico", 35, 100);
  var p2 = Pokemon(6, "Charizard", "Fogo", 50, 150);
  var p3 = Pokemon(9, "Blastoise", "Água", 45, 140);

  var treinador = Treinador("Ash", p1, p2, p3);

  treinador.exibirTime();
}