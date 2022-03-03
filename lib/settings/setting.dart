import 'package:flutter/material.dart';
import 'package:prayerapp/settings/accounts/accountssettings.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
            'assets/settings.png',
            height: 200,
            width: 200,
          )),
          SizedBox(
            height: 10,
          ),
       Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              elevation: 5,
              child: ListTile(
                  leading: Image.asset('assets/skills.png'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => AccountSettigs()));
                  },
                  title: Text(
                    'Account Settings',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  
            ),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),

                  leading: Image.asset('assets/languages.png'),
                  title: Text(
                    'Language',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),

                  leading: Image.asset('assets/about.png'),
                  title: Text(
                    'About Us',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),

                  leading: Image.asset('assets/contact-us.png'),
                  title: Text(
                    ' Contact Us',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
           Center(
            child: Card(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              elevation: 5,
              child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),

                  leading: Image.asset('assets/privacy 1.png'),
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
