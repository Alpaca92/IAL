enum Team { blue, red }

mixin class Strong {
  final double strengthLevel = 15.9;
}

mixin class QuickRunner {
  void runQuick() {
    print("run quick !");
  }
}

mixin class Tall {
  final double height = 1.99;
}

// mixin: no constructor
class Player with Tall, Strong, QuickRunner {
  final Team team;

  Player({
    required this.team,
  });
}

void main() {}
