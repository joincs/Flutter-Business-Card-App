import 'package:bizCard/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bissness Card App',
      theme: ThemeData(primaryColor: Colors.red),
      home: BizCard(),
    );
  }
}
