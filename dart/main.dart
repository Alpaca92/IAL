class Player {
  final String name = 'acapla';
  int xp = 1500;

  void sayHello() {
    print('Hi my name is $name'); // not recommended use this keyword
  }
}

void main() {
  var player = Player(); // new is not required
  print(player.name);
  player.sayHello();
}
