import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  final image;
  final title;
  CallsScreen({this.image, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 17),
            leading: Container(
              width: 70,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
            ),
            title: Text(title),
            subtitle: Row(
              children: [Icon(Icons.call_received), Text("Yesterday , 5:09")],
            ),
            trailing: Icon(
              Icons.call,
              size: 25,
              color: Theme.of(context).primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
