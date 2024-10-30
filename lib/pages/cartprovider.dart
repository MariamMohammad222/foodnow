import 'package:flutter/material.dart';
import 'package:foodnow/models/itemburgermodel.dart';
import 'package:foodnow/pages/cart.dart';
import 'package:foodnow/pages/cartpage.dart';


class CartProvider with ChangeNotifier {
  List<Itemburgermodel> _items = [
    
  ];

  List<Itemburgermodel> get items => _items;

  void addItem(Itemburgermodel item) {
    _items.add(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
