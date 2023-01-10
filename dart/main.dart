String sayHello(
  String name,
  int age, [
  String? country, // null로 출력되는 걸 원치 않는다면 default value를 넣을 수 있음
]) =>
    'Hello $name, $age years old, you are come from $country';

void main() {
  print(sayHello('ayaan', 13, 'suwon'));
  print(sayHello('ayaan', 18));
}
