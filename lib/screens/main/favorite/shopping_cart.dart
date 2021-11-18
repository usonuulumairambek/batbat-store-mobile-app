import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_for_company/repository/data/data.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Корзина', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: Provider.of<AllData>(context).getShopThings(),
          )
        ],
      ),
    );
  }
}
