import 'package:advancedtest/model/mycart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'carttile.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyCart>(
      builder: (context, mycart, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final catelog = mycart.items[index];
            return CartTile(
              button: () {
                Provider.of<MyCart>(context,listen: false).addtocart(catelog.text);
              },
              text: catelog.text,
            );
          },
          itemCount: mycart.total_item,
        );
      },
    );
  }
}
