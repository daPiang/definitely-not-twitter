import 'package:definitely_not_twitter/dashboard_sections/drawerHeader.dart';
import 'package:definitely_not_twitter/dashboard_sections/drawer_options.dart';
import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/widgets/icon.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DashDrawerHeader(
              image: "https://lh3.googleusercontent.com/a-/AOh14GhAxW-c9GZGY4rr3s7no-lL69hJFmWf_NmH3hAA=s96-c-rg-br100",
              name: "Admin",
              account: "OfficialAdmin",
              following: 143,
              followers: 885,
            ),
            Divider(),
            DrawerOptions(icon: Icon(Icons.account_circle,
                          color: Palette.olive,
                          size: 30), 
                          label: " Profile"),
            DrawerOptions(icon: Icon(Icons.article,
                          color: Palette.olive,
                          size: 30),
                          label: " Lists"),
            DrawerOptions(icon: Icon(Icons.flutter_dash_rounded,
                          color: Palette.olive,
                          size: 30), 
                          label: " Topics"),
            DrawerOptions(icon: Icon(Icons.bookmark_outlined,
                          color: Palette.olive,
                          size: 30,), 
                          label: " Bookmarks"),
            DrawerOptions(icon: Icon(Icons.flash_on_rounded,
                          color: Palette.olive,
                          size: 30,), 
                          label: " Moments"),
            DrawerOptions(icon: Icon(Icons.equalizer_rounded,
                          color: Palette.olive,
                          size: 30,), 
                          label: " Monetization"),
            Divider(),
          ]
        )
      );
  }
}
