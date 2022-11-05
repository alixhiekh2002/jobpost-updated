import 'package:flutter/material.dart';

class Titlefield extends StatefulWidget {
  final String placeholder;
  final bool any;

  Titlefield({required this.placeholder, required this.any, z});

  @override
  State<Titlefield> createState() => _TitlefieldState();
}

class _TitlefieldState extends State<Titlefield> {
  TextEditingController titlefieldcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Color(0xff1e1c24),
          border: Border.all(color: Color(0xff5d5d67), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: titlefieldcontroller,
        obscureText: widget.any,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
          hintText: widget.placeholder,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
