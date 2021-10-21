import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_for_company/menu_screens/screen_of_categories.dart';

class Girl extends StatefulWidget {
  const Girl({Key? key}) : super(key: key);

  @override
  _GirlState createState() => _GirlState();
}

class _GirlState extends State<Girl> {

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
            getTile('Банты', 92),
            getTile('Белье', 93),
            getTile('Блузки', 94),
            getTile('Боди', 95),
            getTile('Болеро', 96),
            getTile('Бомберы', 97),
            getTile('Брюки', 98),
            getTile('Ветровки', 99),
            getTile('Водолазки', 100),
            getTile('Воротники', 101),
            getTile('Головные уборы', 102),
            getTile('Джемперы', 103),
            getTile('Жакеты', 104),
            getTile('Жилеты', 105),
            getTile('Капри', 106),
            getTile('Кардиганы', 107),
            getTile('Комбинизоны', 108),
            getTile('Комбинизоны нательные', 109),
            getTile('Комплекты', 110),
            getTile('Комплекты белья', 111),
            getTile('Костюмы', 112),
            getTile('Кофты', 113),
            getTile('Куртки', 114),
            getTile('Леггисы', 115),
            getTile('Лонгсливы', 116),
            getTile('Майки', 117),
            getTile('Накидки', 118),
            getTile('Носки', 119),
            getTile('Пальто', 120),
            getTile('Пиджаки', 121),
            getTile('Платья', 122),
            getTile('Плащи', 123),
            getTile('Полукомбинизоны', 124),
            getTile('Рубашки', 125),
            getTile('Сарафаны', 126),
            getTile('Свитеры', 127),
            getTile('Свитшоты', 128),
            getTile('Спортивные костюмы', 129),
            getTile('Твинсеты', 130),
            getTile('Толстовки', 131),
            getTile('Топы', 132),
            getTile('Трусы', 133),
            getTile('Туники', 134),
            getTile('Фартуки', 135),
            getTile('Футболки', 136),
            getTile('Халаты', 137),
            getTile('Худи', 138),
            getTile('Шорты', 139),
            getTile('Юбки', 140),
          ]
      ),
    );
  }
}
