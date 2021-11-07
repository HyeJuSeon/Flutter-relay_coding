import 'package:flutter/material.dart';
import 'package:flutter_relay_coding_app/guideline.dart';
import 'package:flutter_relay_coding_app/pages-sample/0102a_first.dart';
import 'package:flutter_relay_coding_app/pages-sample/0102a_second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 230, 230),
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Image.asset(
                  'image/devFest2021.png',
                  fit: BoxFit.contain,
                  height: 80,
                ),
              ),
              SizedBox(height: 20),
              Container(
                  height: 500,
                  width: 300,
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      GuideBtn(context, Guide()), // 커스텀 버튼 생성, 각 참여자들의 페이지로 이동

                      SizedBox(height: 20), // 버튼 사이 공백 생성

                      // 커스텀 버튼 생성, 각 참여자들의 페이지로 이동
                      PageBtn("guidelint", context, Page0102AFisrt()),
                      PageBtn("guidelint", context, Page0102ASecond()),
                    ],
                  ))
            ],
          ),
        ]));
  }
}

// 버튼 반환 메서드 : (버튼의 텍스트, 현재 페이지 context, 이동할 페이지 클래스)를 매개변수로 받음
PageBtn(String str, BuildContext context, pageClass) {
  return Container(
    padding: EdgeInsets.all(10),
    child: InkWell(
        child: Container(
            width: 200,
            height: 50,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color.fromARGB(255, 0, 151, 167),
                  style: BorderStyle.solid,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1.0, 3.0),
                    blurRadius: 8.0,
                    spreadRadius: 0.5,
                  ),
                ]),
            child: Center(
              child: Text(
                '$str',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            )),

        // 페이지 이동
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageClass));
        }),
  );
}

// 가이드라인 버튼 반환 메서드 : (버튼의 텍스트, 현재 페이지 context, 이동할 페이지 클래스)를 매개변수로 받음
GuideBtn(BuildContext context, pageClass) {
  return Container(
    padding: EdgeInsets.all(10),
    child: InkWell(
        child: Container(
            width: 200,
            height: 50,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 151, 167),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1.0, 3.0),
                    blurRadius: 8.0,
                    spreadRadius: 0.5,
                  ),
                ]),
            child: Center(
              child: Text(
                'Guideline',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),

        // 페이지 이동
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageClass));
        }),
  );
}
