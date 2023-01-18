class Player {
  final name;
  int xp;
  int age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hello, my name is $name, team: $team, age: $age, xp: $xp");
  }
}

void main() {
  var player = Player(age: 12, xp: 1500, team: "red", name: 'ayaan');
  player.sayHello();
}
