import 'package:advancedtest/cartView.dart';
import 'package:advancedtest/model/mycart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatelessWidget {
   _showSnackbar(BuildContext context){
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("All items deleted",textAlign: TextAlign.center,style: TextStyle(
      color:Colors.red,
      fontSize:20
    ),)));
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.close)),
        title: Center(child: Text("My cart")),
        actions: <Widget>[
          Builder(
            builder: (context)=>
                       GestureDetector(
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
