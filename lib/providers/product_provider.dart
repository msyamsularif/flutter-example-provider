import 'package:example_provider/models/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _product = mockProduct;

  List<Product> get product => [..._product];

  // List<Product> get productFav {
  //   // _product.forEach((e) {
  //   //   if (e.isFavorite == true) newResult.add(e);
  //   // });
  //   final resultFav = _product.where((e) => e.isFavorite).toList();
  //   print('DISINI - ${resultFav.map((e) => e.title).toList()}');
  //   return resultFav;
  // }

  List<Product> get productFav {
    final result = _product.where((e) => e.isFavorite).toList();

    return result;
  }

  void deleteFav(Product product) {
    if (_product.contains(product)) {
      int index = _product.indexOf(product);
      _product[index].isFavorite = false;
    } else {
      throw 'No Product Found';
    }
    notifyListeners();
  }

  void isFav(Product prod) {
    if (_product.contains(prod)) {
      int index = _product.indexOf(prod);
      _product[index].isFavorite = !_product[index].isFavorite;
    } else {
      throw 'No Product Found';
    }
    notifyListeners();
  }
}
