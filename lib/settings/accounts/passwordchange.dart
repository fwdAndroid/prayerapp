import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({ Key? key }) : super(key: key);

  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  TextEditingController oldpassController = TextEditingController();
    TextEditingController newpassController = TextEditingController();
  TextEditingController conpassController = TextEditingController();
bool loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Card(
            child: Text('Current Password'),
          ),
          Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(15.0),
                  topRight: const Radius.circular(15.0),
                  bottomLeft: const Radius.circular(15.0),
                  bottomRight: const Radius.circular(15.0),
                ),
                // border: Border.all(color: Colors.grey,width: 0.5)
              ),
              child: TextFormField(
                controller: oldpassController,
                //  textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Old Password',
                  contentPadding: new EdgeInsets.fromLTRB(15, 15, 15, 15),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(),
                  ),
                  fillColor: Colors.white,
                  hintStyle: TextStyle(
                    color: Color(0xff8D8989), // <-- Change this
                    fontSize: null,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                  // focusedBorder:OutlineInputBorder(
                  //   // borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  //   borderRadius: BorderRadius.circular(25.0),
                  // hintTextDirection: HitTestDispatcher.,
                ),
              )),
              Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(15.0),
                  topRight: const Radius.circular(15.0),
                  bottomLeft: const Radius.circular(15.0),
                  bottomRight: const Radius.circular(15.0),
                ),
                // border: Border.all(color: Colors.grey,width: 0.5)
              ),
              child: TextFormField(
                controller: newpassController,
                //  textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'New Password',
                  contentPadding: new EdgeInsets.fromLTRB(15, 15, 15, 15),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(),
                  ),
                  fillColor: Colors.white,
                  hintStyle: TextStyle(
                    color: Color(0xff8D8989), // <-- Change this
                    fontSize: null,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                  // focusedBorder:OutlineInputBorder(
                  //   // borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  //   borderRadius: BorderRadius.circular(25.0),
                  // hintTextDirection: HitTestDispatcher.,
                ),
              )),
                Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),

              //  padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(15.0),
                  topRight: const Radius.circular(15.0),
                  bottomLeft: const Radius.circular(15.0),
                  bottomRight: const Radius.circular(15.0),
                ),
                // border: Border.all(color: Colors.grey,width: 0.5)
              ),
              child: TextFormField(
                controller: conpassController,
                //  textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  contentPadding: new EdgeInsets.fromLTRB(15, 15, 15, 15),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: new BorderSide(),
                  ),
                  fillColor: Colors.white,
                  hintStyle: TextStyle(
                    color: Color(0xff8D8989), // <-- Change this
                    fontSize: null,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                  // focusedBorder:OutlineInputBorder(
                  //   // borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  //   borderRadius: BorderRadius.circular(25.0),
                  // hintTextDirection: HitTestDispatcher.,
                ),
              )),

              MaterialButton(
                minWidth: 150,
                  height: 45,
                  color: Colors.green,
                  onPressed: (){
                  if(oldpassController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("old Password ia required")
                        ));
                  }
                 else if(newpassController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("New Password ia required")
                        ));
                  }
                  else if(conpassController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Confirm Password ia required")
                        ));
                  }
                  else if(newpassController.text.isNotEmpty==conpassController.text.isNotEmpty&&oldpassController.text.isNotEmpty){
          setState(() {
            loading=true;
          });
try{
  _changePassword(oldpassController.text.trim(), newpassController.text.trim());
}catch(e){
  print(e);
}

                }
              }, child:loading==false? Text('Saved',style: TextStyle(color: Colors.white),):CircularProgressIndicator(color: Colors.white,))
        ],
      ),
    );
  }
    void _changePassword(String currentPassword, String newPassword) async {
      final user = await FirebaseAuth.instance.currentUser;
      final cred = EmailAuthProvider.credential(
          email: user!.email!, password: currentPassword);

      user.reauthenticateWithCredential(cred).then((value) {
        user.updatePassword(newPassword).then((_)
        {
          Navigator.pop(context);
          loading=false;
          ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text("Password Updated")
          ));
          //Success, do something
        }).catchError((error) {
          //Error, show something
        });
      }).catchError((err) {

      });}
}