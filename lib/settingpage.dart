import 'package:flutter/material.dart';
import 'package:prayerapp/account_setting.dart';
import 'package:prayerapp/languagepage.dart';

class  Setting extends StatefulWidget {
  const  Setting({ Key? key }) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State< Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
        appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff097132),
              title: Center(child: Text('Setting',style: TextStyle(color: Colors.white,fontSize: 22),)),
              leading: Icon(Icons.arrow_back),
               ),
               body: ListView(children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset('assets/imageblue.png',height: 228,width: 233,)), 
                   Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 0),
      
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
      MaterialPageRoute(builder: (context) => Account()));
            },
         child: Text('Account Setting',style: TextStyle(color: Colors.black),)),
       ),
        
            ),
            
                   Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 0),
      
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
      child: ListTile(leading: Image.asset('assets/languages 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: GestureDetector(
           onTap: () {
               Navigator.push(context,
      MaterialPageRoute(builder: (context) => Language()));
            },
         child: Text('Language',style: TextStyle(color: Colors.black),)),
       ),
        
            ),
              Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 0),
      
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
      child: ListTile(leading: Image.asset('assets/about.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: Text('About Us',style: TextStyle(color: Colors.black),),
       ),
        
            ),
             Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 0),
      
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
      child: ListTile(leading: Image.asset('assets/contact-us.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: Text('Contact Us',style: TextStyle(color: Colors.black),),
       ),
        
            ),
             Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 0),
      
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
      child: ListTile(leading: Image.asset('assets/privacy 1.png',height: 33,width: 33,),
        trailing:Icon(Icons.arrow_forward_ios,size: 17,),
       title: Text('Privacy Policy',style: TextStyle(color: Colors.black),),
       ),
        
            ),
               ],),      
    );
  }
}