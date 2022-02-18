import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/Providers/idprovider.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/questions/seequestionssol.dart';
import 'package:provider/provider.dart';
import 'package:search_bar_animated/search_bar_animated.dart';

class SeeAnswers extends StatefulWidget {
   SeeAnswers({ Key? key }) : super(key: key);

  @override
  _SeeAnswersState createState() => _SeeAnswersState();
}

class _SeeAnswersState extends State<SeeAnswers> {
    TextEditingController textController = TextEditingController();
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Questions Topic'),
        backgroundColor: Color(0xff097132),
        // actions: [
        
        //    AnimatedSearchBar(
        //   backgroundColor: Colors.transparent,
        //   buttonColor: Colors.white,
        //   width: MediaQuery.of(context).size.width,
        //   submitButtonColor: Colors.white,
        //   textStyle: const TextStyle(color: Colors.white),
        //   buttonIcon: const Icon(
        //     Icons.search,
        //   ),
        //   duration: const Duration(milliseconds: 700),
        //   submitIcon: const Icon(Icons.arrow_back_rounded),
        //   animationAlignment: AnimationAlignment.right,
        //   onSubmit: () {
        //     setState(() {
        //       value = textController.text;
        //     });
        //   },
        //   searchList: [
        //     'Solution of Quran',
        //     'Solution of Namaz'
        //   ],
        //   searchQueryBuilder: (query, list) => list.where((item) {
        //     return item!.toString().toLowerCase().contains(query.toLowerCase());
        //   }).toList(),
        //   textController: textController,
        //   overlaySearchListItemBuilder: (dynamic item) => Container(
        //     padding: const EdgeInsets.all(8),
        //     child: Text(
        //       item,
        //       style: const TextStyle(fontSize: 15, color: Colors.black),
        //     ),
        //   ),
        //   onItemSelected: (dynamic item) {
        //     textController.value = textController.value.copyWith(
        //       text: item.toString(),
        //     );
        //   },
        //   overlaySearchListHeight: 100,
        // ),
      
        // ],
      ), 
      body: Container(
        height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
        child: StreamBuilder(
              stream: firebaseFirestore.collection("topics").
              doc(Provider.of<IdProvider>(context,listen: true).topicId).
              collection("questions").snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context,index){
                        var ds=snapshot.data!.docs[index];
                        int i=1+index;
                        return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListTile(
                              onTap: (){

                                Navigator.push(context, MaterialPageRoute(builder: (xt) => SeeQuestionsSolutions(
                                  id: ds.id,
                                )));
                              },
                              title: Text('Q$i:  ${ds['Question']}'),
                            )


                        );});
                } else if (snapshot.hasError) {
                  return Icon(Icons.error_outline);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}