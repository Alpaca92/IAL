class Player {
  String name = 'ayaan';
  final String nickname = 'alpaca';
  int xp = 1500;

  void sayHello() {
    print("HI my name is $name"); // dart에서는 this를 사용하지 않는다
  }
}

void main() {
  var player = Player();
  print(player.name); // ayaan
  player.name = 'lalallaa';
  print(player.name); // lalallaa

  print(player.nickname); // alpaca
  // player.nickname = 'laalalala'; // error is occured

  player.sayHello();
}
