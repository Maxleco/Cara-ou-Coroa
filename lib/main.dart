import 'package:flutter/material.dart';

import 'ScreenMain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cara ou Coroa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenMain(),
    );
  }
}

