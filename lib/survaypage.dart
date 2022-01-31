import 'package:flutter/material.dart';
import 'package:prayerapp/bottombar/home_view.dart';
import 'package:prayerapp/authentication/loginpage.dart';




class  Survay extends StatefulWidget {
  const  Survay({ Key? key }) : super(key: key);

  @override
  _SurvayState createState() => _SurvayState();
}
enum SurveyQuestion {A1,A2,A3,}
enum SurveyQuestionno {A4,A5,A6,}
class _SurvayState extends State< Survay> {
    SurveyQuestion? _character = SurveyQuestion.A2;
    SurveyQuestionno? _cas = SurveyQuestionno.A4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Image.asset('assets/survyimage.png'),
        
      Container(
        height: 50,
        
        //  margin: const EdgeInsets.all(15.0),
  // padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
     borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
     border: Border.all(color: Colors.grey)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: Text('Q1 You will recite thr Quran every day?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)) ,
      ),
      
 
 
   
    Column(
     children: [
       Container(
          decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
    //             bottomLeft: const Radius.circular(15.0),
    //             bottomRight: const Radius.circular(15.0),
               ),
      border: Border.all(color: Colors.white)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
         child:  ListTile(
                                      title: const Text('Yes I recite the quran every day',style: TextStyle(fontSize: 14)),
                                      leading: Radio<SurveyQuestion>(
                          value: SurveyQuestion.A1,
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
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
    //             bottomLeft: const Radius.circular(15.0),
    //             bottomRight: const Radius.circular(15.0),
               ),
      border: Border.all(color: Colors.white)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
         child:  ListTile(
                                      title: const Text('No i recite the quran twice in a week',style: TextStyle(fontSize: 14)),
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
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
    //             bottomLeft: const Radius.circular(15.0),
    //             bottomRight: const Radius.circular(15.0),
               ),
      border: Border.all(color: Colors.white)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
         child:  ListTile(
                                      title: const Text('No i only recite the quran in ramdan',style: TextStyle(fontSize: 14),),
                                      leading: Radio<SurveyQuestion>(
                          value: SurveyQuestion.A3,
                          groupValue: _character,
                          onChanged: (SurveyQuestion? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                                      ),
                                    ),
                        
       ),
     ],
   ),

    
      Container(
        height: 50,
        
        //  margin: const EdgeInsets.all(15.0),
  // padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
     borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
     border: Border.all(color: Colors.grey)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(child: Text('Q2 Can you offer prayer regularly?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)) ,
      ),

      Column(children: [
       Container(
          decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
    //             bottomLeft: const Radius.circular(15.0),
    //             bottomRight: const Radius.circular(15.0),
               ),
      border: Border.all(color: Colors.white)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
         child:  ListTile(
                                      title: const Text('Yes I offer prayer regularly',style: TextStyle(fontSize: 14),),
                                      leading: Radio<SurveyQuestionno>(
                          value: SurveyQuestionno.A4,
                          groupValue: _cas,
                          onChanged: (SurveyQuestionno? value) {
                            setState(() {
                              _cas = value;
                            });
                          },
                                      ),
                                    ),
       ) ,
        Container(
          decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
    //             bottomLeft: const Radius.circular(15.0),
    //             bottomRight: const Radius.circular(15.0),
               ),
      border: Border.all(color: Colors.white)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
         child:  ListTile(
                                      title: const Text('No i never offer prayer',style: TextStyle(fontSize: 14),),
                                      leading: Radio<SurveyQuestionno>(
                          value: SurveyQuestionno.A5,
                          groupValue: _cas,
                          onChanged: (SurveyQuestionno? value) {
                            setState(() {
                              _cas = value;
                            });
                          },
                                      ),
                                    ),
       ), 
          Container(
          decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
    //             bottomLeft: const Radius.circular(15.0),
    //             bottomRight: const Radius.circular(15.0),
               ),
      border: Border.all(color: Colors.white)
  ),
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
         child:  ListTile(
                                      title: const Text('I offer prayer whennever i was free',style: TextStyle(fontSize: 14),),
                                      leading: Radio<SurveyQuestionno>(
                          value: SurveyQuestionno.A6,
                          groupValue: _cas,
                          onChanged: (SurveyQuestionno? value) {
                            setState(() {
                              _cas = value;
                            });
                          },
                                      ),
                                    ),
       ),

         Container(
                  margin: EdgeInsets.symmetric(horizontal:10,vertical: 40),                   child: ElevatedButton(
                    
    style: ElevatedButton.styleFrom(
      primary: Color(0xff097132),
      minimumSize:  Size(200, 60),
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
    ),
onPressed: () {
    // Navigator.push(context,
    //   MaterialPageRoute(builder: (context) => Homeview()));
},
child: Text('Continu',style: TextStyle(fontSize: 20),
),
),
                 ),
      ],)
      
 
 
   
      ],),
      
    );
  }
}