void main() {
  late final String name;

  // API 호출 등으로 인해 나중에 값이 할당 됨
  name = 'api call';
  name = 'final doesn\'t change';
}
