// Mixin class 의 property를 합쳐준다 extents랑은 부모와 상속의 개념이고
// with는 가지고  있는 값을 나눈다
// Mixin은 생성자가 없는 클래스를 의미한다.
// Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
// Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점이다.

class Strong {
  final double strenghLevel = 1500.99;
}

class Tall {
  final double Weight = 198.2;
}

class Horse with Strong, QuickRunner {}

class Child with QuickRunner {}

// 이런식으로 각 고유의 값들의 특징을 넣고 빼고가 간편하다

class QuickRunner {
  void runQuick() {
    print("RUUUUUUUUUUUUUUUUUUUUUUUn!!!");
  }
}

class Human with QuickRunner, Tall, Strong {
  String name;

  Human({required this.name});
  void sayHello() {
    print('hi my name is $name');
  }
}

enum Team { blue, red }

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
  // 이런식으로 with에 추가한 값들을 손쉽게 불러올수있다
  player.runQuick();
}
