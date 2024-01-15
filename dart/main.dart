String sayHello(String name, int age, [String? country = 'Korea']) =>
    'Hello $name, You are $age years old and You from $country';
void main() {
  print(sayHello('acapla', 31));
}
