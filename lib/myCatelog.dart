import 'package:advancedtest/addCategory.dart';
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

      //drawer template
      drawer: Drawer(
        semanticLabel: "hello",
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("data"),
              decoration: BoxDecoration(
                color:Colors.blue,
                shape: BoxShape.rectangle
              ),
            ),
            ListTile(
              onTap: null,
              title: Text("label 1"),
            ),
                        ListTile(
              onTap: null,
              title: Text("label 2"),
            ),
          ],
        ),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>AddCategory());
        },
        tooltip: "add new data",
        child: Icon(
          Icons.add_circle,
        ),foregroundColor: Colors.blueAccent[600],
      ),
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
