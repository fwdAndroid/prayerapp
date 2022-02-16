import 'package:flutter/material.dart';
import 'package:prayerapp/bottombarpages/alaram.dart';
import 'package:prayerapp/bottombarpages/home.dart';
import 'package:prayerapp/bottombarpages/qibla.dart';
import 'package:prayerapp/bottombarpages/quran.dart';
import 'package:prayerapp/bottombarpages/surverypage.dart';
import 'package:prayerapp/prayerpage1.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Home(),
    Alaram(),
    Quran(),
     Qibla(),
     SurveyPage(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      
      bottomNavigationBar: BottomAppBar(
              color:  Colors.white,
                child: Container(
                  height: 60,
                  child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Home(); // if user taps on this dashboard tab will be active
                                currentTab = 0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                 Image.asset('assets/home.png',height: 30,width: 30,)
                              ],
                            ),
                          ),
                          //Orders
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Alaram(); // if user taps on this dashboard tab will be active
                                currentTab = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/prayer.png',height: 30,width: 30,)
                                
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Quran(); // if user taps on this dashboard tab will be active
                                currentTab = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               Icon(Icons.book,color: Color(0xff097132),)                               
                              ],
                            ),
                          ),

                          ///Create Orders
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    Qibla();// if user taps on this dashboard tab will be active
                                currentTab = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/qiblaimage.png',height: 30, width:30)
                              
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentScreen =
                                    SurveyPage();// if user taps on this dashboard tab will be active
                                currentTab = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               Icon(Icons.more_horiz,color:Color(0xff097132))
                              
                              ],
                            ),
                          )
                        ],
                      ),

                     
                    
                   
                ),
           
            
          
      
      ),
    );
  }
}