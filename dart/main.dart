import 'dart:html';

void main() {
  // const는 js, ts와는 다르다
  // const는 final과 유사한데, compile-time constant를 생성해준다
  const API_KEY = '123123124012849012';

  // const는 컴파일할 때 알고있는 값을 사용해야 한다
  // 예를 들어 API로부터 받아오거나 하는 값들은 컴파일할 때 알 수 없는 값들이므로
  // 이 경우에는 final이나 var를 사용해야 한다
  const SOME_API = fetchApi(); // non-compile-time constant
  final SOME_API_2 = fetchApi();
}
