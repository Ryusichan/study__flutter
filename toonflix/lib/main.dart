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
  var value = 5800200;

  void addCounter() {
    setState(() {
      value + 1;
    });
  }

  // build를 클래스 안에 넣어주는 약속을 해준다
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // SCAFFOLD는 화면을 구성하는 설계와 같은 구조물이다
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
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
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
              Text(
                '\$ $value',
                style: const TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MainButton(
                      text: 'Transfer',
                      color: Colors.amber,
                      textColor: Color.fromARGB(255, 12, 12, 12)),
                  MainButton(
                      text: 'Request',
                      color: Color.fromARGB(255, 44, 44, 44),
                      textColor: Color.fromARGB(255, 255, 255, 255)),
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
              ),
              Transform.translate(
                offset: const Offset(0, -22),
                child: const MainCard(
                  title: 'Dollar',
                  value: '55 622',
                  currency: 'USD',
                  isInvert: false,
                  icon: Icons.attach_money_sharp,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -44),
                child: const MainCard(
                  title: 'Rupee',
                  value: '28 981',
                  currency: 'INR',
                  isInvert: true,
                  icon: Icons.currency_rupee_sharp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
