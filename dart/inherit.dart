class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
    // super 확장자를 통해서 부모클래스와 상호 작용을 할수있게 해준다
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

void main() {
  var player = Player(team: Team.red, name: 'blue')..sayHello();
}
