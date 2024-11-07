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
  Map<String, String> fruits = {
    "Apple": "Red",
    "Banana": "Yellow",
    "Cherry": "Red",
    "Date": "Brown",
    "Fig": "Purple",
    "Grapes": "Green",
    "Mango": "Orange",
  };

  // Using a for loop to print each key-value pair
  for (var entry in fruits.entries) {
    print("${entry.key} is ${entry.value}");
  }
  print(fruits["Fig"]);
}
