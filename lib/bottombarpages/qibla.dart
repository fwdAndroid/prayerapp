import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:prayerapp/qiblawidgets/qiblahcompass.dart';
import 'package:prayerapp/qiblawidgets/loadingindicator.dart';
import 'package:prayerapp/qiblawidgets/qiblamaps.dart';

class Qibla extends StatefulWidget {
  const Qibla({ Key? key }) : super(key: key);

  @override
  _QiblaState createState() => _QiblaState();
}

class _QiblaState extends State<Qibla> {
    final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Qibla',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff097132),
      ),
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/big.jpg'), fit: BoxFit.cover),
        ),
        child: FutureBuilder(
          future: _deviceSupport,
          builder: (_, AsyncSnapshot<bool?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return LoadingIndicator();
            if (snapshot.hasError)
              return Center(
                child: Text("Error: ${snapshot.error.toString()}"),
              );

            if (snapshot.data!)
              return QiblahCompass();
            else
              return QiblahMaps();
          },
        ),
      ),
    );
  }
}