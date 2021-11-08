import 'package:flutter/material.dart';

class PageSecond extends StatefulWidget {
  @override
  _PageSecondState createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),  // 임의의 색 지정
      body: Row(  // Column을 가운데로 정렬하기 위함
          mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
          children: [
            Column(children: [
              Container(height: 100),
              Text('second page.'),

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
