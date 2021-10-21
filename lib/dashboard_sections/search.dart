import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../palette.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const TextField(
          textAlignVertical: TextAlignVertical(y: 0),
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search Daldaloro',
              hintStyle: TextStyle(color: Palette.gray),
              prefixIcon: Icon(
                Icons.search_rounded,
                color: Palette.blueccent,
              )),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Looks like there isn\'t anything going on right now...',
              style: TextStyle(color: Palette.gray),
            ),
            Text('Come back later!', style: TextStyle(color: Palette.gray))
          ],
        ),
      ),
    );
  }
}
