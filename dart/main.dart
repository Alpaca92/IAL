void main() {
  String? name = 'test';
  name = null;

  if (name != null) {
    name.length; // null safety
  }
}
