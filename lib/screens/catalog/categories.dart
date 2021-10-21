import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Женская одежда'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Мужская одежда'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Детская одежда'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Новинки'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Большие размеры'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Распродажа'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Акции'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.circle_grid_hex_fill, color: Colors.purple,),
            title: const Text('Колекции'),
            onTap: () {},
            trailing: Icon(CupertinoIcons.right_chevron),
          ),
        ],
      ),
    );
  }
}
