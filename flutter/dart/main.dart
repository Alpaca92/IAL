enum Team { red, blue }

abstract class Human {
  void walk();
}

class Player extends Human {
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

  void walk() {
    print("i am walking");
  }
}

void main() {
  var nico = Player(
    name: 'nico',
    team: Team.blue,
    xp: 1200,
  );
}
