enum Team { blue, red }

class Human {
  final String name;

  Human(this.name);

  void sayHello() {
    print("Hello, $name");
  }
}

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name);

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
