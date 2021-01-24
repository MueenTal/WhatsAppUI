import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final image;
  StatusScreen({this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, right: 7),
          leading: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Tap to add status ubdate"),
        ),
        Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(13),
          child: Row(
            children: [Text("Recent Update")],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 7),
            leading: Container(
              width: 70,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
            ),
            title: Text("Ahmed"),
            subtitle: Text("20 minutes ago"),
          ),
        )
      ],
    );
  }
}
