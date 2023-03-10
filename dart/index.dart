// Description: dart의 기본 문법을 정리한 파일
// main함수는 모든 dart 프로그램의 시작점이다. main함수는 반드시 있어야 하며, main함수가 없으면 dart 프로그램은 실행되지 않는다.
// dart는 자동으로 세미콜론을 붙여주지 않기 때문에 직접 붙여야 한다(일부로 세이콜론을 알쓸때가 있기때문)

// 1. 변수를 만드는 2가지 방법
// 함수나 메소드 내부에 지역변수를 선언할때는 var를 사용하고,
// class에서 변수나 property를 선언할때는 타입을 명시해준다.

// 2. Dynamic 타잎

// 여러가지를 가질수 있는 변수에 쓰는 키워드이다.(해당 변수의 타입을 알수 없을때 사용)
// 변수를 선언할때 dynamic을 쓰거나 값을 지정하지 않으면 자동으로 dynamic이 된다.
// dynamic , var등

// 3. Nullable Variables
// Null Safety

// 개발자가 null값을 참조할수 없도록 한다.
// string뒤에 ?를 붙여줌으로 name이 String또는 null이 될수 있다고 명시해준것이다.
// 기본적으로 모든 변수는 null을 가질수 없다.

// void main(){
//     String? name = "lee";
//     name = null;
//     print(name);
// }

// 4. final
// final은 한번 값을 할당하면 변경할수 없다. const랑 비슷하다.

// void main() {
// final name = "pizza";
// name = "ham"; // 수정 불가

// final String? username = "tom";
// username = null; // 수정 불가
// }

// 5. Late Variables
// 초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.
// flutter로 data fecthing을 할 때 유용하다.
// late 변수를 만들고, API에 요청을 보낸 뒤에 API에서 값을 보내주면 그 응답값을 late변수에 넣어 사용할 수 있다.

// 6. const 변수
// dart에서 const는 compile-time constant를 만들어준다.
// const는 컴파일할 때 알고 있는 값을 사용해야 한다.
// 만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 그건 const가 아닌 final이나 var가 되어야 한다.

// void main (){
//   const name = "tom"; //컨파일 시점에 바뀌지 않는 값
//   final userName = fetchAPI(); // 컴파일 시점에 바뀌는 값
// }
// final를 쓰는 대표적인 경우는
// API fetching, 사용자가 화면에서 입력해야하는 값 등이 있다.

// const는 앱스토어에 올리기전에 알고있는 값이어야 한다 사용하는 대표적인 경우는
// max_allowed_price와 같은 상수에 쓰인다.

// String fetchAPI(int data) => data.toString();
// void main(){
//   final name = fetchAPI(123);
//   print(name);
// }

// 7. Basic Data Types
// 아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)
// 이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.
// void main () {
//   String name = "tom";
//   bool isPlay = true;
//   int age = 10;
//   double money = 52.55;
// }

// 8. Lists
// dart의 유용한 점은 `collection if`와 `collection for`을 지원하는 것이다.

// collection if를 사용하면 `존재할 수도 안할 수도 있는 요소를 가지고 올 수 있다.`
// void main() {
//   var givemefice = true;
//   var case1 = [
//     1,
//     2,
//     3,
//     4,
//     if (givemefice) 5,
//   ];
//   List<int> case2 = [
//     1,
//     2,
//     3,
//     4,
//     if(givemefice)
//   ];
// }

// 9. String Interpolation
// 변수 사용하는 방법

// $달러 기호를 붙이고 사용할 변수를 적어주면 된다.
// 만약 무언가를 계산하고 싶다면 ${ } 형태로 적어주면 된다.
// void main() {
//   var name = 'nico';
//   var age = 10;
//   var greeting = 'hello everyone, I\'m $name age is ${age + 10}';
//   print(greeting);
// }
// String fetchAPI(int data) => data.toString();
// void main(){
//   final name = fetchAPI(123);
//   print(name);
// }

// 10. 자료 구조형 collection if 조건문
// 배열안에 직접적으로 if문을 사용할 수 있다.
//   var giveMeFive = true;
//   var numbers = [1, 2, 3, 4, if (giveMeFive) 5];

// // 자료 구조형 collection if version2 조건문
//   var name6 = 'nico';
//   var age = 20;
//   var greeting = "hello everyone, my name is $name6, I\'m ${age + 2} years old";

// 자료 구조형 collection for 반복문
// var oldFriend = ['nico', 'lynn'];
// var newFriend = ['ralph', 'tom', for (var friend in oldFriend) "❤️ $friend"];

// print(newFriend);

// 11. Maps

// 일반적으로 맵은 key와 value를 연결하는 객체입니다. 키와 값 모두 모든 유형의 객체가 될 수 있습니다. 각 키는 한 번만 발생하지만 동일한 값을 여러 번 사용할 수 있습니다.
//   var gifts = {
// // Key: Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 'golden rings'
//   };

