import 'package:flutter/material.dart';
import 'package:toonflix/widget/main_button.dart';
import 'package:toonflix/widget/main_card.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

// statelesswidget을 상속받는데 일반적인 레이아웃 클래스이다
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  //Ooverride이하로 상속과 관련된 내용을 표시해준다
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //버튼을 활용하여 state의 값을 바꾸기
  int value = 5800200;
  bool val = true;

// life cycle에 대한이해 값이 바뀔때 initialState 변경 => build 변경
  void addCounter() {
    setState(() {
      value = value + 1;
    });
  }

  void toggleVal() {
    setState(() {
      val = !val;
    });
  }

  @override
  void initState() {
    super.initState();
    print('initState');
  }

// dispose method 위젯이 스크린에서 제거될때 사용되는요소이다
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  // build를 클래스 안에 넣어주는 약속을 해준다
  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600),
              titleMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700))),
      // SCAFFOLD는 화면을 구성하는 설계와 같은 구조물이다
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Maintitle(),
                        Text(
                          'welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white60,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 4),
                val
                    ? Text(
                        '\$ $value',
                        style: const TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    : const Text(''),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MainButton(
                        text: 'Transfer',
                        color: Colors.amber,
                        textColor: Color.fromARGB(255, 12, 12, 12)),
                    const MainButton(
                        text: 'Request',
                        color: Color.fromARGB(255, 44, 44, 44),
                        textColor: Color.fromARGB(255, 255, 255, 255)),
                    //버튼을 활용하여 state의 값을 바꾸기
                    IconButton(
                        onPressed: toggleVal,
                        icon: const Icon(Icons.add_a_photo)),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MainCard(
                    title: 'Euro',
                    value: '6 428',
                    currency: 'EUR',
                    isInvert: true,
                    icon: Icons.euro_symbol_sharp,
                    cardNum: 0),
                const MainCard(
                  title: 'Dollar',
                  value: '55 622',
                  currency: 'USD',
                  isInvert: false,
                  icon: Icons.attach_money_sharp,
                  cardNum: 1,
                ),
                const MainCard(
                  title: 'Rupee',
                  value: '28 981',
                  currency: 'INR',
                  isInvert: true,
                  icon: Icons.currency_rupee_sharp,
                  cardNum: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// BuildContext의 이해 context를 이용하여 부모요소에 접근할수있다 최상위 부모요소, 상위부모요소 찾는 여러방법이있으니 숙지 필요
// ex : materai theme 선언한 부모요소 찾기
class Maintitle extends StatelessWidget {
  const Maintitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Hey, Selena', style: Theme.of(context).textTheme.titleMedium);
  }
}
