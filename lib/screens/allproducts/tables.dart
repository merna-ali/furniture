import 'package:flutter/material.dart';
import 'package:furniture/provider/cart.dart';
import 'package:furniture/screens/single_products/singletables.dart';
import 'package:furniture/widget/constant.dart';
import 'package:furniture/provider/favorite.dart';
import 'package:furniture/util/model_products.dart';
import 'package:furniture/widget/button.dart';

import 'package:provider/provider.dart';


class Tables extends StatefulWidget {
  const Tables({Key? key}) : super(key: key);

  @override
  _TablesState createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context)  {
    return Consumer2<Cart, Favorite>(builder:(context,Cart,Favorite,child)
    {
      return  Scaffold(
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
                      itemCount: Modelstables.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, int index) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        child: Material(
                          color:constant().background_product,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            //borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return SingleTables(Modelstables: Modelstables[index],);

                                    }));

                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            height:60,
                                            width: 75,
                                            child: Image.asset(
                                              "${Modelstables [index].image}",
                                              fit: BoxFit.cover,
                                            )),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                Modelstables [index].vote,
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
                                      child: Text(
                                        Modelstables [index].title,
                                        style:constant().styletitle
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        Modelstables [index].subtitle,
                                        style: constant().stylesubtitle
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        Modelstables [index].price.toString(),
                                        style: constant().styleprice
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              Favorite.add(Modelstables[index]);
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
                                              Cart.add(Modelstables[index]);
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
