import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';

class OurProducts extends StatefulWidget {
  String productId;
   OurProducts({ Key? key,required this.productId }) : super(key: key);

  @override
  State<OurProducts> createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Cataglog'),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: firebaseFirestore.collection("Products").doc(widget.productId).get(),
          builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasData) {
              var ds=snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(ds.get("imageLink"),height: 150,
                    width: double.infinity,
                    fit: BoxFit.scaleDown,),
                  SizedBox(height: 10,),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(ds.get("productName"),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                  Container(
                      margin: EdgeInsets.only(left: 20,top: 20),
                      child: Text(ds.get('productDescription'),style: TextStyle(color: Colors.black,fontSize: 17),)),

                  Container(
                      margin: EdgeInsets.only(left: 20,top: 20,bottom: 10),
                      child: Text(ds.get('productPrice'),style: TextStyle(color: Colors.black,fontSize: 17),)),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Center(child: ElevatedButton(onPressed: (){}, child: Text('Buy'),style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 50)
                    ),)),
                  )
                ],

              );
            } else if (snapshot.hasError) {
              return Center(child: Icon(Icons.error_outline));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
      
    );
  }
}