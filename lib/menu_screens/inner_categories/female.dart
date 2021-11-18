import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_for_company/menu_screens/screen_of_categories.dart';

class Female extends StatefulWidget {
  const Female({Key? key}) : super(key: key);

  @override
  _FemaleState createState() => _FemaleState();
}

class _FemaleState extends State<Female> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Мужская одежда"), centerTitle: true, backgroundColor: Colors.purple,),
      body: ListView(
        children: [
          getTile('Одежда', 1),
          getTile('Обувь', 2),
        ],
      ),
    );
  }
}
