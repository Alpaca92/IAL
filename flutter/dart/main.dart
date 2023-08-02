class Player {
  final String name = 'susan';
  int xp = 1000;

  void sayHello() {
    print("Hello, my name is $name");
  }
}

void main() {
  var player = new Player();
  player.sayHello();
}
