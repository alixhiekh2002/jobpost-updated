import 'package:flutter/material.dart';
import 'package:my_app/parts/1textfied.dart';
import 'package:my_app/screens/addnewjob.dart';
import 'package:my_app/screens/editjob.dart';
import 'package:my_app/screens/newjobclass.dart';

class Welcome extends StatefulWidget {
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<JobPost> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191720),
      body: Padding(
        padding: EdgeInsets.only(top: 79, left: 27, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  "Muhammad Ali",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                //  SizedBox(width: 130),
                Spacer(),
                GestureDetector(
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print("Button Clicked");
                  },
                )
              ],
            ),
            TextField1(placeholder: "Search Jobs", any: false),
            SizedBox(height: 20),
            Expanded(
                child: items.isNotEmpty
                    ? ListView.builder(
                        itemCount: items.length,
                        itemBuilder: item,
                      )
                    : Center(
                        child: Text("No Items Here",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed<JobPost>(context, "AddNewJob")
              .then((value) => setState(() {
                    items.add(value!);
                  }));
        },
      ),
    );
  }

  Widget item(BuildContext context, int index) => Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF201E27),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text((items[index].title),
                          maxLines: null,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 10),
                      Text((items[index].discp),
                          maxLines: null,
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)))
                    ]),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed<JobPost>(context, "EditJob")
                        .then((value) => setState(() {
                              items.add(value!);
                            }));
                  },
                  child: const Icon(
                    Icons.edit,
                    size: 22,
                    color: Colors.white,
                  )),
              const SizedBox(width: 25),
              GestureDetector(
                onTap: () {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: const Icon(
                  Icons.delete,
                  size: 24,
                  color: Color(0xFFFF5959),
                ),
              ),
            ],
          ),
        ),
      );
}
