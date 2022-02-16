import 'package:flutter/material.dart';
import 'package:prayerapp/questions/seequestionlist.dart';

class ChoseQuestion extends StatefulWidget {
  const ChoseQuestion({ Key? key }) : super(key: key);

  @override
  _ChoseQuestionState createState() => _ChoseQuestionState();
}

class _ChoseQuestionState extends State<ChoseQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff097132),
       
        title: Text('Solutions'),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => SeeAnswers()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 19,
              itemBuilder: (BuildContext ctx, index) {
                return Column(
                  children:[
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/arabiman.png'),
                    ),
                    Text('Topic Title',style: TextStyle(color: Colors.black),)
                    ]  );
              }),),
      ),
    );
  }
}