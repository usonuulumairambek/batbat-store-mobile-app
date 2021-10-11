import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_for_company/card_button.dart';
import 'package:project_for_company/data.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Мои  желания', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (1 / 2),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: Provider.of<AllData>(context).likedThing,
          )
        ],
      ),
    );
  }
}
