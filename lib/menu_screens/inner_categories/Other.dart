import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_for_company/menu_screens/screen_of_categories.dart';

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {

  Column getTile(String name, int num) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          onTap: (){
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
          getTile('Ремни пояса', 160),
          getTile('Сумки и рюкзаки', 161),
          getTile('Для военных', 162),
          getTile('Для медиков', 163),
          getTile('Для промышленных работников', 164),
          getTile('Для работников ресторана', 165),
          getTile('Корпоротивная одежда', 166),
          getTile('Купальники', 167),
          getTile('Маски', 168),
          getTile('Полотенца', 169),
          getTile('Постельное белье', 170),
          getTile('Ткани', 171),
          getTile('Форменная одежда', 172),
        ],
      ),
    );
  }
}
