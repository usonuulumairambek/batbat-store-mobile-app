import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_for_company/menu_screens/screen_of_categories.dart';

class Male extends StatefulWidget {
  const Male({Key? key}) : super(key: key);

  @override
  _MaleState createState() => _MaleState();
}

class _MaleState extends State<Male> {

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
          getTile('Булье', 141),
          getTile('Брюки', 142),
          getTile('Головные уборы', 143),
          getTile('Джинсы', 144),
          getTile('Жилеты', 145),
          getTile('Карнавальные костюмы', 146),
          getTile('Комбинизоны', 147),
          getTile('Костюмы', 148),
          getTile('Куртки и ветровки', 149),
          getTile('Мужские носки', 150),
          getTile('Национальная одежда', 151),
          getTile('Пальто и полупальто', 152),
          getTile('Пиджаки', 153),
          getTile('Рубашки и сорочки', 154),
          getTile('Спортивная одежда', 155),
          getTile('Толстовки и кофты', 156),
          getTile('Футболки', 157),
          getTile('Халаты', 158),
          getTile('Шорты', 159),
        ],
      ),
    );
  }
}
