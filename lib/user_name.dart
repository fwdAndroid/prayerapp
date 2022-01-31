import 'package:flutter/material.dart';

class  Username extends StatefulWidget {
  const  Username({ Key? key }) : super(key: key);

  @override
  _UsernameState createState() => _UsernameState();
}

class _UsernameState extends State< Username> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff097132),
              title: Center(child: Text(' Profile Setting',style: TextStyle(color: Colors.white,fontSize: 22),)),
              leading: Icon(Icons.arrow_back),
               ),
               body: ListView(children: [
                 SizedBox(height: 60,),
                  Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top:20),
      
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
      child: 
        GestureDetector(
    //        onTap: () {
    //             Navigator.push(context,
    //  MaterialPageRoute(builder: (context) => Account()));
    //        },
         child: Center(child: Text('Current Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
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
        trailing:Image.asset('assets/eye.png',height: 25,width: 25,),
       title: GestureDetector(
      //      onTap: () {
      //          Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Account()));
      //       },
         child: Text('New Password',style: TextStyle(color: Colors.black),)),
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
        trailing:Image.asset('assets/eye.png',height: 25,width: 25,),
       title: GestureDetector(
      //      onTap: () {
      //          Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Account()));
      //       },
         child: Text('Confirm Password',style: TextStyle(color: Colors.black),)),
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
        trailing:Image.asset('assets/edit.png',height: 25,width: 25,),
       title: GestureDetector(
      //      onTap: () {
      //          Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Account()));
      //       },
         child: Text('Mobile Number',style: TextStyle(color: Colors.black),)),
       ),
         ),
         Container(
                  margin: EdgeInsets.symmetric(horizontal:60,vertical: 40),                   child: ElevatedButton(
                    
    style: ElevatedButton.styleFrom(
      primary: Color(0xff097132),
      minimumSize:  Size(100, 60),
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
         
               ],),
      
    );
  }
}