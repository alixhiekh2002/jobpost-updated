import 'package:flutter/material.dart';
import 'package:my_app/parts/appbutton.dart';
import 'package:my_app/screens/newjobclass.dart';

class EditJob extends StatefulWidget {
  @override
  State<EditJob> createState() => _EditJobState();
}

class _EditJobState extends State<EditJob> {
  TextEditingController titlefieldcontroller2 = TextEditingController();
  TextEditingController discpfieldcontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191720),
      body: Padding(
        padding: EdgeInsets.only(top: 95, left: 27, right: 27, bottom: 59),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print("Back Button Pressed");
                  },
                ),
                SizedBox(width: 20),
                Text(
                  "Edit Job",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color(0xff1e1c24),
                  border: Border.all(color: Color(0xff5d5d67), width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                controller: titlefieldcontroller2,
                obscureText: false,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 20, top: 15, bottom: 15),
                  hintText: "Enter Position name",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  border: InputBorder.none,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 28),
                padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff1E1C24),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xff5D5D67))),
                child: TextField(
                    controller: discpfieldcontroller2,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: "Describe Requirements",
                        hintStyle: const TextStyle(
                            color: Color(0xff8F8F9E), fontSize: 15),
                        border: InputBorder.none)),
              ),
            ),
            Spacer(),
            AppButton1(
                onpress: () {
                  onSave(context);
                },
                label: "Update Job")
          ],
        ),
      ),
    );
  }

  void onSave(BuildContext context) {
    var data = JobPost(titlefieldcontroller2.text, discpfieldcontroller2.text);
    Navigator.pop(context, data);
  }
}
