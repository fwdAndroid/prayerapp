import 'package:flutter/material.dart';
class IdProvider extends ChangeNotifier{
  String? topicId;
  setId(String id){
    topicId=id;
    notifyListeners();
  }
}