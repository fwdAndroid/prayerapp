import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Notifications"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body:  ListView.builder(itemBuilder: (index, context) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text(
                    'The First Notification',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }));
  }
}