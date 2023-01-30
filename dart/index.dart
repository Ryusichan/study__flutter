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

// 6. Basic Data Types
// 아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)
// 이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.
// void main () {
//   String name = "tom";
//   bool isPlay = true;
//   int age = 10;
//   double money = 52.55;
// }

// 7. Lists
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

// 8. String Interpolation
// 변수 사용하는 방법

// $달러 기호를 붙이고 사용할 변수를 적어주면 된다.
// 만약 무언가를 계산하고 싶다면 ${ } 형태로 적어주면 된다.
void main() {
  var name = 'nico';
  var age = 10;
  var greeting = 'hello everyone, I\'m $name age is ${age + 10}';
  print(greeting);
}
