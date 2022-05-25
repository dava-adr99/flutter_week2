import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DescribeProduct(),
    );
  }
}

class DescribeProduct extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
