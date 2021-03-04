import 'package:flutter/material.dart';
import 'package:johnnysidolfe/home.dart';
import 'package:johnnysidolfe/viewmodel/groups.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
IdolModel model;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(this.model),
    );
  }
}
