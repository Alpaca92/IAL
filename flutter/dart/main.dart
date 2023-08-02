class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hello, $name");
  }
}

void main() {
  var player = new Player(
    age: 10,
    name: "susan",
    team: "red",
    xp: 1919,
  );

  player.sayHello();
}
