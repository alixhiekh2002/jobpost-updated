import 'package:flutter/material.dart';

class AppButton1 extends StatefulWidget {
  final GestureTapCallback onpress;
  final String label;

  const AppButton1({required this.onpress, required this.label});

  @override
  State<AppButton1> createState() => _AppButton1State();
}

class _AppButton1State extends State<AppButton1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(widget.label, style: TextStyle(fontSize: 15)),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
      onTap: widget.onpress,
    );
  }
}
