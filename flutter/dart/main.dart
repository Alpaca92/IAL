void hello(String name) {
  print("Hello, $name");
}

String hello2(String name) => "Hello, $name";

void main() {
  hello('john');
  print(hello2('susan'));
}
