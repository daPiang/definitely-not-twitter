import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text("Twitter"),
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            child: Image.asset(
              'assets/images/icon.png',
              width: 18,
              height: 18,
            ),
          ),
        ),
      ),
    );
  }
}
