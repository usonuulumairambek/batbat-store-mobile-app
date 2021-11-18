import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:project_for_company/widget/card_button.dart';
import 'package:project_for_company/repository/data/data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<CartButton> searchArr =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: CupertinoSearchTextField(backgroundColor: Colors.white,
        onChanged: (str) {
          setState(() {
            if (str.length >= 1) {
              Provider.of<AllData>(context, listen: false).allStaff.forEach((e) {
                if (e.str.toLowerCase().contains(str.toLowerCase())) {
                  if(!searchArr.contains(e)) {
                    searchArr.add(e);
                  }
                }
              });
            } else {
              searchArr = [];
            }
          });
        },),
        centerTitle: true,
      ),
      body: ListView(
        children: [Column(
          children:searchArr,
        ),
      ]
      ),
    );
  }
}