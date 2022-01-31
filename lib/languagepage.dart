import 'package:flutter/material.dart';
enum SurveyQuestion {A1,A2,}
class  Language extends StatefulWidget {
  const  Language({ Key? key }) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State< Language> {
   SurveyQuestion? _character = SurveyQuestion.A2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff097132),
              title: Center(child: Text('Language',style: TextStyle(color: Colors.white,fontSize: 22),)),
              leading: Icon(Icons.arrow_back),
               ),
               body: ListView(children: [
                 Container(
                     margin: EdgeInsets.symmetric(vertical: 60),
                   child: Image.asset('assets/languages 1 (1).png',height: 227,width: 224),),

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
                                      title: const Text('English',style: TextStyle(fontSize: 17,color: Color(0xff2B5740))),
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
                                      title: const Text('Arabic',style: TextStyle(fontSize: 17,color: Color(0xff2B5740))),
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
               ],),
      
    );
  }
}