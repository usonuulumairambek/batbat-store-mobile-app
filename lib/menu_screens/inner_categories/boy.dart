import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_for_company/menu_screens/screen_of_categories.dart';

class Boy extends StatefulWidget {
  const Boy({Key? key}) : super(key: key);

  @override
  _BoyState createState() => _BoyState();
}

class _BoyState extends State<Boy> {

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
          getTile('Бабочки', 5),
          getTile('Белье', 6),
          getTile('Боди', 7),
          getTile('Бомберы', 8),
          getTile('Брюки', 9),
          getTile('Ветровки', 10),
          getTile('Водолазки', 11),
          getTile('Галстуги', 12),
          getTile('Головные уборы', 13),
          getTile('Деловые костюмы', 14),
          getTile('Джемперы', 15),
          getTile('Кардиганы', 16),
          getTile('Жакеты', 17),
          getTile('Колготки', 18),
          getTile('Комбинезоны', 19),
          getTile('Камбинезоны нательные', 20),
          getTile('Комплекты белья', 21),
          getTile('Костюмы', 22),
          getTile('Кофты', 23),
          getTile('Куртки', 24),
          getTile('Лонгсливы', 25),
          getTile('Майки', 26),
          getTile('Носки', 27),
          getTile('Пальто', 28),
          getTile('Пиджаки', 29),
          getTile('Плащи', 30),
          getTile('Полукамбинизоны', 31),
          getTile('Пуловеры', 32),
          getTile('Рубашки', 33),
          getTile('Свитеры', 34),
          getTile('Свитшоты', 35),
          getTile('Спортивные костюмы', 36),
          getTile('Толстовки', 37),
          getTile('Трусы', 38),
          getTile('Футболки', 39),
          getTile('Худи', 40),
          getTile('Шорты', 41),
      ]
      ),
    );
  }
}
