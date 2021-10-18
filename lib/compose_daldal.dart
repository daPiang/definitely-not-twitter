import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Compose extends StatefulWidget {
  const Compose({Key? key}) : super(key: key);

  @override
  _ComposeState createState() => _ComposeState();
}

class _ComposeState extends State<Compose> {
  final _daldalCont = TextEditingController();
  bool _canDaldal = false;

  @override
  void dispose() {
    _daldalCont.dispose();
    super.dispose();
  }

  void _daldalState() {
    setState(() {
      if (_daldalCont.text != ' ') {
        _canDaldal = true;
      } else {
        _canDaldal = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  Expanded(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                  )),
                  RawMaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 0,
                    fillColor: _canDaldal ? Palette.blueccent : Palette.gray,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    onPressed: _canDaldal ? () {} : null,
                    child: Text('Daldal'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Image.asset('assets/images/BIRDIE_PNG.png',
                        width: 50, height: 50),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 55),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) {
                          _daldalState();
                        },
                        controller: _daldalCont,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        maxLength: 280,
                        style: TextStyle(color: Palette.olive, fontSize: 20),
                        decoration: InputDecoration(
                            hintText: 'What\'s the tea?',
                            hintStyle: TextStyle(color: Palette.gray),
                            border: InputBorder.none),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
