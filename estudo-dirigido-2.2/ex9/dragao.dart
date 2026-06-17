class Dragao extends Inimigo implements Flamejante {
  int poderFogo;

  Dragao(
    String nome,
    int vida,
    int nivel,
    int recompensa,
    this.poderFogo,
  ) : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo(Personagem alvo) {
    print(
      '$nome soltou fogo em ${alvo.nome} causando $poderFogo de dano.',
    );

    alvo.receberDano(poderFogo);
  }

  @override
  void exibirStatus() {
    print('=== DRAGÃO ===');
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Poder de fogo: $poderFogo');
  }

  @override
  void exibirRecompensa() {
    print(
      '$nome foi derrotado! Recompensa: $recompensa moedas.',
    );
  }
}
