import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:search_bar_animated/search_bar_animated.dart';

class SeeAnswers extends StatefulWidget {
  const SeeAnswers({ Key? key }) : super(key: key);

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
        backgroundColor: Color(0xff097132),
        automaticallyImplyLeading: false,
        actions: [
        
           AnimatedSearchBar(
          backgroundColor: Colors.transparent,
          buttonColor: Colors.white,
          width: MediaQuery.of(context).size.width,
          submitButtonColor: Colors.white,
          textStyle: const TextStyle(color: Colors.white),
          buttonIcon: const Icon(
            Icons.search,
          ),
          duration: const Duration(milliseconds: 700),
          submitIcon: const Icon(Icons.arrow_back_rounded),
          animationAlignment: AnimationAlignment.right,
          onSubmit: () {
            setState(() {
              value = textController.text;
            });
          },
          searchList: [
            'Solution of Quran',
            'Solution of Namaz'
          ],
          searchQueryBuilder: (query, list) => list.where((item) {
            return item!.toString().toLowerCase().contains(query.toLowerCase());
          }).toList(),
          textController: textController,
          overlaySearchListItemBuilder: (dynamic item) => Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              item,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          onItemSelected: (dynamic item) {
            textController.value = textController.value.copyWith(
              text: item.toString(),
            );
          },
          overlaySearchListHeight: 100,
        ),
      
        ],
      ), 
    );
  }
}