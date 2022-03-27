import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/products/our_product_screen.dart';

class ShowProducts extends StatefulWidget {
  const ShowProducts({ Key? key }) : super(key: key);

  @override
  State<ShowProducts> createState() => _ShowProductsState();
}

class _ShowProductsState extends State<ShowProducts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Products Catalog'),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 50,
                  width: MediaQuery.of(context).size.width,
                  child: StreamBuilder(
                  stream: firebaseFirestore.collection("Products").snapshots(),
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (ctx, i) {
var ds=snapshot.data!.docs[i];
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (builder) =>
                                                  OurProducts(
                                                    productId: ds.id,
                                                  )));
                                    },
                                    child: Container(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 50,
                                        backgroundImage:
                                        NetworkImage(ds.get("imageLink")),
                                      ),
                                    ),
                                  ),
                                  Text(ds.get("productName"))
                                ],
                              ),
                            );
                          });
                    } else if (snapshot.hasError) {
                      return Center(child: Icon(Icons.error_outline));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }))])),
      ),
    );
                  }
          

}