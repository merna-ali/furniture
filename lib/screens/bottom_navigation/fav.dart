import 'package:flutter/material.dart';
import 'package:furniture/provider/favorite.dart';
import 'package:provider/provider.dart';

class Fav extends StatefulWidget {


  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {



    return Consumer<Favorite>(builder: (context, Favorite, child) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('My cart product'),
          ),
          body: Favorite.basketItems.length == 0
              ? Center(child: Text('no product in your Favorits'))
              : ListView.builder(
              itemCount: Favorite.basketItems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      Favorite.basketItems[index].title,
                    ),
                    subtitle: Text(
                      Favorite.basketItems[index].price.toString(),
                    ),
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 64,
                        maxHeight: 64,
                      ),
                      child: Image.asset(
                        Favorite.basketItems[index].image,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        Favorite.remove(Favorite.basketItems[index]);
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
