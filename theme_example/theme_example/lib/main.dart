import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appName = '自定义主题';

    return MaterialApp(
      title: appName,

      theme: ThemeData(

        // 应用整体主题亮度
        brightness: Brightness.light,
        // 背景色
        primarySwatch: Colors.green,
        primaryColor: Colors.red,
        // 前景色
        accentColor: Colors.orange[600],

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme
              .of(context)
              .accentColor,
          child: Text(
            '带有背景颜色的文本组件',
            style: Theme
                .of(context)
                .textTheme
                .subtitle1,
          ),
        ),
      ),

      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.computer, color: Colors.white),
        )),
    );
  }
}


