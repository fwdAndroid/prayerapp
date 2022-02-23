import 'package:flutter/material.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({ Key? key }) : super(key: key);

  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
    TextEditingController newpassController = TextEditingController();
  TextEditingController conpassController = TextEditingController();

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
                controller: newpassController,
                //  textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Confrim Password',
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
                  hintText: 'Edit Mobile',
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

              ElevatedButton(onPressed: (){}, child: Text('Saved'))
        ],
      ),
    );
  }
}