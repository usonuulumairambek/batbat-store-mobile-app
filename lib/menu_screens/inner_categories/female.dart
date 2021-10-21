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
          getTile('Белье', 45),
          getTile('Блузки и рубашки', 46),
          getTile('Бриджи и капри', 47),
          getTile('Брюки', 48),
          getTile('Брюки и шорты для беременных', 49),
          getTile('Вечерние платься', 50),
          getTile('Водолазки', 51),
          getTile('Головные уборы', 52),
          getTile('Джемперы', 53),
          getTile('Джемперы и кофты для беременных', 54),
          getTile('Джинсы', 55),
          getTile('Жилеты', 56),
          getTile('Кардиганы', 57),
          getTile('Карнавальные костюмы для женщин', 58),
          getTile('Камбинизоны', 59),
          getTile('Комплекты', 60),
          getTile('Корсеты', 61),
          getTile('Костюмы', 62),
          getTile('Костюмы для беременных', 63),
          getTile('Кофты и свитеры', 64),
          getTile('Куртки и ветровки', 65),
          getTile('Легинсы',66),
          getTile('Майки', 67),
          getTile('Мусульманская одежда', 68),
          getTile('Накидки',69),
          getTile('Национальная одежда', 70),
          getTile('Носочно-чулочные изделия', 71),
          getTile('Одежда для беременных', 72),
          getTile('Пальто и полупальто', 73),
          getTile('Пиджаки и жакеты', 74),
          getTile('Платки, шарфы и шали', 75),
          getTile('Платья', 76),
          getTile('Платья и сарафаны для беременных', 77),
          getTile('Плащи', 78),
          getTile('Сарафаны', 79),
          getTile('Свадебные пляться', 80),
          getTile('Спортивные костьюмы', 81),
          getTile('Толстовки', 82),
          getTile('Топы', 83),
          getTile('Туники', 84),
          getTile('Туники для беременных', 85),
          getTile('Футболки', 86),
          getTile('Футболки для беременных', 87),
          getTile('Халаты', 88),
          getTile('Шорты', 89),
          getTile('Шубы', 90),
          getTile('Юбки', 91),
        ],
      ),
    );
  }
}
