import 'package:flutter/material.dart';
import 'package:prayerapp/settingpage.dart';

class Prayer_screen3 extends StatefulWidget {
  const Prayer_screen3({ Key? key }) : super(key: key);

  @override
  _Prayer_screen3State createState() => _Prayer_screen3State();
}

class _Prayer_screen3State extends State<Prayer_screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
         appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff097132),
              title: Center(child: Text('Prayer',style: TextStyle(color: Colors.white,fontSize: 22),)),
              leading: Icon(Icons.arrow_back),
               ),
               body: ListView(children: [
                 Container(
                   height: 70,
                   margin: EdgeInsets.only(left: 20,right: 20),
                   color: Color(0xffFFFFC0),
                   child: Center(
                     child: Text('Surah Al-Ikhlas',style: TextStyle(color: Color(0xff097132,),fontWeight:FontWeight.bold,fontSize: 25
)),
                   ),),
                   Container(
                     child: Image.asset('assets/surahimage.png',height: 330,width: 330,),
                   ),
                    Container(
                   height: 200,
                   margin: EdgeInsets.only(left: 20,right: 20),
                   color: Color(0xffFFFFC0),
                   
                     child: Container(
                       margin: EdgeInsets.only(left: 20,top: 10),
                       child: Text('This chapter of the Quran is about the\noneness of God. The concept of God\nhas been presented here in its purest\nform, ridding it of all polluting\nassociations which people of every age\nhave brought to it. There is no plurality\nof gods.',style: TextStyle(color: Color(0xff097132,),fontSize: 17
)),
                     ),
                   ),
 Container(
                   height: 50,
                   margin: EdgeInsets.only(left: 20,right: 20),
                   color: Color(0xff097132),
                  //  child: Center(
                  //    child: Text('Surah Al-Ikhlas',style: TextStyle(color: Color(0xff097132,),fontWeight:FontWeight.bold,fontSize: 25
                         ),
                         Row(children: [
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                             height: 50,
                             width: 150,
                            //  color: Colors.grey,
                              decoration: BoxDecoration(
     borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
     border: Border.all(color: Colors.grey,width: 0.4)
                           ),
                           child: ListTile(leading: Image.asset('assets/audionimage.png',height: 33,width: 33,),
                           title: Text('For Audio',style: TextStyle(color: Colors.grey,fontSize: 10),),
                           ),
                           
                           ),
                             Container(
                             margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                             height: 50,
                             width: 180,
                            //  color: Colors.grey,
                              decoration: BoxDecoration(
     borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
     border: Border.all(color: Colors.grey,width: 0.4)
                           ),
                           
                             child: ListTile(leading: Image.asset('assets/reminder.png',height: 33,width: 33,),
                             title: GestureDetector(
                              
                               child: Container(
                                //  margin: EdgeInsets.only(bottom: 10),
                                 
                                   child: Center(
                                     child: Text('set reminder\n  For Prayer',style: TextStyle(color: Color(0xff097132),fontSize: 12),
                                     ),
                                   ),
                                 ),
                             ),
                             ),
                            )
                            
                             
                           
                           
                           
                            ],)

                           ]
                          ),
                   ),
                
             );
        
      
  
  }
}