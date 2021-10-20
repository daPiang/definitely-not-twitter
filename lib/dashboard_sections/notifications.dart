import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:definitely_not_twitter/dashboard_sections/notificationData.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    
    List<dynamic> notifData = NOTIFICATION_DATA;
    int length = notifData.length;

    return MaterialApp(
      home: Scaffold(
      body: ListView.separated(
      separatorBuilder: (context, index) {return Divider();},
      itemCount: notifData.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.only(left:20, top: 15),
          leading: CircleAvatar(backgroundImage: NetworkImage(notifData[length - 1 - index][3])),
          title: Padding(
            padding: const EdgeInsets.only(bottom:5),
            child: Row(
              children: [
                Text(notifData[length - 1 - index][0]),
                Text( "@" + notifData[length - 1 - index][1], style: TextStyle(color: Colors.grey[700]),),
                Text(" " + notifData[length - 1 - index][5], style: TextStyle(color: Colors.grey[700], fontSize: 14))
              ],
            ),
          ),
          subtitle: Flexible(
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(bottom: 15),
                      child: Text("@"+notifData[length - 1 - index][4] + " ", textAlign: TextAlign.left, style: TextStyle(color: Color(0xFF528296), fontSize: 16),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 15),
                      child: Text(notifData[length - 1 - index][2], textAlign: TextAlign.left,),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.reply, size: 20, color: Colors.grey[600]),  
                    Padding(
                      padding: EdgeInsets.only(left: 5,right: 80),
                      child: Text('15', style: TextStyle(fontSize: 12)),
                    ),

                    Icon(Icons.favorite, size: 18, color: Colors.grey[600]),
                    Padding(
                      padding: EdgeInsets.only(left: 5,right: 80),
                      child: Text('15', style: TextStyle(fontSize: 12))
                      ),

                    Icon(Icons.share, size: 18, color: Colors.grey[600]),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('15', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isThreeLine: true,
        ); 
      }),
      )
    );
  }
}