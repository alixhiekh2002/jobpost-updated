import 'package:flutter/material.dart';
import 'package:my_app/screens/Signupppp.dart';
import 'package:my_app/screens/addnewjob.dart';
import 'package:my_app/screens/editjob.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/newjobclass.dart';
import 'package:my_app/screens/welcomescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: (settings) {
        Map<String, Widget> pages = {
          "/": HomePage(),
          "/SignUp": SignUp(),
          "AddNewJob": AddNewJob(),
          "EditJob": EditJob(),
          "WelcomeScreen": Welcome()
        };
        return MaterialPageRoute<JobPost>(
            builder: (childContext) => pages[settings.name] ?? HomePage(),
            settings: settings);
      },
    );
  }
}
