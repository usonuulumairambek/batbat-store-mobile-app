import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'inner_categories/male.dart';
import 'inner_categories/female.dart';
import 'inner_categories/children.dart';
import 'inner_categories/Other.dart';
import 'screen_of_categories.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  Column getTile(String name, VoidCallback fun) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          onTap: fun,
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
          getPageTile('Разное', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Other()));
          }),
          getPageTile('Женская одежда', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Female()));
          }),
          getPageTile('Мужская одежда', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Male()));
          }),
          getPageTile('Детская одежда', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Children()));
          }),
          getTile('Новинки', () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOfCategories('Новинки', 0)));
          }),
          getTile('Большие размеры', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOfCategories('Большие размеры', 1)));
          }),
          getTile('Распродажа', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOfCategories('Распродажа', 2)));
          }),
          getTile('Акции', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOfCategories('Акции', 3)));
          }),
          getTile('Колекции', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOfCategories('Колекции', 4)));
          }),
        ],
      ),
    );
  }
}
