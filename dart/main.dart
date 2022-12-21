void main() {
  // null safety: 개발자가 null 값을 참조할 수 없도록 만듦
  // 즉, 어떤 변수(데이터)가 null이 될 수 있음을 명시할 수 있음
  // null을 참조하려고 하면 runtime error 발생
  // runtime error: 앱을 사용하던 중에 뜨는 에러

  String name = 'ayaan';
  ayaan = null; // error

  String? anotherName = 'ayaan';
  anotherName = null; // doesn't not occur error

  if (anotherName != null) {
    // do something..
  }

  // is not null == ?.
  anotherName?.isNotEmpty;
}
