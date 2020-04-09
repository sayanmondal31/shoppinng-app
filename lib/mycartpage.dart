import 'package:advancedtest/cartView.dart';
import 'package:advancedtest/model/mycart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my cart"),
      ),
      body: Consumer<MyCart>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.total_cart_item,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(cart.cartItem[index].text),
              );
            },
          );
        },
      ),
    );
  }
}
