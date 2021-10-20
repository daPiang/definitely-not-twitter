import 'package:definitely_not_twitter/DashBoard.dart';
import 'package:definitely_not_twitter/screen_data/dashboard_data.dart';
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

  final daldalSnack =
      const SnackBar(content: Text('Daldal posted successfully'));

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

  void daldal() {
    DASHBOARD_DATA.add([
      'Admin',
      'OfficialAdmin',
      _daldalCont.text,
      'https://lh3.googleusercontent.com/a-/AOh14GhAxW-c9GZGY4rr3s7no-lL69hJFmWf_NmH3hAA=s96-c-rg-br100'
    ]);
    ScaffoldMessenger.of(context).showSnackBar(daldalSnack);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DashBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                  Expanded(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                  )),
                  RawMaterialButton(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 0,
                    fillColor: _canDaldal ? Palette.blueccent : Palette.gray,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    onPressed: _canDaldal
                        ? () {
                            daldal();
                          }
                        : null,
                    child: const Text('Daldal'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                    padding: const EdgeInsets.only(left: 55),
                    child: Expanded(
                      child: TextField(
                        onChanged: (text) {
                          _daldalState();
                        },
                        controller: _daldalCont,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        maxLength: 280,
                        style:
                            const TextStyle(color: Palette.olive, fontSize: 20),
                        decoration: const InputDecoration(
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
