String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'anonymous';
// or we can use QQ operator
// name?.toUpperCase() ?? 'anonymous';
void main() {
  capitalizeName('ayaan');

  String? name;
  name ??= 'ayaan'; // name = ayaan
  name ??= 'another name'; // Warning: '??=' has type 'String' which excludes null.

  print(name);
}
