import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_for_company/screens/catalog/categories.dart';
import 'package:project_for_company/screens/main/main_screen.dart';

import 'screens/main/notif/notification.dart';
import 'screens/main/search/search_screen.dart';
import 'screens/main/favorite/shopping_cart.dart';
import 'screens/wishlist.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    SearchScreen(),
    Categories(),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BatBat', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
          }, icon: Icon(Icons.search)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => WishList()));
          }, icon: Icon(CupertinoIcons.heart_solid)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
          }, icon: Icon(CupertinoIcons.bell)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(CupertinoIcons.square_grid_4x3_fill, color: Colors.purple,),
              title: const Text('Категории'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart_outlined, color: Colors.purple,),
              title: const Text('Корзина покупателя'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCart()));
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.heart_solid, color: Colors.purple,),
              title: const Text('Список желаний'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WishList()));
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            ListTile(
              leading: Icon(Icons.assignment_returned_rounded, color: Colors.purple,),
              title: const Text('Войти'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person_add_solid, color: Colors.purple,),
              title: const Text('Зарегестрироваться'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.power, color: Colors.purple,),
              title: const Text('Выйти'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_hex),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Меню',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
