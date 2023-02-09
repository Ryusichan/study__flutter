import 'package:flutter/material.dart';
import 'package:toonflix/widget/main_button.dart';

void main() {
  runApp(MyApp());
}

// statelesswidget을 상속받는데 일반적인 레이아웃 클래스이다
class MyApp extends StatelessWidget {
  //Ooverride이하로 상속과 관련된 내용을 표시해준다
  @override
  // build를 클래스 안에 넣어주는 약속을 해준다
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
              const Text(
                '\$5,800,200',
                style: TextStyle(
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
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1f2123),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 24,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Euro',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '6 428',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'EUR',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
