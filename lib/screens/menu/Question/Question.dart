import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dataMenu.dart';

class New extends StatelessWidget {
  question name;

  New({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.name),
      ),
      body: Center(
        child: Text(name.description),
      ),
    );
  }
}
