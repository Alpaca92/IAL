class Player {
  late final String name;
  late int xp;

  Player(String name, int xp) { // constructors
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hi, my name is $name");
  }
}

class AnotherPlayer {
  final String name;
  int xp;

  AnotherPlayer(this.name, this.xp); // constructors shortcut

  void sayHello() {
    print("Hi, my name is $name");
  }
}

void main() {
  var player = Player('ayaan', 1500);
  player.sayHello();
}
