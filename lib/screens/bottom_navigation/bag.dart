import 'package:flutter/material.dart';
import 'package:furniture/provider/cart.dart';
import 'package:provider/provider.dart';

class Bag extends StatefulWidget {
  const Bag({Key? key}) : super(key: key);

  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    //cart =  Cart();
    return Consumer<Cart>(builder: (context, Cart, child) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('My cart product'),
          ),
          body: Cart.basketItems.length == 0
              ? Center(child: Text('no product in your cart'))
              : ListView.builder(
                  itemCount: Cart.basketItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(
                          Cart.basketItems[index].title,
                        ),
                        subtitle: Text(
                          Cart.basketItems[index].price.toString(),
                        ),
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 44,
                            minHeight: 44,
                            maxWidth: 64,
                            maxHeight: 64,
                          ),
                          child: Image.asset(
                            Cart.basketItems[index].image,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            Cart.remove(Cart.basketItems[index]);
                          },
                        ),
                      ),
                    );
                  }),
        ),
      );
    });
  }
}
