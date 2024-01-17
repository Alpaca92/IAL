enum Team { blue, red }

mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print('Ruuuuuuuuuuuuuuuun!!!!');
  }
}

class Player with Strong, QuickRunner {
  final Team team;

  Player({
    required this.team,
  });
}

void main() {
  var player = Player(team: Team.blue);

  player.runQuick();
}
