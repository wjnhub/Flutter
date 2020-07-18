import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // 应用程序整体主题的亮度
        brightness: Brightness.light,
        // 主要部分的背景色
        primarySwatch: Colors.blue,
        // 前景色（文本、按钮等）
        accentColor: Colors.orange[600],

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome To Flutter"),
        ),
        body: Center(
          child: RaisedButton(onPressed: (){}),
        ),
      ),
    );
  }
}

