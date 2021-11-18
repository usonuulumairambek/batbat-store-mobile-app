import 'package:flutter/material.dart';
import 'package:project_for_company/widget/card_button.dart';
import 'package:provider/provider.dart';
import 'package:project_for_company/repository/data/data.dart';

class ScreenOfCategories extends StatefulWidget {

  final String name;
  final int indexList;


  ScreenOfCategories(this.name, this.indexList);

  @override
  _ScreenOfCategoriesState createState() => _ScreenOfCategoriesState();
}

class _ScreenOfCategoriesState extends State<ScreenOfCategories> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Provider.of<AllData>(context, listen: false).sortCarts();
  }

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
            children: Provider.of<AllData>(context).cartCategories[widget.indexList],
          )
        ],
      ),
    );
  }
}
