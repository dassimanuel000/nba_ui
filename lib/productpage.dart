// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nba_design/data.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.77,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(product[widget.index]["avatar"]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image(
                              image: AssetImage('./images/Nikes.png'),
                              height: 30.0,
                              width: 85.0,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(5.0),
                                  bottomLeft: Radius.circular(20.0)),
                              color: product[widget.index]['color'],
                            ),
                            child: Icon(
                              Icons.shopping_bag_rounded,
                              color: Colors.white,
                              size: 16.0,
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 40.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 40.0),
                          child: Text(product[widget.index]['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40.0),
                          child: Text(product[widget.index]['jersey'],
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 155.0, top: 10.0),
                  child: Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[350]),
                          child: Center(child: Text("S")),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black),
                          child: Center(
                              child: Text(
                            "M",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[350]),
                          child: Center(child: Text("L")),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[350]),
                          child: Center(child: Text("XL")),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: product[widget.index]['color'],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Add to Basket",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      '\$' + product[widget.index]['price'],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
