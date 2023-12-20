import 'package:flutter/material.dart';

import 'package:furniture/screens/checkout.dart';

import 'package:furniture/util/model_products.dart';
import 'package:furniture/screens/bottom_navigation/home.dart';
import 'package:furniture/widget/button.dart';

class SingleSofa extends StatelessWidget {
  final ModelProduct Modelssofa;

  // info({required this.Modelschair});

  const SingleSofa({Key? key, required this.Modelssofa}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          Modelssofa.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return Home();
                }));
          },
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 350,
                child: Image.asset(Modelssofa.image),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: ButtonIcon(
                        icon: Icons.favorite_border_outlined,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 25,
                          color: Colors.yellow[700],
                        ),
                        Text(
                          Modelssofa.vote,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 0),
                    child: Text(
                      Modelssofa.subtitle,
                      style: TextStyle(fontSize: 20, color: Color(0xFF535353)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      Modelssofa.price.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[200]),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    height: 80,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '-',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary: Colors.blueGrey,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: Color(0x1AFFFFFF),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        primary: Colors.blueGrey,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 370,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 0, left: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Checkout();
                            }));
                      },
                      icon: Icon(Icons.shopping_bag),
                      label: Text(
                        'Add To Cart',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