// // Map 생성자를 사용하여 동일한 객체를 만들 수 있습니다.
//   var gifts2 = Map<String, String>();
//   gifts2['first'] = 'partridge';
//   gifts2['second'] = 'turtledoves';
//   gifts2['fifth'] = 'golden rings';
// https://dart.dev/guides/language/language-tour#maps

// 12. Functions

// Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function입니다. 이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.
// 하나의 표현식만 포함하는 함수의 경우 아래와 같이 단축 구문을 사용할 수 있습니다.
// String sayHello(String name) => "Hello ${name} nice to meet you.";

// num plus(num a, num b) => a + b;

// 13. Named Parameters

// parameter에 이름을 붙여서 사용할 수 있다. 작동하는 function의 parameter에 {}를 씌워주면
// 순서에 관계없이 parameter의 name을 활용할수 있다
// 1. Function에 값을 입력이 안되어있을때 null safety가 작동된다이를 방지하기위해
// default value를 설정해준다

// String introduce({String name = "coco", int age = 12, String country = 'cuba'}) =>
//   "im $name age is $age country is $country";

// void main(){
//   print(introduce(
//     name: "hoho",
//     country: "island",
//     age: 10
//   ));
// }

// 14. Named Constructor Parameters

// 말그대로 constructor의 parameter값에다가 named처리를 해줘서
// 필요시 함수로 호출할때 named로 받아서 처리하는 방법이다.
// !required는 nullsafety를 받쳐주기 위한 중요한 요소이다

// class Player {
//   String name;
//   int age;
//   String description;

//   Player({required this.name, required this.age, required this.description});
// }

// void main() {
//   var myTeam = Player(name: "hi", age: 17, description: "happy");
//   print(myTeam);
// }

// 15. Named constructor
// 생성자(constructor)함수를 여러개 만들고 싶다면 어떨까?

// class Team {
//   String name;
//   int age;
//   String value;
//   int xp;

//   Team(
//       {required this.name,
//       required this.age,
//       required this.value,
//       required this.xp});

// // named parameter
//   Team.redTeam({
//     required String name,
//     required int age,
//     // :부등호를 써줌으로써 default값을 정해줌
//   })  : this.age = age,
//         this.name = name,
//         this.value = "blue",
//         this.xp = 0;

// // position parameter
//   Team.blueTeam(String name, int age)
//       : this.age = age,
//         this.name = name,
//         this.value = 'red',
//         this.xp = 0;
// }

// void main() {
//   var myTeam = Team(name: "1", age: 12, value: "24", xp: 10);
//   var redTeam = Team.redTeam(name: "hijun", age: 44);
//   var blueTeam = Team.blueTeam("juno", 42);
//   print(myTeam);
//   print(redTeam);
//   print(blueTeam);
// }

// class Player {
//   String name;
//   String team;
//   int xp;

//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson['name'],
//         team = playerJson['team'],
//         xp = playerJson['xp'];

//   void sayHello() {
//     print("Hi my name is $name my team $team and experiant $xp");
//   }
// }

// void main() {
//   var apiData = [
//     {
//       "name": 'ryu',
//       "team": 'red',
//       "xp": 0,
//     },
//     {
//       "name": 'bae',
//       "team": 'red',
//       "xp": 0,
//     },
//     {
//       "name": 'jaeha',
//       "team": 'blue',
//       "xp": 0,
//     },
//   ];

//   apiData.forEach((playerJson) {
//     var player = Player.fromJson(playerJson);
//     player.sayHello();
//   });
// }

// 16. Cascade Notation

// class Player {
//   String name;
//   Team team;
//   int xp;

//   Player({required this.name, required this.team, required this.xp});

//   void sayHello() {
//     print("Hi my name is $name my team $team and experiant $xp");
//   }
// }

// void main() {
//   var player = Player(name: "name", team: Team.red, xp: 12)
//     // 처음의 .은 player를 의미한다 player끝에 세미클론을 빼줌으로 아직문서가 안끝났고 연결된다는걸 의미한다
//     ..name = 'nico'
//     ..team = Team.blue
//     ..xp = 23
//     ..sayHello();
// }

// 17. enum
// enum은 코드를 짜는동안 실수를 줄여주려 선택의 폭을 위해서 사용한다.
// enum Team { red, blue }

// enum XPLevel { beginner, medium, pro }

// 18. abstract Classes
// 추상화 클래스는 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 일종의 `청사진`이라 보면 된다.
// 추상 클래스에서는 기능을 구현하지 않는다.

// abstract class Human {
// void walk();
// }

// extends를 이용해 상속, 확장을 할 수 있다.

// abstract class Human {
// void walk();
// }

// class Player extends Human {
// // 생략
// void walk(){
// print("working!");
// }
// }

// 19. inheritance

enum Team { red, blue }

class Human {
  final String name;
  Human(this.name); //호출 받는다
  void sayHello() {
    print("Hello! $name");
  }
}

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
    // super를 사용하면 부모 생성자 함수를 호출한다
  }) : super(name);
}

void main() {
  var player = Player(team: Team.blue, name: "wow!!")..sayHello();
}
