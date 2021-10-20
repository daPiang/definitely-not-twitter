import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:definitely_not_twitter/dashboard_sections/dashboardData.dart';

class Homev2 extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homev2> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> daldata = DASHBOARD_DATA;
    int length  = daldata.length;

    return MaterialApp(
      home: Scaffold(
      body: ListView.separated(
      separatorBuilder: (context, index) {return Divider();},
      itemCount: daldata.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.only(left:20, top: 15,),
          leading: CircleAvatar(backgroundImage: NetworkImage(daldata[length - 1 - index][3])),
          title: Text(daldata[length - 1 - index][0] + " @" + daldata[length - 1 - index][1]),
          subtitle: Flexible(
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 15),
                  child: Text(daldata[length - 1 - index][2], textAlign: TextAlign.left,),
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
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: (){},backgroundColor: Color(0xFF528296)),
      )
    );
  }
} // 