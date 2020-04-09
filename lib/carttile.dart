import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final String text;
  final Function button;
  
  CartTile({this.text, this.button});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Text(text),
        trailing: RaisedButton(
          onPressed: button,
          child: Text("Add"),
        ),
      ),
    );
  }
}