class A {
  String name;
  void f1() {
    print("f1() in a");
  }

  void f2() {
    print("f2() in a");
  }

  void calculateArea(int length, int width) {
    print('Area is ${length * width}');
  }

  A(this.name);
  String toString() {
    return "$name";
  }
}

class B extends A {
  String post;

  void f2() {
    print("f2() in b");
  }

  B(name, this.post) : super(name);
  String toString() {
    return "$name,$post";
  }
}

void main() {
  A x1 = A('Popat');
  x1.f2();
  x1 = B('Popat', "Ustad");
  x1.f2();
}
