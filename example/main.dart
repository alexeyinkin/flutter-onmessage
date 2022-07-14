import 'package:flutter/material.dart';
import 'package:onmessage/onmessage.dart';

/// This app prints all messages it receives from other frames in web.
void main() {
  OnMessage.instance.stream.listen((MessageEvent event) {
    print(event);
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
    );
  }
}
