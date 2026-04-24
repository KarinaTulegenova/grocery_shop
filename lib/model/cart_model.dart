import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<List<dynamic>> _shopItems = [
    ["Avocado", "lib/images/avocado.png", "1.50", Colors.green],
    ["Banana", "lib/images/banana.png", "2.00", Colors.yellow],
    ["Orange", "lib/images/orange.png", "1.00", Colors.orange],
    ["Strawberry", "lib/images/strawberry.png", "3.00", Colors.pink],
    ["Blueberry", "lib/images/blueberry.png", "2.50", Colors.blue],
    ["Chicken", "lib/images/chicken.png", "5.00", Colors.red],
    ['Water', 'lib/images/water.png', '2.00', Colors.blue],
  ];
  List<List<dynamic>> get shopItems => _shopItems;
  final List<List<dynamic>> _cartItems = [];
  List<List<dynamic>> get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double total = 0;
    for (var item in _cartItems) {
      total += double.parse(item[2]);
    }
    return total.toStringAsFixed(2);
  }

}
