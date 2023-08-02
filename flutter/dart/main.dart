String sayHello(String name, int age, String country) {
  return "Hello $name, you are $age, and you live in $country";
}

// named args
String sayHello2({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you live in $country";
}

void main() {
  print(sayHello('susan', 19, 'Busan'));

  print(sayHello2(
    name: 'susan2',
    country: 'Suwon',
    age: 20,
  ));
}
