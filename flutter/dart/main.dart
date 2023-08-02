class Player {
  final String name;
  int xp;

  // constructor
  Player(this.name, this.xp);

  void sayHello() {
    print("Hello, my name is $name");
  }
}

void main() {
  var player = new Player('susan', 1500);
  player.sayHello();
}
