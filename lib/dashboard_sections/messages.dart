import 'package:flutter/widgets.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello from MESSAGES TAB!!"),
    );
  }
}