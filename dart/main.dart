abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player extends Human {
  String name;
  Team team;
  int xp;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('i am walking');
  }

  void sayHello() {
    print(
        'Hi my name is $name, my team is ${team.toString()}'); // not recommended use this keyword
  }
}

void main() {
  var player = Player(
    name: 'name',
    xp: 0,
    team: Team.red,
  );
  player.sayHello();
}
