**library_view.dart**
```dart
import 'dart:io';

import '../model/book.dart';
import '../model/user.dart';
import '../model/loan.dart';

class LibraryView {
  void exibirMenu() {
    print('');
    print('=== Sistema de Biblioteca ===');
    print('1) Cadastrar livro');
    print('2) Listar livros emprestados');
    print('3) Cadastrar usuário');
    print('4) Listar usuários');
    print('5) Realizar empréstimo');
    print('6) Realizar devolução');
    print('9) Sair');
    print('');
  }

  int lerOpcao() {
    stdout.write('Escolha uma opção: ');
    final entrada = stdin.readLineSync();
    return int.tryParse(entrada ?? '') ?? -1;
  }

  Book lerLivro() {
    final titulo = _lerTextoObrigatorio('Título');
    final autor = _lerTextoObrigatorio('Autor');
    return Book(titulo: titulo, autor: autor);
  }

  User lerUsuario() {
    final nome = _lerTextoObrigatorio('Nome');
    return User(nome: nome);
  }

  int lerIndice(String tipo) {
    stdout.write('Digite o número do $tipo: ');
    final entrada = stdin.readLineSync();
    final numeroInformado = int.tryParse(entrada ?? '');
    if (numeroInformado == null) return -1;
    return numeroInformado - 1;
  }

  void exibirLivrosDisponiveis(List livros) {
    print('');
    print('--- Livros disponíveis ---');
    for (var i = 0; i  emprestimos) {
    print('');
    print('--- Livros emprestados ---');
    for (var i = 0; i  usuarios) {
    if (usuarios.isEmpty) {
      print('Nenhum usuário cadastrado.');
      return;
    }
    print('');
    print('--- Usuários cadastrados ---');
    for (var i = 0; i  emprestimos) {
    print('');
    print('--- Empréstimos ativos ---');
    for (var i = 0; i < emprestimos.length; i++) {
      final l = emprestimos[i];
      print('${i + 1}) Livro: ${l.livro.titulo} - Usuário: ${l.usuario.nome}');
    }
  }

  void exibirMensagem(String mensagem) {
    print(mensagem);
  }

  void exibirOpcaoInvalida() {
    print('Opção inválida. Tente novamente.');
  }

  String _lerTextoObrigatorio(String campo) {
    while (true) {
      stdout.write('$campo: ');
      final valor = stdin.readLineSync()?.trim() ?? '';
      if (valor.isNotEmpty) return valor;
      print('$campo não pode ficar vazio.');
    }
  }
}
```