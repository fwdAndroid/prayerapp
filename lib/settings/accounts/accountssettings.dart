import 'package:flutter/material.dart';
import 'package:prayerapp/settings/accounts/passwordchange.dart';

class AccountSettigs extends StatefulWidget {
  const AccountSettigs({Key? key}) : super(key: key);

  @override
  _AccountSettigsState createState() => _AccountSettigsState();
}

class _AccountSettigsState extends State<AccountSettigs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            'assets/hijab.png',
            height: 200,
            width: 200,
          )),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                  leading: Image.asset('assets/password 1.png'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => PasswordChange()));
                  },
                  title: Text(
                    'Password',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                  leading: Image.asset('assets/pop-up 1.png'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'Payment',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                  leading: Image.asset('assets/people 1.png'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text(
                    'Meet Our Conceller',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
