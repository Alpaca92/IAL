class Player {
  String name;
  String team;
  int xp;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print('Hi my name is $name'); // not recommended use this keyword
  }
}

void main() {
  var acapla = Player(name: 'acapla', xp: 0, team: 'red')
    ..name = 'nico'
    ..xp = 20
    ..team = 'blue'; // cascade notation

  /**
   * acapla.name = 'nico';
   * acapla.xp = 20;
   * acapla.team = 'blue';
   */

  var newAcapla = acapla
    ..name = 'las'
    ..xp = 0
    ..sayHello();
}
