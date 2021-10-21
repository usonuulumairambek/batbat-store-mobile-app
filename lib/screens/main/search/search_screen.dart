import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  String str = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple[300],
      //   title: TextField(
      //     onChanged: (value) {
      //       str = value;
      //     },
      //     decoration: InputDecoration(border: InputBorder.none,
      //       hintText: 'Search',),
      //     autofocus: true,
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     //TODO: Searching
      //     IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
      //   ],
      // ),
      body: ListView(
        children: [],
      ),
    );
  }
}
