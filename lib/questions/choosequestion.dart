import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/Providers/idprovider.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/questions/seequestionlist.dart';
import 'package:provider/provider.dart';

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: StreamBuilder(
            stream: firebaseFirestore.collection('topics').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(

                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext ctx, index) {
                    var ds=snapshot.data!.docs[index];
                      return Column(
                          children:[
                            InkWell(
                              onTap: (){
                                Provider.of<IdProvider>(context,listen: false).setId(ds.id);
                                Navigator.push(context, MaterialPageRoute(builder: (builder) => SeeAnswers(
                                )));
                                },
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.grey.shade300,
                                // backgroundImage: NetworkImage(ds['imageLink']),
                              child: CachedNetworkImage(
                                imageUrl: ds['imageLink'],
                                imageBuilder: (context,
                                    imageProvider) =>
                                    Container(
                                      decoration:
                                      BoxDecoration(
                                        shape:
                                        BoxShape.circle,
                                        image:
                                        DecorationImage(
                                          image:
                                          imageProvider,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                placeholder: (context,
                                    url) =>
                                    Center(
                                        child: CircleAvatar(
                                          radius: 43,
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage("assets/infinity.gif"),
                                        )),
                                errorWidget: (context,
                                    url, error) =>
                                    Center(
                                        child: Icon(
                                            Icons.error)),
                              ),
                              ),
                            ),
                            Text(ds['title'],style: TextStyle(color: Colors.black),)
                          ]  );
                    });
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),),
    );
  }
}