import 'package:flutter/material.dart';
import 'package:flutter_relay_coding_app/Guide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱 바 모양 없애기
      appBar: AppBar(
        elevation: 0,
      ),
      //  const Color(0xff294959)
      backgroundColor: Colors.grey,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // devFest2021 이미지, 중앙 상단에 배치
          Center(
            child: Image.asset(
              'image/devFest2021.png',
              fit: BoxFit.contain,
              height: 80,
            ),
          ),

          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "GDSC SCH",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )
            ],
          ),

          // 가이드 라인 버튼 생성
          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: btn("guideline", context),
              )
            ],
          ),

          SizedBox(
            height: 20.0,
          ), // 가이드 라인과 릴레이 코딩 버튼 사이의 공간

          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: btn("A", context),
              )
            ],
          ),

          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: btn("B", context),
              )
            ],
          ),

          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: btn("C", context),
              )
            ],
          ),

          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: btn("D", context),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// 버튼 함수
btn(str, context) {
  return Container(
    padding: EdgeInsets.all(5),
    child: InkWell(
        child: Container(
            width: 200,
            height: 50,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
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
          if (str == "guideline") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Guide()));
          }

          print("확인");
        }),
  );
}
