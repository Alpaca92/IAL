void main() {
  // variable declaration
  // 1. var - recommended
  var name = 'bob';
  // 2. explicitly declare - class properties를 작성할 때 사용
  int number = 1;
  // 3. final - can not change(reassign)
  final age = 31;
  // 4. dynamic - 어떤 데이터가 들어올지 모를 때 사용
  dynamic location;
  if (location is String) {
    // do soth
  }
  // 5. const - compile 단계에서 알 수 있는 값들일 때 사용(compile-time constant)
  const api_key = 'some_api_key';

  // null safety
  String? anotherName = 'john';
  anotherName = null;
  anotherName?.isEmpty;

  // late - final, var, explicitly declare 앞에 붙는 수식어
  late String some_data;
  print(some_data); // error is occured
  some_data = 'db';
  print(some_data); // error don't occured
}
