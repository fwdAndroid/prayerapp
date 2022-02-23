import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/notifications/notifications.dart';
import 'package:prayerapp/settings/setting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('Prayer App',style: TextStyle(color: Colors.green),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => Settings()));
                        }, icon: Icon(Icons.settings,color: Colors.green,)),

        ],
      ),
      extendBody: true,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          
          Stack(
            children: [
              Image.asset('assets/mosqueimage.png'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                color: Colors.white,
                child: ListTile(
                    leading: Text(
                      '6:30pm',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (builder) => Notifications()));
                        },
                        icon: Image.asset(
                          'assets/bellimage.png',
                          height: 25,
                        ))),
              ),
              
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            // height: MediaQuery.of(context).size.height -520,

            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
              ),
              items: [Image.asset('assets/image 1.png')],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,bottom: 10,top: 10),
            child: Text("Allah's Name",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 20,bottom: 10,top: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (index,context){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/image.png'),
                ),
              );
            })
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            height: 180,
            child: Card(
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Today’s  Goals',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 17,
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'Setting Goals is a Premium feature.',
                      style: TextStyle(fontSize: 14, color: Colors.amber),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text(
                      'Keep track of your prayers and formgood daily\n habits by setting customs goals.',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Become a Premium member',
                        style: TextStyle(fontSize: 14, color: Colors.amber),
                      ),
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 3,
              margin: EdgeInsets.all(10),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            height: 150,
            child: Card(
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Prayer Times',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 17,
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Text(
                      'The next prayer is Fajr at 5:04 AM in 5 hours\n6 minutes in Nagercoil, India',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'View today’s prayer times',
                        style: TextStyle(fontSize: 14, color: Colors.amber),
                      ),
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 3,
              margin: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
