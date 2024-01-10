void sayHello(String name) {
  print('Hello $name');
}

String sayHello2(String name) => "Hello $name";

void main() {
  sayHello('acapla');
  print(sayHello2('acapla'));
}
