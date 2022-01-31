import 'package:flutter/material.dart';
import 'package:prayerapp/bottombar/home_view.dart';

class PrayerTiming extends StatefulWidget {
  const PrayerTiming({Key? key}) : super(key: key);

  @override
  _PrayerTimingState createState() => _PrayerTimingState();
}

class _PrayerTimingState extends State<PrayerTiming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff097132),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (builder) => MainScreen()));
        },
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/big.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 10,
              child: ListTile(
                leading: Icon(Icons.alarm),
                title: Text(
                  '22 January 2022',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Muharram'),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              elevation: 10,
              child: ListTile(
                leading: Text('Fajr'),
                trailing: Icon(
                  Icons.volume_up,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              elevation: 10,
              child: ListTile(
                leading: Text('Duhr'),
                trailing: Icon(
                  Icons.volume_up,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              elevation: 10,
              child: ListTile(
                leading: Text('Asar'),
                trailing: Icon(
                  Icons.volume_up,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              elevation: 10,
              child: ListTile(
                leading: Text('Maghrib'),
                trailing: Icon(
                  Icons.volume_up,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              elevation: 10,
              child: ListTile(
                leading: Text('Isha'),
                trailing: Icon(Icons.volume_off),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
