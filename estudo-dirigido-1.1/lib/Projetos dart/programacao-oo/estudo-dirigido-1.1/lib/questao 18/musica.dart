class Musica {
  String _titulo;
  String _artista;
  int _duracaoSegundos;

  Musica(this._titulo, this._artista, this._duracaoSegundos) {
    if (_titulo.isEmpty || _artista.isEmpty || _duracaoSegundos <= 0) {
      throw Exception("Música inválida");
    }
  }

  String get titulo => _titulo;
  String get artista => _artista;
  int get duracaoSegundos => _duracaoSegundos;
}

class Playlist {
  String _nome;
  Musica _musica1;
  Musica _musica2;
  Musica _musica3;

  Playlist(this._nome, this._musica1, this._musica2, this._musica3) {
    if (_nome.isEmpty) {
      throw Exception("Nome inválido");
    }
  }

  void exibirPlaylist() {
    print("Playlist: $_nome");
    _exibir(_musica1);
    _exibir(_musica2);
    _exibir(_musica3);
    print("Duração total: ${calcularDuracaoTotal()}s");
    print("");
  }

  void _exibir(Musica m) {
    print("Título: ${m.titulo} | Artista: ${m.artista} | Duração: ${m.duracaoSegundos}s");
  }

  int calcularDuracaoTotal() {
    return _musica1.duracaoSegundos +
        _musica2.duracaoSegundos +
        _musica3.duracaoSegundos;
  }

  void tocarPlaylist() {
    print("Tocando playlist: $_nome");
    _tocar(_musica1);
    _tocar(_musica2);
    _tocar(_musica3);
  }

  void _tocar(Musica m) {
    print("Tocando: ${m.titulo} - ${m.artista}");
  }
}

void main() {
  var m1 = Musica("Numb", "Linkin Park", 185);
  var m2 = Musica("Shape of You", "Ed Sheeran", 240);
  var m3 = Musica("Blinding Lights", "The Weeknd", 200);

  var playlist = Playlist("Favoritas", m1, m2, m3);

  playlist.exibirPlaylist();
  playlist.tocarPlaylist();
}