// optional positional params
// square brackets([])에 감싸지는 params는 반드시 마지막에 위치해야 함
// square brackets을 쓰면 그 뒤의 모든 params도 optional이어야 함
String sayHello(String name, [String country = 'cuba', int age = 10]) {
  return "Hello $name, $country is very beautiful ! and you are $age";
}

void main() {
  print(sayHello('nico', 'seoul'));
  print(sayHello('nico'));
}
