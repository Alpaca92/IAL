void main() {
  // 3. dynamic type
  // 어떤 타입으로 들어올지 모르는 경우 사용하면 유용함
  var name;
  name = '';
  name = 1;
  name = false;

  if (name is String) {
    // String에 대한 method를 사용할 수 있음
  }
}
