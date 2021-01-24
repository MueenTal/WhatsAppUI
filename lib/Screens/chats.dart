import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final image;
  final title;
  final msg;
  ChatScreen({this.image, this.title, this.msg});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ListTile(
            leading: Container(
              width: 70,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
            ),
            title: Text(title),
            subtitle: Text("Hi Friend"),
            trailing: Column(
              children: [
                Text("10:15"),
                Container(
                  width: 24,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
