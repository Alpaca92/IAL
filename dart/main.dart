class Player {
  final String name;
  String team;
  int age, xp;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createBluePlayer({
    required String name,
    required int age,
  }) : this.age = age, this.name = name, this.team = 'blue', this.xp = 0;

  Player.createRedPlayer({
    required String name,
    required int age,
  }) : this.age = age, this.name = name, this.team = 'red', this.xp = 0;

  void sayHello() {
    print('Hi my name is $name'); // not recommended use this keyword
  }
}

void main() {
  var bluePlayer = Player.createBluePlayer(
    name: 'blue_acapla',
    age: 30,
  );

  var redPlayer = Player.createRedPlayer(
    name: 'red_acapla',
    age: 31,
  );

  bluePlayer.sayHello();
  redPlayer.sayHello();
}
