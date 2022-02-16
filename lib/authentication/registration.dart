import 'package:flutter/material.dart';
import 'package:prayerapp/authentication/loginpage.dart';
import 'package:prayerapp/database/database.dart';
import 'package:prayerapp/survaypage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController marriageController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //      Container(
          //    height: 250,
          //    child: Image.asset('assets/arabiman.png')
          //  ),

          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/arabiman.png',
            ),

            radius: 130.0,
            // child: ClipRRect(
            //     child: Image.asset('assets/arabiman.png'),
            //     borderRadius: BorderRadius.circular(50.0),
            // ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Center(
                child: Text(
              'Registration',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2B5740)),
            )),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextField(
              
              controller: phoneNumberController,
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: genderController,
              decoration: InputDecoration(
                  labelText: 'Gender',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: marriageController,
              decoration: InputDecoration(
                  labelText: 'Material Status',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: dobController,
              decoration: InputDecoration(
                  labelText: 'DOB',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          // SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff097132),
                minimumSize: Size(80, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () => Database()
                  .signUpUser(
                      email: emailController.text,
                      password: passwordController.text,
                      fullName: fullNameController.text,
                      dob: dobController.text,
                      gender: genderController.text,
                      materialStatus: marriageController.text,
                      phoneNumber: phoneNumberController.text)
                  .then((value) => Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Login()))),
              child: Text(
                'Register',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
