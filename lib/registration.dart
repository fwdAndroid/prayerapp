import 'package:flutter/material.dart';
import 'package:prayerapp/survaypage.dart';

class  RegistrationPage extends StatefulWidget {
  const  RegistrationPage({ Key? key }) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State< RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
    //      Container(
    //    height: 250,
    //    child: Image.asset('assets/arabiman.png')
    //  ),

     SizedBox(height: 50,),
          CircleAvatar(
            
            backgroundImage: AssetImage('assets/arabiman.png',),
             
    radius: 130.0,
    // child: ClipRRect(
    //     child: Image.asset('assets/arabiman.png'),
    //     borderRadius: BorderRadius.circular(50.0),
    // ),
),
 Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Center(child: Text('Registration',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff2B5740)),)),
      ),
       Container(
         height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        Container(
          height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        Container(
          height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        Container(
height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        Container(
        height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'Gender',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        Container(
          height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'Material Status',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        Container(
          height: 50,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
         child: TextField(
              decoration: InputDecoration(
                  labelText: 'DOB',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                   focusedBorder: OutlineInputBorder(
                     // borderSide: BorderSide(width: 3, color: Colors.grey),
                     borderRadius: BorderRadius.circular(15),
                   )),
         ),
       ),
        // SizedBox(height: 10,),
                 Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),                   child: ElevatedButton(
                    
    style: ElevatedButton.styleFrom(
      primary: Color(0xff097132),
     minimumSize:  Size(80, 60),
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
    ),
onPressed: () {
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => Survay()));
},
child: Text('Continu',style: TextStyle(fontSize: 20),
),
),
                 ),
         ],),
      
    );
  }
}