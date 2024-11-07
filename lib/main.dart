class Person {
  String name;
  String address;
  String number;

  Person({required this.name, required this.address, required this.number});
  @override
  String toString() {
    return 'Person(Name:$name, Number:$number, Address:$address)';
  }
}

void main() {
  Person p = Person(name: 'shubham', address: 'varanasi', number: '132435363');
  print(p);

  List<String> items = ['A', 'B', 'C', 'D'];
  for (String items in items) {
    print(items);
  }
  var len = items.reversed;
  print(len);
}
