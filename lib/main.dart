class Book {
  String name;
  int price;
  String author;
  // constructor
  Book({
    required this.name, // Required Parameter
    this.price = 200, // Default Value
    required this.author,
  });
// to String method
  @override
  String toString() {
    return 'Book(Book Name: $name, Book Price: $price, Author: $author)';
  }
}

void main() {
  //Class calling
  Book m = Book(name: 'Java', author: 'jjj');
  // where m is instance of class
  print(m);
}
