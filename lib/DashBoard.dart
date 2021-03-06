// ignore_for_file: file_names

import 'package:definitely_not_twitter/dashboard_sections/home.dart';
import 'package:definitely_not_twitter/dashboard_sections/messages.dart';
import 'package:definitely_not_twitter/dashboard_sections/notifications.dart';
import 'package:definitely_not_twitter/dashboard_sections/profile_drawer.dart';
import 'package:definitely_not_twitter/dashboard_sections/search.dart';
import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentScreen = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/Birdie.png',
              width: 40,
              height: 40,
            ),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  child: Icon(
                    Icons.account_circle_rounded,
                    color: Palette.blueccent,
                    size: 40.0,
                  ),
                ),
              ),
            );
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.auto_awesome_sharp,
              color: Palette.blueccent,
              size: 30.0,
            ),
          ),
        ],
      ),
      drawer: const ProfileDrawer(),
      body: Container(
        child: [
          const Home(),
          const Search(),
          const Notifications(),
          const Messages(),
        ].elementAt(_currentScreen),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cottage_outlined),
            label: " ",
            backgroundColor: Palette.blueccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: " ",
            backgroundColor: Palette.blueccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: " ",
            backgroundColor: Palette.blueccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: " ",
            backgroundColor: Palette.blueccent,
          ),
        ],
      ),
    );
  }
}
