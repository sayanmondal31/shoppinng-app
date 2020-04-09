
import 'package:advancedtest/model/item.dart';
import 'package:advancedtest/model/mycart.dart';
import 'package:advancedtest/mycartpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cartView.dart';

class MyCatelog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shopping"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyCartPage()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                  foregroundColor: Colors.blueAccent,
                  child: Icon(Icons.shopping_cart)),
            ),
          )
        ],
      ),
      body: CartView(),
    );
  }
}



