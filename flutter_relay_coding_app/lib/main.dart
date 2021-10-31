import 'package:flutter/material.dart';
import 'package:flutter_relay_coding_app/guide_line.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Relay Coding App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: ElevatedButton(
          child: Text('here'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Guide()));
          },
        ),
      ),
    );
  }
}
