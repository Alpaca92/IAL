enum Team { red, blue }

class Player {
  String name;
  int xp;
  Team team;

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
  var ayaan = Player(name: 'ayaan', xp: 1200, team: Team.red)
    ..name = 'ayaan'
    ..xp = 13000
    ..team = Team.blue;

  // same thing
  ayaan.name = 'ayaan';
  ayaan.xp = 13000;
  ayaan.team = Team.blue;
}
