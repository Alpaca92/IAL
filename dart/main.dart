class Player {
  final name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // name parameter의 경우 required를 해줘야 함
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  // positional parameter의 경우 default가 required임
  Player.createRedPlayer(
    String name,
    int age,
  )   : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hello, my name is $name, team: $team, age: $age, xp: $xp");
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: "ayaan",
    age: 21,
  );
  player.sayHello();

  var anotherPlayer = Player.createRedPlayer(
    'lalalal',
    13,
  );
  anotherPlayer.sayHello();
}
