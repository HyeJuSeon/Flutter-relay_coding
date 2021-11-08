import 'package:flutter/material.dart';

class PageMbtiResult extends StatefulWidget {
  final data1;
  final data2;
  final data3;
  final data4;

  PageMbtiResult({required this.data1, required this.data2, required this.data3, required this.data4});

  @override
  _PageMbtiResultState createState() => _PageMbtiResultState();
}

class _PageMbtiResultState extends State<PageMbtiResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),  // 임의의 색 지정
      body: Row(  // Column을 가운데로 정렬하기 위함
          mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
          children: [
            Column(children: [
              Container(
                height: 250,
              ),

              Text(
                'Your Dev MBTI is',
                style: TextStyle(fontSize: 40, color: Colors.black54),
              ),

              Container(
                height: 30,
              ),

              Text(
                widget.data1 + widget.data2 + widget.data3 + widget.data4,
                style: TextStyle(fontSize: 100, color: Colors.black87),
              ),
            ])
          ]),

      // 뒤로 가기 버튼 추가
      floatingActionButton: BackButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}


// 뒤로가기 버튼
BackButton(context) {
  return FloatingActionButton(
    backgroundColor: Colors.transparent,
    onPressed: () {
      Navigator.pop(context);
    },
    child: Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
    elevation: 0.0,
  );
}
