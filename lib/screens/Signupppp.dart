import 'package:flutter/material.dart';
import 'package:my_app/parts/1textfied.dart';
import 'package:my_app/parts/appbutton.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/welcomescreen.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 110, left: 27, right: 27, bottom: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            const Text(
              "You \nHave been missed",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 47),
            TextField1(placeholder: "Enter your E-mail", any: false),
            TextField1(placeholder: "Enter Password", any: true),
            Spacer(),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don,t have an Account?",
                    style: TextStyle(fontSize: 15, color: Color(0xff8F8F9E)),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomePage()));
              },
            ),
            SizedBox(height: 14),
            AppButton1(
                onpress: () {
                  Navigator.pushNamed(context, "WelcomeScreen");
                },
                label: "Sign In"),
          ],
        ),
      ),
    );
  }
}
