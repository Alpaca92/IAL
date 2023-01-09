String sayHello(String name, int age, String country) {
  return "Hello $name, you are $age old, and you come from $country";
}

// named parameters
String anotherSayHello(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age old, and you come from $country";
}

void main() {
  print(sayHello('ayaan', 30, 'Korea'));

  // named parameters
  print(anotherSayHello(name: 'ayaan', age: 20, country: 'South Korea'));
}
