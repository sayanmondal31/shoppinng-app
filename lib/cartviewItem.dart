import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/mycart.dart';

class CartItemViwe extends StatelessWidget {
  const CartItemViwe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MyCart>(
          builder: (context, cart, child) {
            return ListView.builder(
    itemCount: cart.total_cart_item,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListTile(
          title: Text(cart.cartItem[index].text),
          trailing: GestureDetector(
            onTap: (){
              cart.removeItem(cart.cartItem[index]);
            },
            child: CircleAvatar(
              radius: 10,
              child: Icon(Icons.close,size: 20,),
            ),
          ),
        ),
      );
    },
            );
          },
        );
  }
}
