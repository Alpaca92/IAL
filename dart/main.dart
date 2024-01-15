class Player {
  final String name;
  String team;
  int xp;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        team = playerJson['team'],
        xp = playerJson['xp'];

  void sayHello() {
    print('Hi my name is $name'); // not recommended use this keyword
  }
}

void main() {
  var players = [
    {
      'name': 'acapla',
      'team': 'red',
      'xp': 0,
    },
    {
      'name': 'nico',
      'team': 'blue',
      'xp': 0,
    },
    {
      'name': 'lynn',
      'team': 'blue',
      'xp': 0,
    },
  ];

  players.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
