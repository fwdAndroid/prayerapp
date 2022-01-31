import 'package:flutter/material.dart';

class Alaram extends StatefulWidget {
  const Alaram({ Key? key }) : super(key: key);

  @override
  _AlaramState createState() => _AlaramState();
}

class _AlaramState extends State<Alaram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer Timing',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff097132),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/big.jpg',height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,),
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