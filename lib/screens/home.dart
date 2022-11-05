import 'package:flutter/material.dart';
import 'package:my_app/parts/1textfied.dart';
import 'package:my_app/parts/appbutton.dart';
import 'package:my_app/screens/Signupppp.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              "Let Sign you In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            const Text(
              "Welcome \njoin the community",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 47),
            TextField1(
              placeholder: "Enter your Name",
              any: false,
            ),
            TextField1(placeholder: "Enter your E-mail", any: false),
            TextField1(placeholder: "Enter Password", any: true),
            Spacer(),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(fontSize: 15, color: Color(0xff8F8F9E)),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, "/SignUp");
              },
            ),
            SizedBox(height: 14),
            AppButton1(onpress: () {}, label: "Sign In"),
          ],
        ),
      ),
    );
  }
}
