import 'package:flutter/material.dart';
import 'package:oh_local_assignment/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'oh Local',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
