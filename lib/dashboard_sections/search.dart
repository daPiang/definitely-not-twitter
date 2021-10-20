import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:definitely_not_twitter/dashboard_sections/dashboard_data.dart';

class Search extends StatefulWidget {
  final List<String> list = List.generate(10, (index) => "Text $index");
  List<dynamic> responseList = DASHBOARD_DATA;
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
