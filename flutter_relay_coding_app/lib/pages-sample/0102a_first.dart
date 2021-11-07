///////////////////////////////////////// 샘플페이지 입니다
////////////////////////////////////////// 수정 금지
///////////////////////////////////////// pages 폴더에 자신 페이지 추가하기
//////////////////////////////////////////// pages 폴더에 자신 페이지 추가하기

import 'package:flutter/material.dart';

class Page0102AFisrt extends StatefulWidget {
  @override
  _Page0102AFisrtState createState() => _Page0102AFisrtState();
}

class _Page0102AFisrtState extends State<Page0102AFisrt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),  // 임의의 색 지정
      body: Row(  // Column을 가운데로 정렬하기 위함
        mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
        children: [
        Column(children: [    // 세로로 들어갈 항목들 요소

          // TODO : 항목들 추가하기

          Container(height: 100, width: 100, color: Colors.blue) //임의의 상자, 삭제 요망

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
