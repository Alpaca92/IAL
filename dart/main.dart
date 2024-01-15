String capitalizaName(String? name) => name?.toUpperCase() ?? 'anonymous';

void main() {
  print(capitalizaName('acapla'));
  print(capitalizaName(null));
}
