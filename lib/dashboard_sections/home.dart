import 'package:definitely_not_twitter/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:definitely_not_twitter/screen_data/dashboard_data.dart';

import '../compose_daldal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> daldata = dashData;
    int length = daldata.length;

    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: daldata.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.only(
                left: 20,
                top: 15,
              ),
              leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(daldata[length - 1 - index][3])),
              title: Row(children: [
                Text(
                  daldata[length - 1 - index][0],
                  style: const TextStyle(color: Palette.olive),
                ),
                Text(
                  " @" + daldata[length - 1 - index][1],
                  style: const TextStyle(color: Palette.gray),
                )
              ]),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      daldata[length - 1 - index][2],
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Palette.olive),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.reply, size: 20, color: Colors.grey[600]),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, right: 80),
                        child: Text('15', style: TextStyle(fontSize: 12)),
                      ),
                      Icon(Icons.favorite, size: 18, color: Colors.grey[600]),
                      const Padding(
                          padding: EdgeInsets.only(left: 5, right: 80),
                          child: Text('15', style: TextStyle(fontSize: 12))),
                      Icon(Icons.share, size: 18, color: Colors.grey[600]),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text('15', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
              isThreeLine: true,
            );
          }),
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Compose()));
          },
          backgroundColor: const Color(0xFF528296)),
    );
  }
} // 