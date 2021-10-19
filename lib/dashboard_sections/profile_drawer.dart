import 'package:definitely_not_twitter/dashboard_sections/drawer_header.dart';
import 'package:definitely_not_twitter/dashboard_sections/drawer_options.dart';
import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/widgets/icon.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(children: [
        DashDrawerHeader(
          image: Icon(Icons.account_circle_rounded,
              color: Palette.blueccent, size: 100),
          name: "Admin",
          account: "OfficialAdmin",
          following: 143,
          followers: 885,
        ),
        Divider(),
        DrawerOptions(
            icon: Icon(Icons.account_circle, color: Palette.olive, size: 30),
            label: " Profile"),
        DrawerOptions(
            icon: Icon(Icons.article, color: Palette.olive, size: 30),
            label: " Lists"),
        DrawerOptions(
            icon: Icon(Icons.flutter_dash_rounded,
                color: Palette.olive, size: 30),
            label: " Topics"),
        DrawerOptions(
            icon: Icon(
              Icons.bookmark_outlined,
              color: Palette.olive,
              size: 30,
            ),
            label: " Bookmarks"),
        DrawerOptions(
            icon: Icon(
              Icons.flash_on_rounded,
              color: Palette.olive,
              size: 30,
            ),
            label: " Moments"),
        DrawerOptions(
            icon: Icon(
              Icons.equalizer_rounded,
              color: Palette.olive,
              size: 30,
            ),
            label: " Monetization"),
        Divider(),
        DrawerOptions(
            icon: Icon(
              Icons.build_outlined,
              color: Palette.blueccent,
              size: 30,
            ),
            label: "Settings and Privacy"),
        Divider(),
        DrawerOptions(
            icon: Icon(
              Icons.contact_support_outlined,
              color: Palette.blueccent,
              size: 30,
            ),
            label: "Help Center"),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Divider(),
          ),
        ),
        DrawerOptions(
            icon: Icon(
              Icons.bedtime_rounded,
              color: Palette.blueccent,
              size: 25,
            ),
            label: "Night Mode")
      ]),
    ));
  }
}
