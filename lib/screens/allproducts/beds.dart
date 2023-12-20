import 'package:flutter/material.dart';
import 'package:furniture/provider/cart.dart';
import 'package:furniture/screens/single_products/singlebed.dart';
import 'package:furniture/widget/constant.dart';
import 'package:furniture/provider/favorite.dart';
import 'package:furniture/util/model_products.dart';

import 'package:furniture/widget/button.dart';
import 'package:provider/provider.dart';

class Beds extends StatefulWidget {
  const Beds({Key? key}) : super(key: key);

  @override
  _BedsState createState() => _BedsState();
}

class _BedsState extends State<Beds> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<Cart, Favorite>(builder: (context, Cart, Favorite, child) {
      return Scaffold(
          body: ListView(children: [
        Column(children: [
          Container(
            //padding: EdgeInsets.symmetric(vertical: 0),
            height: 450,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 250,
                childAspectRatio: 1 / 2,
                //crossAxisSpacing: 0,
                // mainAxisSpacing: 0
              ),
              itemCount: Modelsbeds.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, int index) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Material(
                  color: constant().background_product,
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                      //borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return SingleBed(
                            Modelsbeds: Modelsbeds[index],
                          );
                        }));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 65,
                                    width: 110,
                                    child: Image.asset(
                                      "${Modelsbeds[index].image}",
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        Modelsbeds[index].vote,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              child: Text(Modelsbeds[index].title,
                                  style: constant().styletitle),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(Modelsbeds[index].subtitle,
                                  style: constant().stylesubtitle),
                            ),
                            Container(
                              child: Text(Modelsbeds[index].price.toString(),
                                  style: constant().styleprice),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Favorite.add(Modelsbeds[index]);
                                    },
                                    icon: ButtonIcon(
                                      icon: Icons.favorite_border_outlined,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      Cart.add(Modelsbeds[index]);
                                    },
                                    child: ButtonIcon(
                                      icon: Icons.shopping_bag_outlined,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
        ]),
      ]));
    });
  }
}
