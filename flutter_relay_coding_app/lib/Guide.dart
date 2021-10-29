import 'package:flutter/material.dart';


enum Season { Summer, Winter }

class Guide extends StatefulWidget {
  @override
  _GuideState createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  //션택되는 elevated button에 따라 변경되는 값
  String elevate = '';

  //toggle button의 4칸짜리 리스트를 생성하고 값을 false로 설정
  List<bool> _selection = List.generate(4, (index) => false);

  //선택되는 radio 값에 따라 변경되는 값
  String radio = 'Summer';
  //radio의 초기 값은 Summer로 설정
  Season? _season = Season.Summer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('<Elevated Button>'),
          Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  //1번 Elevated Button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue, onPrimary: Colors.white),
                      onPressed: () {
                        setState(() {
                          elevate = '1';
                        });
                      },
                      child: Text('1')),
                  //2번 Elevated Button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue, onPrimary: Colors.white),
                      onPressed: () {
                        setState(() {
                          elevate = '2';
                        });
                      },
                      child: Text('2')),
                ],
              ),
              SizedBox(
                width: 70,
              ),
              //선택된 Elevated 버튼에 따라 변경되는 출력
              Text('선택된 버튼: $elevate')
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text('<Toggle Button>'),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
              //Toggle Button
              ToggleButtons(
                children: [
                  Icon(Icons.arrow_back),
                  Icon(Icons.arrow_upward),
                  Icon(Icons.arrow_forward),
                  Icon(Icons.arrow_downward)
                ],
                isSelected: _selection,
                //toggle button이 눌릴 때 마다 selection 리스트의 true, false값을 바꿔줌
                onPressed: (int index) {
                  //state를 다시 갱신 시켜주는 메소드
                  setState(() {
                    _selection[index] = !_selection[index];
                  });
                },
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Column(
            children: [
              SizedBox(
                width: 30,
              ),
              Text('<Radio Button>'),
              //Summer radio button
              ListTile(
                title: const Text('Summer'),
                leading: Radio<Season>(
                  value: Season.Summer,
                  groupValue: _season,
                  onChanged: (Season? value) {
                    setState(() {
                      _season = value;
                      radio = 'Summer';
                    });
                  },
                ),
              ),
              //Winter radio button
              ListTile(
                title: const Text('Winter'),
                leading: Radio<Season>(
                  value: Season.Winter,
                  groupValue: _season,
                  onChanged: (Season? value) {
                    setState(() {
                      _season = value;
                      radio = 'Winter';
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Text('선택된 버튼: $radio')
        ],
      ),
      //뒤로가기 버튼
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}