import 'package:flutter/material.dart';
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
                  child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            padding: const EdgeInsets.all(10.0),
                            itemCount: 2,
                            itemBuilder: (ctx, i) {
                              
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
                                                    OurProducts()));
                                      },
                                      child: Container(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 50,
                                          backgroundImage:
                                              AssetImage('assets/laptop.png'),
                                        ),
                                      ),
                                    ),
                                    Text("Laptop")
                                  ],
                                ),
                              );
                            }))])),
      ),
    );
                  }
          

}