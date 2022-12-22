void main() {
  // late는 var(or final)앞에 붙여줄 수 있음
  // 데이터가 없는 변수를 만들어주고 나중에 데이터를 assign할 수 있도록 해줌
  late final String name;
  print(name); // error
  name = 'ayaan';
  print(name);

  final String anotherName;
  print(anotherName); // error
  anotherName = 'ayaan';
  print(anotherName);
}
