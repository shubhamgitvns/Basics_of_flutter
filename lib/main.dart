class Person {
  String name;
  int age;
  String address;
  String mob_number;
  // constructor
  Person({
    required this.name, // Required Parameter
    required this.age, // Required Parameter
    required this.address,
    required this.mob_number,
  });
// to String method
  @override
  String toString() {
    return 'Person(Name: $name, Age: $age, Address: $address, Number: $mob_number)';
  }
}

class Employee extends Person {
  String post;
  int salary;

  //Person({required super.name, required super.age, required super.address, required super.mob_number});

  Employee(
      {required name,
      required age,
      required address,
      required mob_number,
      required this.post,
      required this.salary})
      : super(name: name, age: age, address: address, mob_number: mob_number);
  @override
  String toString() {
    return '${super.toString()},Employee(Post: $post, Salary: $salary)';
  }
}

void main() {
  //Class calling
  Person x2 = Employee(
      name: 'Shubham',
      age: 22,
      address: "j1/112b",
      mob_number: "9066854367",
      post: 'ceo',
      salary: 6887);
  // where m is instance of class
  print(x2);
}
