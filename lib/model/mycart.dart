import 'dart:collection';

import 'item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyCart extends ChangeNotifier{

  List<Item> _item = [
    Item(text: 'red' ),
    Item(text: 'blue' ),
    Item(text: 'green' ),
    Item(text: 'yellow' ),
    Item(text: 'pink'),
  ];

  List<Item> _cartitem = [];

  UnmodifiableListView<Item> get cartItem => UnmodifiableListView(_cartitem);

  UnmodifiableListView<Item> get items =>UnmodifiableListView(_item);

  int get total_item => _item.length;
  int get total_cart_item => _cartitem.length;

  int get totalPrice => _item.length * 42;

  //now add item to new cart
  void add(String addeditem){
    final cartitem = Item(text:addeditem);
    _cartitem.add(cartitem);
    notifyListeners();
  }

  //for remove all items from cart
  void removeAll(){
    _cartitem.clear();
    notifyListeners();
  }

}