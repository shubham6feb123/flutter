import 'package:flutter/material.dart';
import 'package:flutter__app/screens/home_page.dart';
import 'package:flutter__app/screens/login_page.dart';
import 'package:flutter__app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily
          // appBarTheme: AppBarTheme(color: const Color(0xFF151026)),
          ),
      // debugShowCheckedModeBanner: false, //to remove debug banner from screen

      //this is for dark theme
      darkTheme: ThemeData(brightness: Brightness.dark),
      //initial routes for making route default
      initialRoute: "/login",
      //routes
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
