import 'package:flutter/cupertino.dart';
import '../util/model_products.dart';

class Favorite extends ChangeNotifier {
  List<ModelProduct> Modelschair = [];
  List<ModelProduct> Modelsalls = [];
  List<ModelProduct> Modelsbeds = [];
  List<ModelProduct> Modelssofa = [];
  List<ModelProduct> Modelstables = [];
  //double _totalPrice = 0.0;

  void add(ModelProduct model_products) {
    Modelschair.add(model_products);
    Modelsalls.add(model_products);
    Modelsbeds.add(model_products);
    Modelssofa.add(model_products);
    Modelstables.add(model_products);

    // _totalPrice += model_chairs.price;
    notifyListeners();

  }

  void remove(ModelProduct model_products) {
    Modelschair.remove(model_products);
    Modelsalls.remove(model_products);
    Modelsbeds.remove(model_products);
    Modelssofa.remove(model_products);
    Modelstables.remove(model_products);

    // _totalPrice -= model_chairs.price;
    notifyListeners();

  }


  //int get count {
  //return Modelschair.length;
  //}

  List<ModelProduct> get basketItems {
    return  Modelschair  ;
  }
}
