import 'package:flutter/material.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({ Key? key }) : super(key: key);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset('assets/mosqueimage.png'),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Product Name',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
           Container(
          margin: EdgeInsets.only(left: 20,top: 20),
          child: Text('Product Description',style: TextStyle(color: Colors.black,fontSize: 17),)),

             Container(
          margin: EdgeInsets.only(left: 20,top: 20,bottom: 10),
          child: Text('Product Price',style: TextStyle(color: Colors.black,fontSize: 17),)),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(child: ElevatedButton(onPressed: (){}, child: Text('Buy'),style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50)
            ),)),
          )
        ],

      ),
      
    );
  }
}