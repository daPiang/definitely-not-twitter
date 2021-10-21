import 'package:definitely_not_twitter/screen_data/messages_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> messageData = msgData;
    int length = messageData.length;

    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: messageData.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              contentPadding: const EdgeInsets.only(left: 20, top: 8),
              leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(messageData[length - 1 - index][3])),
              title: Row(
                children: [
                  Text(messageData[length - 1 - index][0]),
                  Text(
                    "@" + messageData[length - 1 - index][1],
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              subtitle: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        messageData[length - 1 - index][2],
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 16, right: 18),
                child: Text(messageData[length - 1 - index][4],
                    style: TextStyle(color: Colors.grey[700], fontSize: 14)),
              ),
            );
          }),
    );
  }
}
