class Book {
  String name;
  int price;
  String author;
  Book(this.name, this.price, this.author);

  void detail() {
    print("Book Name: $name");
    print("Book Price: $price");
    print("Author Name: $author");
  }
}

void main() {
  Book m = Book("Java", 890, "jjj");
  m.detail();
  print(m);
}
