import 'package:flutter/material.dart';
import 'package:flutter_relay_coding_app/pages/mbti_result_page.dart';

class PageFisrt extends StatefulWidget {
  @override
  _PageFisrtState createState() => _PageFisrtState();
}

class _PageFisrtState extends State<PageFisrt> {
  var elevate1, elevate2, elevate3, elevate4 = ' ';
  var mbti = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),  // 임의의 색 지정
      body: Row(  // Column을 가운데로 정렬하기 위함
          mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
          children: [
            Column(children: [
              Container(
                height: 100,
              ),

              Text(
                '개발자 MBTI',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),

              Container(
                height: 40,
              ),

              Text(
                '최애 기기',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 10,
              ),
              Text(
                'Desktop or Laptop',
                style: TextStyle(fontSize: 15),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate1 = 'D';
                          });
                        },
                        child: Text('D')
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate1 = 'L';
                          });
                        },
                        child: Text('L')
                    ),
                  ),
                ],
              ),

              Container(
                height: 20,
              ),

              Text(
                '코딩 시간',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 10,
              ),
              Text(
                'Day or Night',
                style: TextStyle(fontSize: 15),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate2 = 'D';
                          });
                        },
                        child: Text('D')
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate2 = 'N';
                          });
                        },
                        child: Text('N')
                    ),
                  ),
                ],
              ),

              Container(
                height: 20,
              ),

              Text(
                '배경 음악',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 10,
              ),
              Text(
                'Music or Silence',
                style: TextStyle(fontSize: 15),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate3 = 'M';
                          });
                        },
                        child: Text('M')
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate3 = 'S';
                          });
                        },
                        child: Text('S')
                    ),
                  ),
                ],
              ),

              Container(
                height: 20,
              ),
              Text(
                '개발 시작',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 10,
              ),
              Text(
                'Conding first or Research',
                style: TextStyle(fontSize: 15),
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54, onPrimary: Colors.white),
                        onPressed: () {
                          setState(() {
                            elevate4 = 'C';
                          });
                        },
                        child: Text('C')
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black54, onPrimary: Colors.white),
                      onPressed: () {
                        setState(() {
                          elevate4 = 'R';
                        });
                      },
                      child: Text('R'),
                    ),
                  ),
                ],
              ),

              Container(
                height: 40,
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black87, onPrimary: Colors.white),
                  onPressed: () {
                    // 데이터 전달하면서 페이지 전환 방법
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => PageMbtiResult(data1:elevate1, data2:elevate2, data3: elevate3, data4: elevate4)));
                  },
                  child: Text('확인')),
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
