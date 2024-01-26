import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            SizedBox(width: 20),
            Icon(Icons.shopping_bag),
            SizedBox(width: 20),
          ],
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Solid Shirt Style",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.network(
                        "https://www.snitch.co.in/cdn/shop/files/4MSS2619-02-M7.jpg?v=1702380935&width=1800",
                        height: 400,
                      ),
                      Positioned(
                        right: -20,
                        top: 20,
                        child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 2)
                            ], color: Colors.white, shape: BoxShape.circle),
                            height: 50,
                            width: 50,
                            child: Icon(CupertinoIcons.suit_heart)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    "Solid shirt Style",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      "Special Price",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      " \$30",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "\$60",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "50 % off",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Text(
                            "4.3",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "9460 ratings",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Divider(
                  thickness: 5,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "SIZE",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Size Chart",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Text("ADD TO BAG",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Buy Now",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
