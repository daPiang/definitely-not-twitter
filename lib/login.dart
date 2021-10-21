import 'package:definitely_not_twitter/dashboard.dart';
import 'package:flutter/material.dart';

import 'palette.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userCont = TextEditingController();
  final _passCont = TextEditingController();
  bool _isHidden = true;

  final loginSnack = const SnackBar(content: Text('Invalid Login'));

  @override
  void dispose() {
    _userCont.dispose();
    _passCont.dispose();
    super.dispose();
  }

  void _authLogin() {
    if (_userCont.text == 'admin' && _passCont.text == 'admin') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const DashBoard()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(loginSnack);
    }
  }

  void _togglePass() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image.asset('assets/images/BIRDIE_PNG.png',
                          width: 120, height: 120),
                      const Text(
                        'DALDALORO',
                        style: TextStyle(fontSize: 27, color: Palette.olive),
                      )
                    ]),
                    const SizedBox(height: 70),
                    TextField(
                      style: const TextStyle(color: Palette.olive),
                      controller: _userCont,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.olive)),
                          focusColor: Palette.blueccent,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.olive)),
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Palette.gray),
                          suffixIcon: Icon(
                            Icons.person_rounded,
                            color: Palette.olive,
                          )),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      style: const TextStyle(color: Palette.olive),
                      controller: _passCont,
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.olive)),
                          focusColor: Palette.blueccent,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.olive)),
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Palette.gray),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                _togglePass();
                              },
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility_off_rounded
                                    : Icons.visibility_rounded,
                                color: Palette.olive,
                              ))),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(horizontal: 40)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Palette.olive),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        onPressed: () {
                          _authLogin();
                        },
                        child: const Text('Login'))
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
