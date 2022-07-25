import 'package:booktickets/component/app_styles.dart';
import 'package:booktickets/screens/bottom_navigator.dart';
import 'package:flutter/material.dart';

// App entry point
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const BottomNavigator()
    );
  }
}
