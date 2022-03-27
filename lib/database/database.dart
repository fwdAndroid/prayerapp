import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:prayerapp/authentication/loginpage.dart';
import 'package:prayerapp/modals/googleusermodel.dart';

import '../bottombar/home_view.dart';
import '../widgets/customdialog.dart';

class Database {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<String> signUpUser({
    BuildContext? context,
    required String email,
    required String password,
    required String fullName,
    required String dob,
    required String gender,
    required String materialStatus,
    required String phoneNumber,
//    required Uint8List file
  }) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          fullName.isNotEmpty ||
          dob.isNotEmpty ||
          gender.isNotEmpty ||
          materialStatus.isNotEmpty ||
          phoneNumber.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        //Add User to the database
        await firebaseFirestore.collection('users').doc(cred.user!.uid).set({
          'username': fullName,
          'uid': cred.user!.uid,
          'email': email,
          'gender': gender,
          'phoneNumber': phoneNumber,
          'materialStatus': materialStatus,
        });
        res = 'sucess';
        debugPrint(res);
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<String> signInUser({
    required String email,
    required String password,

//    required Uint8List file
  }) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        //Add User to the database

        res = 'sucess';
        debugPrint(res);
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  ///GoogleSignIn
  Future<String> googleSignIn(
      ) async {
    String res = "Some Errros";
    try {
        var user =  await _auth.currentUser;
        String id=user!.uid;
        String name=user.displayName!;
        String email=user.email!;
          //Add User to the database
          await firebaseFirestore.collection('users').doc(id).set({
            'username':name,
             'uid':id,
             'email':email,
          });
          res = 'sucess';
           debugPrint(res);
    } catch (e) {
       res = e.toString();
    }
    return res;
  }
  Future<UserCredential> signInWithGoogle() async {

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();


    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;


    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );


    return await FirebaseAuth.instance.signInWithCredential(credential);

  }
  socialLoginUser(
      BuildContext context
      )async{
    String userName=FirebaseAuth.instance.currentUser!.displayName.toString();
    String email=FirebaseAuth.instance.currentUser!.email.toString();
    String dob="";
    String gender="";
    String phoneNumber=FirebaseAuth.instance.currentUser!.phoneNumber.toString();
    String imageLink=FirebaseAuth.instance.currentUser!.photoURL.toString();
    try{

      await firebaseFirestore.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).set({
        "id":FirebaseAuth.instance.currentUser!.uid,
        'UserName':userName,
        'Email':email,
        "DOB":dob,
        "Gender":gender,
        "Phone Number":phoneNumber,
        "imageLink":imageLink
        ,
        "status":"offline"// 'Password':password
      }).then((value) {
        Customdialog().showInSnackBar("Logged in", context);
        // Provider.of<CircularProgressProvider>(context,listen: false).setValue(false);
        Customdialog.closeDialog(context);
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (_) => MainScreen()), (
            route) => false);

      });
    }on FirebaseAuthException catch(e){
      Navigator.pop(context);

      Customdialog.showBox(context,e.toString());


    }
  }
}
