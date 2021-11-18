import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_for_company/repository/data/data.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Мои  желания', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: Provider.of<AllData>(context).getLikedThings(),
          )
        ],
      ),
    );
  }
}
