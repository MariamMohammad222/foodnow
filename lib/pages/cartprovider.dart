import 'package:alhamdllelah/models/itemburgermodel.dart';
import 'package:flutter/material.dart';


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
