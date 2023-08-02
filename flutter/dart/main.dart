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
    print("Hello, $name");
  }
}

void main() {
  var nico = Player(
    name: 'nico',
    team: Team.blue,
    xp: 1200,
  );
}
