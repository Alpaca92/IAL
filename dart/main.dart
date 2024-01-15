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
    print('Hi my name is $name'); // not recommended use this keyword
  }
}

void main() {
  var player = Player(
    name: 'acaplaaaa',
    xp: 2000,
    team: 'blue',
    age: 30,
  );

  player.sayHello();
}
