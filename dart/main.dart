class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hello, my name is $name");
  }
}

void main() {
  var ayaan = Player(name: 'ayaan', xp: 1200, team: 'red')
    ..name = 'ayaan'
    ..xp = 13000
    ..team = 'blue';

  // same thing
  ayaan.name = 'ayaan';
  ayaan.xp = 13000;
  ayaan.team = 'blue';
}
