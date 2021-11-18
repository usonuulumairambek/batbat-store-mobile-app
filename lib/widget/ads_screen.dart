import 'package:flutter/material.dart';

class AdsScreen extends StatelessWidget {

  final String image;
  final String description;


  AdsScreen(this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Акция'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.network(image),
          ListTile(
            title: Text(description, style: TextStyle(
                fontSize: 15
            ),),
          )
        ],
      ),
    );
  }
}
