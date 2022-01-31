import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/prayertiming/prayertiming.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0E5DF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => PrayerTiming()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                child: Image.asset(
                  'assets/cross.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Support the World’s Largest Muslim Community',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Benifits of Premium',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                        ListTile(
                          leading: Icon(Icons.check,color: Colors.green,),
                          title:  Text(
                            'Remove Advertisements',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                                textAlign: TextAlign.justify
                          ),),
ListTile(
                          leading: Icon(Icons.check,color: Colors.green,),
                          title:  Text(
                            'More Adhan Voice',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                                textAlign: TextAlign.justify
                          ),),
ListTile(
                          leading: Icon(Icons.check,color: Colors.green,),
                          title:  Text(
                            'Unlock Color Themes',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                                textAlign: TextAlign.justify
                          ),),
                          ListTile(
                          leading: Icon(Icons.check,color: Colors.green,),
                          title:  Text(
                            'More Quran Voice',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                                textAlign: TextAlign.justify
                          ),),
                          
                        ],
                      )),
                      Expanded(
                        flex: 1,
                        child: 
                      Image.asset('assets/account.png'))
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
             
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text('Year End Offer',style: TextStyle(color: Colors.white,fontSize: 12),textAlign: TextAlign.center,), style: ElevatedButton.styleFrom(
                 fixedSize: Size(140, 50),
                side: BorderSide(width: 1.0, color: Colors.grey,),
                primary: Color(0xff2B5740),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                ),
              ),),
                  ),
                Container(
                
                  
                  margin: EdgeInsets.only(top: 5, left: 10,right: 10),
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),),
                    elevation: 4,
                    child: Container(
                      color: Color(0xff2B5740),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(title: Text('ANNUAL  -  Free for first 7 days',style: TextStyle(color: Colors.white,fontSize: 15),
                      ),subtitle: Text('RS250  billed yearly . RS20.83 / mo',style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                  ),)
                ),
                    Container(
                
                  
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),),
                    elevation: 4,
                    child: Container(
                      color: Colors.white,
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(title: Text('ANNUAL  -  Free for first 7 days',style: TextStyle(color: Colors.black,fontSize: 15),
                      ),subtitle: Text('RS250  billed yearly . RS20.83 / mo',style: TextStyle(color: Colors.black,fontSize: 15),),
                    ),
                  ),)
                ),
                           Container(
                
                  
                  margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),),
                    elevation: 4,
                    child: Container(
                      color: Colors.white,
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(title: Text('Start Free Trail',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ),)
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
