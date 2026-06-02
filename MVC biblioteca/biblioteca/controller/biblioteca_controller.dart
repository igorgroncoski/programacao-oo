import '../model/book.dart';
import '../model/user.dart';
import '../model/loan.dart';
import '../view/library_view.dart';

class LibraryController {
  final LibraryView _view = LibraryView();

  final List _books = [];
  final List _users = [];
  final List _loans = [];

  void executar() {
    var terminou = false;

    while (!terminou) {
      _view.exibirMenu();
      final opcao = _view.lerOpcao();

      switch (opcao) {
        case 1:
          _cadastrarLivro();
          break;
        case 2:
          _listarLivrosEmprestados();
          break;
        case 3:
          _cadastrarUsuario();
          break;
        case 4:
          _listarUsuarios();
          break;
        case 5:
          _realizarEmprestimo();
          break;
        case 6:
          _realizarDevolucao();
          break;
        case 9:
          terminou = true;
          _view.exibirMensagem('Programa encerrado.');
          break;
        default:
          _view.exibirOpcaoInvalida();
      }
    }
  }

  void _cadastrarLivro() {
    final livro = _view.lerLivro();
    _books.add(livro);
    _view.exibirMensagem('Livro cadastrado com sucesso.');
  }

  void _listarLivrosEmprestados() {
    final emprestados = _loans.where((l) => l.dataDevolucao == null).toList();
    if (emprestados.isEmpty) {
      _view.exibirMensagem('Nenhum livro emprestado no momento.');
    } else {
      _view.exibirLivrosEmprestados(emprestados);
    }
  }

  void _cadastrarUsuario() {
    final usuario = _view.lerUsuario();
    _users.add(usuario);
    _view.exibirMensagem('Usuário cadastrado com sucesso.');
  }

  void _listarUsuarios() {
    _view.exibirUsuarios(_users);
  }

  void _realizarEmprestimo() {
    if (_books.isEmpty || _users.isEmpty) {
      _view.exibirMensagem('É necessário ter livros e usuários cadastrados.');
      return;
    }

    final livrosDisponiveis = _books.where((b) =>
        !_loans.any((l) => l.livro.titulo == b.titulo && l.dataDevolucao == null)).toList();
    if (livrosDisponiveis.isEmpty) {
      _view.exibirMensagem('Nenhum livro disponível para empréstimo.');
      return;
    }

    _view.exibirLivrosDisponiveis(livrosDisponiveis);
    final indiceLivro = _view.lerIndice('livro');
    if (!_indiceValido(indiceLivro, livrosDisponiveis.length)) {
      _view.exibirMensagem('Livro não encontrado.');
      return;
    }
    final livroSelecionado = livrosDisponiveis[indiceLivro];

    _view.exibirUsuarios(_users);
    final indiceUsuario = _view.lerIndice('usuário');
    if (!_indiceValido(indiceUsuario, _users.length)) {
      _view.exibirMensagem('Usuário não encontrado.');
      return;
    }
    final usuarioSelecionado = _users[indiceUsuario];

    final emprestimo = Loan(
      livro: livroSelecionado,
      usuario: usuarioSelecionado,
      dataEmprestimo: DateTime.now(),
    );
    _loans.add(emprestimo);
    _view.exibirMensagem('Empréstimo realizado com sucesso.');
  }

  void _realizarDevolucao() {
    final ativos = _loans.where((l) => l.dataDevolucao == null).toList();
    if (ativos.isEmpty) {
      _view.exibirMensagem('Nenhum empréstimo ativo para devolver.');
      return;
    }

    _view.exibirEmprestimosAtivos(ativos);
    final indice = _view.lerIndice('empréstimo');
    if (!_indiceValido(indice, ativos.length)) {
      _view.exibirMensagem('Empréstimo não encontrado.');
      return;
    }

    final emprestimo = ativos[indice];
    emprestimo.registrarDevolucao(DateTime.now());
    _view.exibirMensagem('Devolução registrada com sucesso.');
  }

  bool _indiceValido(int indice, int tamanho) {
    return indice >= 0 && indice < tamanho;
  }
}
```