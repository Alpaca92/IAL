void main() {
  // 변수를 정의하는 방법
  // 1. var
  // 관습적으로 함수나 메소드 내부에 지역 변수를 선언할 때 var를 사용한다
  var name = 'ayaan';

  // var는 동일한 타입의 변수로 업데이트가 가능하다
  name = 'alpaca';

  // 2. type annotation
  // class에서 변수나 property를 선언할 때에는 타입을 지정해 준다
  String anotherName = 'lucy';

  // type을 지정해도 동일한 타입의 변수로 업데이트가 가능하다
  anotherName = 'squirrel';
}
