import 'package:definitely_not_twitter/dashboard_sections/drawerHeader.dart';
import 'package:definitely_not_twitter/dashboard_sections/drawer_options.dart';
import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: const [
      DashDrawerHeader(
        image:
            "https://lh3.googleusercontent.com/a-/AOh14GhAxW-c9GZGY4rr3s7no-lL69hJFmWf_NmH3hAA=s96-c-rg-br100",
        name: "Admin",
        account: "OfficialAdmin",
        following: 143,
        followers: 885,
      ),
      Divider(),
      DrawerOptions(
          icon: Icon(Icons.account_circle, color: Palette.olive, size: 24),
          label: "  Profile"),
      DrawerOptions(icon: Icon(Icons.article), label: "  Lists"),
      DrawerOptions(icon: Icon(Icons.article), label: "  Topics"),
      DrawerOptions(icon: Icon(Icons.article), label: "  Bookmarks"),
      DrawerOptions(icon: Icon(Icons.article), label: "  Moments"),
      DrawerOptions(icon: Icon(Icons.article), label: "  Monetization"),
      Divider(),
    ]));
  }
}
