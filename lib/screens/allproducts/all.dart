import 'package:flutter/material.dart';
import 'package:furniture/provider/cart.dart';
import 'package:furniture/screens/single_products/singleall.dart';
import 'package:furniture/widget/constant.dart';
import 'package:furniture/provider/favorite.dart';
import 'package:furniture/util/model_products.dart';

import 'package:furniture/widget/button.dart';
import 'package:provider/provider.dart';

class ALL extends StatefulWidget {
  const ALL({Key? key}) : super(key: key);

  @override
  _ALLState createState() => _ALLState();
}

class _ALLState extends State<ALL> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<Cart, Favorite>(builder: (context, Cart, Favorite, child) {
      return Scaffold(
          body: ListView(children: [
        Column(children: [
          Container(
            height: 450,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 250,
                childAspectRatio: 1 / 2,
              ),
              itemCount: Modelsalls.length,
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
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return SingleAll(
                            Modelsalls: Modelsalls[index],
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
                                    width: 90,
                                    child: Image.asset(
                                      "${Modelsalls[index].image}",
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        Modelsalls[index].vote,
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
                              child: Text(Modelsalls[index].title,
                                  style: constant().styletitle),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(Modelsalls[index].subtitle,
                                  style: constant().stylesubtitle),
                            ),
                            Container(
                              child: Text(Modelsalls[index].price.toString(),
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
                                      Favorite.add(Modelsalls[index]);
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
                                      Cart.add(Modelsalls[index]);
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
