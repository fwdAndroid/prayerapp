import 'package:flutter/material.dart';
import 'package:prayerapp/payments/paymet_screen.dart';

class SeeQuestionsSolutions extends StatefulWidget {
  const SeeQuestionsSolutions({ Key? key }) : super(key: key);

  @override
  _SeeQuestionsSolutionsState createState() => _SeeQuestionsSolutionsState();
}

class _SeeQuestionsSolutionsState extends State<SeeQuestionsSolutions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Questions Answers'),
        backgroundColor: Color(0xff097132),
       
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('How I solved My Marraige Problems',style: TextStyle(color: Colors.black,),),
           ListTile(
                 
                  title: Text('By Taking Your Wife'),
                ),
                ListTile(
                 
                  title: Text('By Praying'),
                ),
                ListTile(
                 
                  title: Text('By Involve Elders'),
                ),
                Card(

                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder) => Payment()));
                    },
                    trailing: Icon(Icons.money),
                    title: Text('Audio Mp3 Solution'),
                  ),
                )
              
        ],
      ), 
    );
  }
}