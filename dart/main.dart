class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print('Hi my name is $name'); // not recommended use this keyword
  }
}

void main() {
  var player = Player('acaplaaaa', 2000); // new is not required
  player.sayHello();
}
