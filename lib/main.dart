import 'package:exploring_flutter/pages/home_Page.dart';
import 'package:exploring_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.deepPurple,
      ),
       initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => new LoginPage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/home': (context) => new  HomePage(),
    '/login':((context) => new LoginPage())
  },
    );
  }
}

