import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userCont = TextEditingController();
  final _passCont = TextEditingController();
  bool _isHidden = true;

  final loginSnack = SnackBar(content: Text('Invalid Login'));

  @override
  void dispose() {
    _userCont.dispose();
    _passCont.dispose();
    super.dispose();
  }

  void _authLogin() {
    if (_userCont.text == 'admin' && _passCont.text == 'admin') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: [
                  TextField(
                    controller: _userCont,
                    decoration: InputDecoration(
                        hintText: 'Username',
                        suffixIcon: Icon(Icons.person_rounded)),
                  ),
                  TextField(
                    controller: _passCont,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              _togglePass();
                            },
                            child: Icon(_isHidden
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded))),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        _authLogin();
                      },
                      child: Text('Login'))
                ]),
              ),
            ]),
      ),
    );
  }
}
