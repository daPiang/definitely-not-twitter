import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Compose extends StatelessWidget {
  const Compose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(children: [
                Image.asset('assets/images/BIRDIE_PNG.png',
                    width: 50, height: 50),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    maxLength: 280,
                    style: TextStyle(color: Palette.olive),
                    decoration: InputDecoration(
                        hintText: 'What\'s the tea?',
                        hintStyle: TextStyle(color: Palette.gray),
                        border: InputBorder.none),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
