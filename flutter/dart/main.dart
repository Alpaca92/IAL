enum Team { blue, red }

class Human {
  final String name;

  Human({
    required this.name,
  });

  void sayHello() {
    print("Hello, $name");
  }
}

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required super.name,
  });

  @override
  void sayHello() {
    super.sayHello();
    // do something...
  }
}

void main() {
  var player = Player(
    name: 'nico',
    team: Team.blue,
  );

  player.sayHello();
}
