import 'package:flutter/material.dart';
import 'package:prayerapp/Providers/idprovider.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/payments/paymet_screen.dart';
import 'package:provider/provider.dart';

class SeeQuestionsSolutions extends StatefulWidget {
  String id;
   SeeQuestionsSolutions({ Key? key,required this.id }) : super(key: key);

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
      body: StreamBuilder(
          stream: firebaseFirestore.collection("topics").doc(Provider.of<IdProvider>(context,listen: true).topicId)
          .collection("questions").doc(widget.id).snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              var ds=snapshot.data;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ds['Question'],style: TextStyle(color: Colors.black,),),
                  ListTile(

                    title: Text(ds['Answer1']),
                  ),
                  ListTile(

                    title: Text(ds['Answer2']),
                  ),
                  ListTile(

                    title: Text(ds['Answer3']),
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
              );
            } else if (snapshot.hasError) {
              return Icon(Icons.error_outline);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}