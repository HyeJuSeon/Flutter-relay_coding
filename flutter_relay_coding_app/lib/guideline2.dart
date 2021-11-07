import 'package:flutter/material.dart';

class Guide2 extends StatefulWidget {
  final data1;
  final data2;
  final data3;

  Guide2({required this.data1, required this.data2, required this.data3});

  @override
  _Guide2State createState() => _Guide2State();
}

class _Guide2State extends State<Guide2> {
  @override
  Widget build(BuildContext context) {
    // 받은 배열을 문자열로
    String a = widget.data2.join();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
      body:
      Center(
        child: Text(widget.data1 + " " + a + " " + widget.data3),
      ),

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
