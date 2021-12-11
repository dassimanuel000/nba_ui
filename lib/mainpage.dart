// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors, avoid_unnecessary_containers

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nba_design/data.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import "dart:io";

import 'package:nba_design/productpage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        //currentIndex: currentIndex,
        //onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
        elevation: 30,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(
              Icons.flash_on_rounded,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.flash_on_rounded,
              color: Colors.red,
            ),
            title: Text("*"),
          ),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.headset_mic,
                color: Colors.grey[800],
              ),
              activeIcon: Icon(
                Icons.headset_mic,
                color: Colors.indigo,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.mobile_screen_share_outlined,
                color: Colors.grey[800],
              ),
              activeIcon: Icon(
                Icons.mobile_friendly_outlined,
                color: Colors.green,
              ),
              title: Text("Menu"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage('./images/nike.png'),
                        height: 30.0,
                        width: 85.0,
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
                          color: Colors.black,
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
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.grey[400],
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 35,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Image(
                              width: 35,
                              height: 80.0,
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  'http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/okc.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 35,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Image(
                              width: 35,
                              height: 80.0,
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  'http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/gsw.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 35,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Image(
                            width: 35,
                            height: 80.0,
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                                'http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/hou.png'),
                          ),
                        ),
                      ],
                    )),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 35,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Image(
                              width: 35,
                              height: 80.0,
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  'http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/lal.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])
            ]),
            Container(
              height: MediaQuery.of(context).size.height - 205,
              child: TabBarView(controller: _tabController, children: <Widget>[
                new Paginas(),
                new Paginas(),
                new Paginas(),
                new Paginas(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class Paginas extends StatefulWidget {
  @override
  _PaginasState createState() => _PaginasState();
}

class _PaginasState extends State<Paginas> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0),
        height: 400,
        child: Swiper(
          itemCount: product.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductPage(index: index)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.0, right: 40.0),
                    child: Text(product[index]['name'],
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        color: product[index]['color'],
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(product[index]["shop"]),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60.0, top: 8.0),
                              child: Container(
                                height: 30.0,
                                width: MediaQuery.of(context).size.width / 4,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: Center(
                                  child: Text(
                                    product[index]["jersey"],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90.0),
                              child: Text(
                                '\$' + product[index]["price"],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          viewportFraction: 0.8,
          scale: 0.7,
        ),
      ),
    );
  }
}
