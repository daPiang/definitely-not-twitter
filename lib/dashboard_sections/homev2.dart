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
    List<dynamic> responseList = DASHBOARD_DATA;
    int listLen = responseList.length-1;
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),
            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 1
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-1][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-1][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-1][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-1][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 2
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-2][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-2][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-2][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-2][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 3
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-3][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-3][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-3][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-3][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 4
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-4][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-4][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-4][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-4][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 5
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-5][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-5][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-5][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-5][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 6
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-6][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-6][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-6][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-6][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 7
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-7][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-7][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-7][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-7][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 8
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-8][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-8][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-8][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-8][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),
        // -------------------------------------------------------------------------- 9
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(backgroundImage: NetworkImage(responseList[listLen-9][3])),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(responseList[listLen-9][0], style: TextStyle(color: Colors.black, fontSize: 17)),
                          Text("@" + responseList[listLen-9][1], style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                        ],
                      ),
                      Container(padding: EdgeInsets.only(top:3),width: 160,child: Text(responseList[listLen-9][2], style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.left,)),
                    ],
                  ),  
                ],
              ),

            Container(
              margin: EdgeInsets.only(top: 5,left:70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.reply, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                      Icon(Icons.repeat, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      ),
                       Icon(Icons.favorite, color: Color(0xFF808589), size: 20),
                      Container(
                        margin: EdgeInsets.only(left: 3.0, right: 50),
                        child: Text("15", style: TextStyle(color: Color(0xFF808589))),
                      )
                    ],
                  ),
                  
                ],
              ),
            ), 
            Divider(
              height: 50,
              thickness: 1,
              color: Colors.grey[400],
              ),
            ],
          ),
        ),    
         // -------------------------------------------------------------------------- 10
        FloatingActionButton(onPressed: (){}, 
        child: const Icon(Icons.add),
        backgroundColor: Color(0xFF7f9086)) 
      ],  
    );
  }
}