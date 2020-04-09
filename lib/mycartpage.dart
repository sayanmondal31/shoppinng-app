import 'package:advancedtest/cartView.dart';
import 'package:advancedtest/cartviewItem.dart';
import 'package:advancedtest/model/mycart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatelessWidget {
  _showSnackbar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
      "All items deleted",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 20),
    )));
  }

  @override
  Widget build(BuildContext context) {
    final int amount = Provider.of<MyCart>(context).totalPrice;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.close)),
        title: Center(child: Text("My cart")),
        actions: <Widget>[
          Builder(
            builder: (context) => GestureDetector(
                onTap: () {
                  Provider.of<MyCart>(context, listen: false).removeAll();
                  _showSnackbar(context);
                },
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "Remove all",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ))),
          )
        ],
      ),
    body: Column(

      children:<Widget>[
        Container(
          padding:EdgeInsets.symmetric(vertical:70,horizontal: 20),
          
          child: Center(child: Card(
            elevation: 20,
            margin: EdgeInsets.all(20),
            color: Colors.blueAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Total amount: \$",style: TextStyle(
                  fontSize: 25
                ),),
                Text(amount.toString(),style: TextStyle(
                  fontSize:30
                ),),
              ],
            ),
          )),
        ),
        Expanded(
                  child: Container(
            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10)
              )
            ),
            child: CartItemViwe(),
          ),
        )
      ]
    ),
    );
  }
}
// ,

