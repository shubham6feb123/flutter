import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    const pi = 3.14;
    final temp = 43;

    return Scaffold(
      appBar: AppBar(title: Text("Flutter App")),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter"),
        ),
      ),
      // drawer: Drawer(),
    );
  }
}
