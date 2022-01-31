import 'package:flutter/material.dart';
import 'package:prayerapp/prayer3.dart';
enum SurveyQuestion {A1,A2,A3,}
class Prayer_screen2 extends StatefulWidget {
  const Prayer_screen2({ Key? key }) : super(key: key);

  @override
  _Prayer_screen2State createState() => _Prayer_screen2State();
}

class _Prayer_screen2State extends State<Prayer_screen2> {
   SurveyQuestion? _character = SurveyQuestion.A2;
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
        height: 50,
           margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      
  // padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
     borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
     border: Border.all(color: Colors.grey,width: 0.4)
  ),
       child: ListTile(leading: Text('Search',style: TextStyle(color: Colors.grey,fontSize: 18),),
       trailing: Image.asset('assets/searchimage.png',height: 24,width: 24,)
       ),
        
            ),
             Container(
           decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.white.withOpacity(0.7),
        spreadRadius: 20,
        blurRadius: 10,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.7)
  ),
        margin: EdgeInsets.symmetric(horizontal: 60,vertical: 0),
         child:  ListTile(
                                      title: const Text('By Reading',style: TextStyle(fontSize: 14)),
                                      leading: Radio<SurveyQuestion>(
                          value: SurveyQuestion.A2,
                          groupValue: _character,
                          onChanged: (SurveyQuestion? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                                      ),
                                    ),
                        
       ),
        Container(
           decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.white.withOpacity(0.7),
        spreadRadius: 20,
        blurRadius: 10,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.7)
  ),
        margin: EdgeInsets.symmetric(horizontal: 60,vertical: 0),
         child:  ListTile(
                                      title: const Text('By Hahiz',style: TextStyle(fontSize: 14)),
                                      leading: Radio<SurveyQuestion>(
                          value: SurveyQuestion.A2,
                          groupValue: _character,
                          onChanged: (SurveyQuestion? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                                      ),
                                    ),
                        
       ),
        GestureDetector(
           onTap: () {
               Navigator.push(context,
      MaterialPageRoute(builder: (context) => Prayer_screen3()));
            },
          child: Container(
             decoration: BoxDecoration(
            boxShadow: [
               BoxShadow(
          color: Colors.white.withOpacity(0.7),
          spreadRadius: 20,
          blurRadius: 10,
          offset: Offset(0, 3), // changes position of shadow
              ),
            ],
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(15.0),
                  topRight: const Radius.circular(15.0),
                  bottomLeft: const Radius.circular(15.0),
                  bottomRight: const Radius.circular(15.0),
                ),
              border: Border.all(color: Colors.grey,width: 0.7)
          ),
          margin: EdgeInsets.symmetric(horizontal: 60,vertical: 0),
           child:  ListTile(
                                        title: const Text('By Seeing',style: TextStyle(fontSize: 14)),
                                        leading: Radio<SurveyQuestion>(
                            value: SurveyQuestion.A2,
                            groupValue: _character,
                            onChanged: (SurveyQuestion? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                                        ),
                                      ),
                          
               ),
        ),
             ],),
        
      ),
    );
  }
}