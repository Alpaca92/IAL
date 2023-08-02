class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hello, $name");
  }
}

void main() {
  var nico = Player(
    name: 'nico',
    team: 'red',
    xp: 1200,
  )
    ..name = 'las'
    ..xp = 10; // cascade notation

  /**
     * same thing
     * nico.name = 'las';
     * nico.xp = 10;
     */
}
