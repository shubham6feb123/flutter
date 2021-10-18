import 'package:flutter/material.dart';
import 'package:flutter__app/screens/home_page.dart';
import 'package:flutter__app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Login $name",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        changedButton = true;
                      });
                      await Future.delayed(Duration(
                        seconds: 1,
                      ));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: changedButton ? Icon(Icons.done) : Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 45)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
