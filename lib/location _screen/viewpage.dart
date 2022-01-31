import 'package:flutter/material.dart';
import 'package:prayerapp/authentication/loginpage.dart';
import 'package:prayerapp/payments/paymet_screen.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({ Key? key }) : super(key: key);

  @override
  _PrayerScreenState createState() => _PrayerScreenState();
}
 
class _PrayerScreenState extends State<PrayerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2B5740),
        body: ListView(children: [
          SizedBox(height: 40,),
           Container(
            //  margin: EdgeInsets.only(top: 20),
             child: Center(child: Text('Assalam - O - Allaikum',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
           ),
      SizedBox(height: 80,),
             Container(
              //  margin: EdgeInsets.only(top: 50),
               height: 230,
               width: 200,
               child: Image.asset('assets/mask.png')
               ),

             Container(
               margin: EdgeInsets.only(top: 50),
               child: Center(child: Text('The app nneeds your location to\n Calculate accurate prater times',style: TextStyle(color: Colors.white,fontSize: 17)
               ,)
               ),
               ),
                SizedBox(height: 80,),
                 Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,vertical: 70),                   child: ElevatedButton(
                    
    style: ElevatedButton.styleFrom(
      primary: Color(0xffFD7565),
     minimumSize:  Size(100, 50),
    ),
onPressed: () {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => Payment()));
},
child: Text('Locate me',style: TextStyle(fontSize: 18),
),
),
                 ),
        
          ]  ) ),
    );
  }
}