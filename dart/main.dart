void main() {
  // Dynamic type
  // 초기에 아무 변수도 넣어주지 않는다면 해당 변수의 type은 dynamic이 된다
  var name;
  name = 1;
  name = 'string';

  // 혹은 직접 dynamic이라고 annotation할 수도 있다
  dynamic anotherName = 'string';
  anotherName = 1;

  // dynamic에 대한 type은 별로 많지 않지만 if statement등을 사용하면 좀 더 안전한 코드를 작성할 수 있음
  // extension의 auto complete 기능도 매우 유용함
  if (name is String) {
    // do something...
  }
}
