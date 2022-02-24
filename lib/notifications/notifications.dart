import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';

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
      body: StreamBuilder(
            stream: firebaseFirestore.collection("notifications").snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                  var ds=snapshot.data!.docs[index];
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
                           ListTile(
                            title: Text(
                              ds['content'],
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
                });
              } else if (snapshot.hasError) {
                return Center(child: Icon(Icons.error_outline));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}