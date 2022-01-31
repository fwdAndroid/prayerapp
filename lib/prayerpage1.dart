import 'package:flutter/material.dart';
import 'package:prayerapp/prayer2.dart';

class Prayer_screen1 extends StatefulWidget {
  const Prayer_screen1({ Key? key }) : super(key: key);

  @override
  _Prayer_screen1State createState() => _Prayer_screen1State();
}

class _Prayer_screen1State extends State<Prayer_screen1> {
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
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 0),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[200],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/yellowimage.png',height: 39,width: 39,),
       trailing: Image.asset('assets/arrowdown.png',height: 25,width: 25 ,),
       title: Text('Protection',style: TextStyle(color: Colors.black),),
       ),
        
            ),
             Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 2),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[200],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
              //    bottomLeft: const Radius.circular(15.0),
              //  bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/familyimage.png',height: 39,width: 39,),
       trailing: Image.asset('assets/arrowdown.png',height: 25,width: 25 ,),
       title: Text('Family',style: TextStyle(color: Colors.black),),
       ),
        
            ),
             Container(
            
        height: 54,
           margin: EdgeInsets.only(left: 20,right: 20,top: 2),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[50],
       borderRadius: new BorderRadius.only(
      //           topLeft: const Radius.circular(15.0),
      //           topRight: const Radius.circular(15.0),
              //    bottomLeft: const Radius.circular(15.0),
              //  bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child:Center(child: Text('For forgiveness for your parents and Muslim ',style: TextStyle(color: Colors.grey),))
       ),
        
               Container(
            
        height: 54,
           margin: EdgeInsets.only(left: 20,right: 20,top: 2),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[50],
       borderRadius: new BorderRadius.only(
      //           topLeft: const Radius.circular(15.0),
      //           topRight: const Radius.circular(15.0),
              //    bottomLeft: const Radius.circular(15.0),
              //  bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 17),
        child:  Text('Forgiveness for your siblings',style: TextStyle(color: Colors.grey),))),
            Container(
            
        height: 54,
           margin: EdgeInsets.only(left: 20,right: 20,top: 2),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[50],
       borderRadius: new BorderRadius.only(
      //           topLeft: const Radius.circular(15.0),
      //           topRight: const Radius.circular(15.0),
              //    bottomLeft: const Radius.circular(15.0),
              //  bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 17),
        child:  Text('Asking Allah to grant you a child',style: TextStyle(color: Colors.grey),))),
            Container(
            
        height: 54,
           margin: EdgeInsets.only(left: 20,right: 20,top: 2),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[50],
       borderRadius: new BorderRadius.only(
      //           topLeft: const Radius.circular(15.0),
      //           topRight: const Radius.circular(15.0),
              //    bottomLeft: const Radius.circular(15.0),
              //  bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 17),
        child:  Text('For your child’s protection',style: TextStyle(color: Colors.grey),))),
         Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 4),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[200],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/illness.png',height: 35,width: 35,),
       trailing: Image.asset('assets/arrowdown.png',height: 25,width: 25 ,),
       title: Text('Health / iIlness',style: TextStyle(color: Colors.black),),
       ),
        
            ),
             Container(
            
        height: 60,
           margin: EdgeInsets.only(left: 20,right: 20,top: 1),
      
  // padding: const EdgeInsets.all(3.0),
   decoration: BoxDecoration(
    
       color: Colors.grey[200],
      borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0),
                 bottomLeft: const Radius.circular(15.0),
               bottomRight: const Radius.circular(15.0),
              ),
      border: Border.all(color: Colors.grey,width: 0.5)
  ),
      child: ListTile(leading: Image.asset('assets/loss.png',height: 35,width: 35,),
       trailing: Image.asset('assets/arrowdown.png',height: 25,width: 25 ,),
       title: Text('Loss / Failer',style: TextStyle(color: Colors.black),),
       ),
        
            ),

 GestureDetector(
    onTap: () {
               Navigator.push(context,
      MaterialPageRoute(builder: (context) => Prayer_screen2()));
            },
   child: Container(
              
          height: 60,
             margin: EdgeInsets.symmetric(horizontal: 100),
        
    // padding: const EdgeInsets.all(3.0),
     decoration: BoxDecoration(
      
         color: Colors.grey[200],
        borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(15.0),
                  topRight: const Radius.circular(15.0),
                   bottomLeft: const Radius.circular(15.0),
                 bottomRight: const Radius.circular(15.0),
                ),
        border: Border.all(color: Colors.grey,width: 0.5)
    ),
       child: Center(child: Text('More',style: TextStyle(color: Colors.black,fontSize: 17),)),
          
              ),
 ),

          ],),
        
      ),
    );
  }
}