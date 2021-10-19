import 'package:definitely_not_twitter/dashboard.dart';
import 'package:definitely_not_twitter/compose_daldal.dart';
import 'package:definitely_not_twitter/splash_screen.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashBoard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
