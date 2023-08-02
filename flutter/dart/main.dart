// null aware operator (QQ operator)
String capitalizeName(String? name) => name?.toUpperCase() ?? 'anonymous';

void main() {
  capitalizeName('susan');
  capitalizeName(null);
}
