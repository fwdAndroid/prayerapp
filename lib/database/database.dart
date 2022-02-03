import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/authentication/loginpage.dart';

class Database{
final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future <String> signUpUser({
    BuildContext ?context,
    required String email,
    required String password,
    required String fullName,
    required String dob,
    required String gender,
    required String materialStatus,
    required String phoneNumber,
//    required Uint8List file
  }) async{
     String res = 'Some error occured';
     try{
        if (email.isNotEmpty || password.isNotEmpty || fullName.isNotEmpty || dob.isNotEmpty ||  gender.isNotEmpty ||materialStatus.isNotEmpty || phoneNumber.isNotEmpty ) {
        UserCredential cred =  await _auth.createUserWithEmailAndPassword(email: email, password: password);
          //Add User to the database
          await firebaseFirestore.collection('users').doc(cred.user!.uid).set({
            'username':fullName,
             'uid':cred.user!.uid,
             'email':email,
             'gender': gender,
             'phoneNumber': phoneNumber,
             'materialStatus':materialStatus,
             
          });
          res = 'sucess';
          debugPrint(res);
        }
     }catch(e){
       res = e.toString();
     }
     return res;
}


 Future <String> signInUser({
    required String email,
    required String password,
    
//    required Uint8List file
  }) async{
     String res = 'Some error occured';
     try{
        if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
          //Add User to the database
         
          res = 'sucess';
          debugPrint(res);
        }
     }catch(e){
       res = e.toString();
     }
     return res;
}

}