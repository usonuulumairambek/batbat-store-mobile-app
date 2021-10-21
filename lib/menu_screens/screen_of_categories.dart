import 'package:flutter/material.dart';
import 'package:project_for_company/card_button.dart';

class ScreenOfCategories extends StatefulWidget {

  final String name;
  final int indexList;


  ScreenOfCategories(this.name, this.indexList);

  @override
  _ScreenOfCategoriesState createState() => _ScreenOfCategoriesState();
}

class _ScreenOfCategoriesState extends State<ScreenOfCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(widget.name, style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (1 / 2),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [],
          )
        ],
      ),
    );
  }
}