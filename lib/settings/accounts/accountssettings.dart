import 'package:flutter/material.dart';
import 'package:prayerapp/settings/accounts/passwordchange.dart';

class AccountSettigs extends StatefulWidget {
  const AccountSettigs({ Key? key }) : super(key: key);

  @override
  _AccountSettigsState createState() => _AccountSettigsState();
}

class _AccountSettigsState extends State<AccountSettigs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(child: Image.asset('assets/settings.png',height: 200,width: 200,)),
           SizedBox(height: 10,),
           Center(
             child: Card(
               elevation: 5,
               child: ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (builder) => PasswordChange()));
                 },
                 title: Text('Password',style: TextStyle(color: Colors.black),)),
             ),
           ),
             Center(
             child: Card(
               elevation: 5,
               child: ListTile(
                 title: Text('Payment',style: TextStyle(color: Colors.black),)),
             ),
           ),
             Center(
             child: Card(
               elevation: 5,
               child: ListTile(
                 title: Text('Meet Our Conceller',style: TextStyle(color: Colors.black),)),
             ),
           ),
           
           
           
           
        ],
      ),
    );
  }
}