import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        ListTile(
          title: Text("Cianggciangg"),
          subtitle: Text("wanna play codm right now.."),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a-/AOh14GhAxW-c9GZGY4rr3s7no-lL69hJFmWf_NmH3hAA=s96-c-rg-br100")),
          trailing: Icon(Icons.favorite,
                          color: Colors.red[300]),
        ),
        ListTile(
          title: Text("AngelaDee"),
          subtitle: Text("K kapoy na sige acads AAAaaAA"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a/AATXAJx3y9lxVMGWSmoPANdT0aFjVGxrH0dTVGRZ8hmr=s96-c-br100-rg-mo")),
          trailing: Icon(Icons.favorite,
                          color: Colors.red[300]),
        ),
        ListTile(
          title: Text("NatersNut"),
          subtitle: Text("I think i'm gonna fail this course."),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a-/AOh14GhAxW-c9GZGY4rr3s7no-lL69hJFmWf_NmH3hAA=s96-c-rg-br100")),
          trailing: Icon(Icons.favorite,
                          color: Colors.red[300]),
        ),
        ListTile(
          title: Text("dazaiSan"),
          subtitle: Text("Shinde Kudasai"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a/AATXAJwKGGwx2HpCr-uKODwCQ7wfDHVhyTVKVy1p_r7j=s288-p-rw-no-mo")),
          trailing: Icon(Icons.favorite,
                          color: Colors.red[300]),
        ),
      ],
    );
  }
}