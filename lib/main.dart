class Book {
  String name;
  int price;
  String author;
  Book(this.name, this.price, this.author);

  @override
  String toString() {
    return 'Book(Book name: $name, Book Price: $price, Author: $author)';
  }
}

void main() {
  Book m = Book("Java", 890, "jjj");
  print(m);
}
