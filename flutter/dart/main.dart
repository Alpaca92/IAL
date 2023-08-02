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

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hello, $name");
  }
}

void main() {
  var player1 = new Player.createBluePlayer(
    age: 10,
    name: "susan",
  );

  var player2 = new Player.createRedPlayer(
    age: 15,
    name: "john",
  );
}
