void main() {
  // 1. var는 타입 추론을 한다
  var name = 'acapla';
  name = 'some string';

  print('my name is $name');

  // 2. 명시적 타입
  String new_name = 'acapla';
  new_name = 'another string';

  print('my new_name is $new_name');
}
