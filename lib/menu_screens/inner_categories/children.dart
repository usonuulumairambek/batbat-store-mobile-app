import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'boy.dart';
import 'girl.dart';
import 'package:project_for_company/menu_screens/screen_of_categories.dart';

class Children extends StatefulWidget {
  const Children({Key? key}) : super(key: key);

  @override
  _ChildrenState createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {

  Column getTile(String name, int num) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOfCategories(name, num)));
          },
          trailing: Icon(CupertinoIcons.right_chevron),
        ),
        Divider(thickness: 2, indent: 15, endIndent: 15, color: Colors.grey,),
      ],
    );
  }

  Column getPageTile(String name, VoidCallback fun) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          onTap: fun,
          trailing: Icon(CupertinoIcons.circle_grid_hex_fill),
        ),
        Divider(thickness: 2, indent: 15, endIndent: 15, color: Colors.grey,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          getTile('Детские карновальные костюмы', 42),
          getTile('Детские колготки', 43),
          getTile('Школьная форма', 44),
          getPageTile('Для девочек', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Girl()));
          }),
          getPageTile('Для мальчиков', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Boy()));
          }),
        ],
      ),
    );
  }
}
