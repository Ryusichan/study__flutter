import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
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
              SizedBox(height: 40),
              Text(
                'Total Balance',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Text(
                '\$5,800,200',
                style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
