import 'package:flutter/material.dart';
import 'package:prayerapp/authentication/registration.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.green,
      elevation: 0,
      
      ),
      body: ListView(
        children: [
           
     Container(
       height: 150,
       child: Image.asset('assets/greenimage.png')
     ),

      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Center(child: Text('Sign Up to prayer App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
      ),
      SizedBox(height: 80,),
  Container(
       height: 55,
       margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
       child: ElevatedButton.icon(
            icon: Image.asset('assets/google.png'),
            label: Text('Login with Google',style: TextStyle(color: Colors.grey,fontSize: 15),),
            onPressed: () {
              print('Pressed');
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 1.0, color: Colors.grey,),
              primary: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
         ),
     ),
       Container(
       height: 55,
       margin: EdgeInsets.symmetric(horizontal: 40),
       child: ElevatedButton.icon(
            icon: Image.asset('assets/fbimage.png'),
            label: Text('Sign up with face book',style: TextStyle(color: Colors.white,fontSize: 15),),
            onPressed: () {
              print('Pressed');
            },
            style: ElevatedButton.styleFrom(
              // side: BorderSide(width: 1.0, color: Colors.white,),
              primary: Colors.blue,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
         ),
     ),
      Container(
       height: 55,
       margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
       child: ElevatedButton.icon(
            icon: Image.asset('assets/letterimage.png'),
            label: Text('Sign up with Email',style: TextStyle(color: Colors.grey,fontSize: 15),),
            onPressed: () {
               Navigator.push(context,
      MaterialPageRoute(builder: (context) => RegistrationPage()));
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 1.0, color: Colors.grey,),
              primary: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
         ),
     ),
      SizedBox(height: 120,),
     Container(
       margin: EdgeInsets.symmetric(horizontal: 20),
       child: ListTile(
         leading: TextButton(
          onPressed: () {
             
          },
          style: TextButton.styleFrom(
          primary: Colors.black,
          ),
          child: Text(
          'Dont have an account yet?',
          style: TextStyle(fontSize: 17),
          ),

         ),
         trailing: Text('Login',style: TextStyle(color: Color(0xff2B5740),fontWeight: FontWeight.bold,fontSize: 17)),),
       ),
      
        ],
      ),
    );
  }
}