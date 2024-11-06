void main() {
  add(a: 4, b: 5);
  add();
  add(a: 9);
  add(b: 8);
}

void add({int a = 1, int b = 2}) {
  print(a + b);
}
