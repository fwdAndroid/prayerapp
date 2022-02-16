import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prayerapp/authentication/signinemailpassword.dart';
import 'package:prayerapp/authentication/signup.dart';
import 'package:prayerapp/location%20_screen/viewpage.dart';

enum SingingCharacter { English, Arabic }

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  SingingCharacter? _character = SingingCharacter.English;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: Image.asset('assets/greenimage.png')),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Center(
                child: Text(
              'Login to Prayer App',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
              Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child:  Text('Assalamu’alaikum! Join the largest,\nglobal Muslim community to access a\nfull range of features and be the first to\n get latest updates.'
        ,style: TextStyle(fontSize: 15,color: Colors.grey),)),
      
    //    Container(
    //    height: 55,
    //    margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
    //    child: ElevatedButton.icon(
    //         icon: Image.asset('assets/google.png'),
    //         label: Text('Login with Google',style: TextStyle(color: Colors.grey,fontSize: 15),),
    //         onPressed: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (builder) => PrayerScreen()));
    //         },
    //         style: ElevatedButton.styleFrom(
    //            fixedSize: Size(368, 88),
    //           side: BorderSide(width: 1.0, color: Colors.grey,),
    //           primary: Colors.white,
    //           shape: new RoundedRectangleBorder(
    //             borderRadius: new BorderRadius.circular(10.0),
    //           ),
    //         ),
    //      ),
    //  ),
      Container(
       height: 55,
       margin: EdgeInsets.symmetric(horizontal:40,vertical: 1),
       child: ElevatedButton.icon(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/appleimage.png',),
            ),
            label: Text('Login with Email',style: TextStyle(color: Colors.grey,fontSize: 15),),
            onPressed: () {
             Navigator.push(context,
      MaterialPageRoute(builder: (context) => SignInEmailAndPassword()));
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(368, 88),
              side: BorderSide(width: 1.0, color: Colors.grey,),
              primary: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
         ),

     ),

         Container(
           margin: EdgeInsets.symmetric(horizontal: 30),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(
                 flex: 1,
                 child: ListTile(
                      title: const Text('English'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.English,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
               ),
                  Expanded(
                    flex: 1,
                    child: ListTile(
                                title: const Text('Arabic'),
                                leading: Radio<SingingCharacter>(
                    value: SingingCharacter.Arabic,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                                ),
                              ),
                  ),
             ],
           ),
         ),
             Spacer(),
         Container(
       margin: EdgeInsets.symmetric(horizontal: 20),
       child: ListTile(
         onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder) => SignUp()));
         },
         leading: Text(
          'Dont have an account yet?',
          style: TextStyle(fontSize: 17),
          
         ),
         trailing: Text('Sign Up',style: TextStyle(color: Color(0xff2B5740),fontWeight: FontWeight.bold,fontSize: 17)),),
       ),
        ],
      ),
    );
  }
}
