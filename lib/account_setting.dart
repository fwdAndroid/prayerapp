import 'package:flutter/material.dart';

import 'payments/paymet_screen.dart';
import 'user_name.dart';

class Account extends StatefulWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff097132),
              title: Center(child: Text(' account Setting',style: TextStyle(color: Colors.white,fontSize: 22),)),
              leading: Icon(Icons.arrow_back),
               ),
               body: ListView(children: [
                  Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset('assets/hijab.png',height: 200,width: 200,)),

                   Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top:10),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.white,
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/skills 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: GestureDetector(
            onTap: () {
               Navigator.push(context,
     MaterialPageRoute(builder: (context) => Username()));
            },
         child: Text('User Name / Mail',style: TextStyle(color: Colors.black),)),
       ),
          ),
                    Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top:0),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.white,
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/password 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: GestureDetector(
      //      onTap: () {
      //          Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Account()));
      //       },
         child: Text('Password',style: TextStyle(color: Colors.black),)),
       ),
         ),
            Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top:0),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.white,
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/smartphone 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: GestureDetector(
      //      onTap: () {
      //          Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Account()));
      //       },
         child: Text('Mobile Number',style: TextStyle(color: Colors.black),)),
       ),
         ),
           Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top:0),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.white,
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/pop-up 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: GestureDetector(
         onTap: () {
               Navigator.push(context,
       MaterialPageRoute(builder: (context) => Payment()));
            },
         child: Text('Payment',style: TextStyle(color: Colors.black),)),
       ),
         ),
         
           Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top:0),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.white,
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/people 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: GestureDetector(
      //      onTap: () {
      //          Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Account()));
      //       },
         child: Text('Meet our Concealer',style: TextStyle(color: Colors.black),)),
       ),
         ),
               ],),
      
    );
  }
}