import 'package:flutter/material.dart';
import 'package:flutter__app/home_page.dart';
import 'package:flutter__app/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      //mode of theme
      themeMode: ThemeMode.light,
      //this is for light theme
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // appBarTheme: AppBarTheme(color: const Color(0xFF151026)),
      ),
      //this is for dark theme
      darkTheme: ThemeData(brightness: Brightness.dark),
      //initial routes for making route default
      initialRoute: "/",
      //routes
      routes: {
        "/": (context) => HomePage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
