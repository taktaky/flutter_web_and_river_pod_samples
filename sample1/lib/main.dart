import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 本文の文字列を設定
    final String value = 'Hello World!';

    return MaterialApp(
      home: Scaffold(
        // タイトル
        appBar: AppBar(title: Text('Sample1')),
        // 本文
        body: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
