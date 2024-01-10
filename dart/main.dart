String sayHello(String name, int age, String country) {
  return 'Hello $name, Are you $age years old and from $country ?';
}

String sayHello2({
  required String name,
  required String country,
  int age = 31,
}) {
  return 'Hello $name, Are you $age years old and from $country ?';
}

void main() {
  print(sayHello('acapla', 31, 'Korea'));
  print(sayHello2(name: 'acapla', age: 11, country: 'Korea'));
}
