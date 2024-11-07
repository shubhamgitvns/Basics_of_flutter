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
  Map<String, Person> fruits = {
    "shubham":
        Person(name: 'Shubham', address: 'Varanasi', number: '9044687654'),
  };

  // Using a for loop to print each key-value pair
  for (var entry in fruits.entries) {
    print("${entry.key} is ${entry.value}");
  }
  print(fruits["shubham"]);
}
