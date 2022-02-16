import 'package:flutter/material.dart';
import 'package:prayerapp/questions/choosequestion.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  ///   Sex Dropdown
  String dropdownvalue = 'Male';
  String dropdownvalueSocialStatus = 'Married';
   String dropdownvalueShiekhStatus = 'Yes';
   String dropdownvalueMagicStatus = 'Yes';
   String dropdownvalueQuestions = 'I want to pray reguarly what i do';
  // List of items in our dropdown menu

  var itemsProblesm = ['I want to pray reguarly what i do',
  'I face problems in my married life',
  'I stuck in loans'];
  var items = [
    'Male',
    'Female',
  ];
  var itemsSocial = [
    'Married',
    'UnMarried'
  ];
   var itemsShiekh = [
    'Yes',
    'No'
  ];
   var itemsMagic = [
    'Yes',
    'No'
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController ageController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff097132),
        automaticallyImplyLeading: false,
        title: Text('Survey Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Select Gender
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Select Gender',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: 320,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.white,
                  primaryColor: Colors.white,
                  canvasColor: Colors.white),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),

                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                //   hint: Text("Select Genders",style: TextStyle(color: Colors.white),),
                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                  print(dropdownvalue);
                },
              ),
            ),
          ),
          //Select Age
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Age',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: 320,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.white,
                  primaryColor: Colors.white,
                  canvasColor: Colors.white),
              child: TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: 'Enter Age',
                  )),
            ),
          ),
          // Social Status
            Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Social Status',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: 320,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.white,
                  primaryColor: Colors.white,
                  canvasColor: Colors.white),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),

                // Initial Value
                value: dropdownvalueSocialStatus,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                //   hint: Text("Select Genders",style: TextStyle(color: Colors.white),),
                // Array list of items
                items: itemsSocial.map((String itemsSocial) {
                  return DropdownMenuItem(
                    value: itemsSocial,
                    child: Text(
                      itemsSocial,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalueSocialStatus = newValue!;
                  });
                  print(dropdownvalueSocialStatus);
                },
              ),
            ),
          ),
          ///Shiek Diagnosis
           Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Have you been diagnosed by a sheikh or a classy person',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
            Container(
            width: 320,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.white,
                  primaryColor: Colors.white,
                  canvasColor: Colors.white),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),

                // Initial Value
                value: dropdownvalueShiekhStatus,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                //   hint: Text("Select Genders",style: TextStyle(color: Colors.white),),
                // Array list of items
                items: itemsShiekh.map((String itemsShiekh) {
                  return DropdownMenuItem(
                    value: itemsShiekh,
                    child: Text(
                      itemsShiekh,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalueShiekhStatus = newValue!;
                  });
                  print(dropdownvalueShiekhStatus);
                },
              ),
            ),
          ),
          ///Magic Test
           Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Let define and diagnose you with a test of magic and another for the eye',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
            Container(
            width: 320,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.white,
                  primaryColor: Colors.white,
                  canvasColor: Colors.white),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),

                // Initial Value
                value: dropdownvalueMagicStatus,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                //   hint: Text("Select Genders",style: TextStyle(color: Colors.white),),
                // Array list of items
                items: itemsMagic.map((String itemsMagic) {
                  return DropdownMenuItem(
                    value: itemsMagic,
                    child: Text(
                      itemsMagic,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalueMagicStatus = newValue!;
                  });
                  print(dropdownvalueMagicStatus);
                },
              ),
            ),
          ),
          //Problems
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Your Issue',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
            Container(
            width: 320,
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // margin: EdgeInsets.symmetric(horizontal:20, vertical: 12),
            child: Theme(
              data: ThemeData(
                  accentColor: Colors.white,
                  primaryColor: Colors.white,
                  canvasColor: Colors.white),
              child: DropdownButton(
                isExpanded: true,
                underline: DropdownButtonHideUnderline(child: Container()),

                // Initial Value
                value: dropdownvalueQuestions,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                //   hint: Text("Select Genders",style: TextStyle(color: Colors.white),),
                // Array list of items
                items: itemsProblesm.map((String itemsProblesm) {
                  return DropdownMenuItem(
                    value: itemsProblesm,
                    child: Text(
                      itemsProblesm,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalueQuestions = newValue!;
                  });
                  print(dropdownvalueQuestions);
                },
              ),
            ),
          ),

             Center(
               child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff097132),
                  minimumSize: Size(180, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () =>  Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => ChoseQuestion())),
                         child:  Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),),
                
            ),
          ),
             ),
        ],
      )),
    );
  }
}
