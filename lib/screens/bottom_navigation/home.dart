import 'package:flutter/material.dart';
import 'package:furniture/util/modle.dart';
import 'package:furniture/screens/allproducts/all.dart';
import 'package:furniture/screens/allproducts/beds.dart';
import 'package:furniture/screens/allproducts/chairs.dart';
import 'package:furniture/screens/allproducts/sofas.dart';
import 'package:furniture/screens/allproducts/tables.dart';
import 'package:furniture/widget/constant.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color:constant().iconColor,
                  size: 25,
                ),
                onPressed: () {},
              ),
              title: Center(
                  child: Image.asset(
                'images/logo.jpg',
                width: 100.0,
                fit: BoxFit.contain,
              )),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: constant().iconColor,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color:constant().iconColor,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: Container(
              child: Stack(children: [
                ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          height: 190,
                          child: ListView.builder(
                            itemCount: Model.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, int index) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Material(
                                color: constant().background_product,
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 30),
                                      width: 300,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 40),
                                                child: Text(
                                                  Model[index].title,
                                                  style:constant().styletitle
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Container(
                                                child: Text(
                                                  Model[index].price,
                                                  style:constant().styleprice,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      Model[index].subtitle,
                                                      style: constant().stylesubtitle
                                                    ),
                                                    Icon(Icons
                                                        .keyboard_arrow_right),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                50, 0, 10, 0),
                                            child: Image.asset(
                                                "${Model[index].image}"),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                DefaultTabController(
                                    length: 5, // length of tabs
                                    initialIndex: 0,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                            child: TabBar(
                                              labelColor: Colors.black,
                                              unselectedLabelColor:
                                                  Color(0xFF535353),
                                              tabs: [
                                                Tab(text: 'All'),
                                                Tab(text: 'Chairs'),
                                                Tab(text: 'Sofas'),
                                                Tab(text: 'Tables'),
                                                Tab(text: 'Beds'),
                                              ],
                                            ),
                                          ),
                                          Container(
                                              height: 480,
                                              //height of TabBarView
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      //top: BorderSide(
                                                      //  color: Colors.grey,
                                                      //width: 0)
                                                      )),
                                              child:
                                                  TabBarView(children: <Widget>[
                                                Container(child: ALL()),
                                                Container(child: Chairs()),
                                                Container(child: Sofas()),
                                                Container(child: Tables()),
                                                Container(child: Beds()),
                                              ]))
                                        ])),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ));

  }
}
