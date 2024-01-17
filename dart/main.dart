enum Team { blue, red }

class Human {
  final String name;

  Human({
    required this.name,
  });

  void sayHello() {
    print('Hi my name is $name');
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
    print('and My team is ${team.name}');
  }
}

void main() {
  var player = Player(team: Team.red, name: 'acapla');

  player.sayHello();
}
