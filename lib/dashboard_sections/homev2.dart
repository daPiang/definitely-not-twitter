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

    return MaterialApp(
      home: Scaffold(
      body: ListView.separated(
      separatorBuilder: (context, index) {return Divider();},
      itemCount: daldata.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.only(left:20, top: 15),
          leading: CircleAvatar(backgroundImage: NetworkImage(daldata[index][3])),
          title: Text(daldata[index][0] + " @" + daldata[index][1]),
          subtitle: Flexible(
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 15),
                  child: Text(daldata[index][2], textAlign: TextAlign.left,),
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