void main() {
  /**
   * null safety
   * 개발자가 null을 참조할 수 없음
   * 따라서 null이 될 수 있는지 아는지를 정확하게 정해줘야 함
   */

  String name = 'test';
  name = null; // error is occurred

  String? name2 = 'test2';
  name2 = null;
}
