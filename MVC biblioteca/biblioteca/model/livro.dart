class Book {
  String titulo;
  String autor;

  Book({
    required this.titulo,
    required this.autor,
  });

  @override
  String toString() => '$titulo - $autor';
}