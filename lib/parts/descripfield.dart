import 'package:flutter/material.dart';

class DescriptionField extends StatefulWidget {
  final String placeholder;

  DescriptionField({required this.placeholder});

  @override
  State<DescriptionField> createState() => _DescriptionFieldState();
}

class _DescriptionFieldState extends State<DescriptionField> {
  TextEditingController discpfieldcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.only(top: 28),
        padding: EdgeInsets.only(top: 15, left: 20, right: 20),
        decoration: BoxDecoration(
            color: const Color(0xff1E1C24),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff5D5D67))),
        child: TextField(
            controller: discpfieldcontroller,
            style: const TextStyle(color: Colors.white, fontSize: 15),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                hintText: widget.placeholder,
                hintStyle:
                    const TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                border: InputBorder.none)),
      ),
    );
  }
}
