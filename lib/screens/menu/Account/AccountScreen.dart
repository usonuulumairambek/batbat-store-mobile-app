import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_for_company/screens/menu/Account/profile.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF25d2db),
          title: Text("Мой профиль"),
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Получатель:"),
              Text(" ххх"),
              Text("ххх "),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Город:"),
              Text("ххх "),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Тип профиля:"),
              Text("ххх "),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Email:"),
              Text("ххх "),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Телефон:"),
              Text("ххх "),
            ]),
            SizedBox(
              height: 25,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditingProfile();
                  }));
                },
                child: Text("Изменить", style: TextStyle(fontSize: 22))),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF08E05F),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Text("Выйти", style: TextStyle(fontSize: 32)),
            ),
          ],
        ));
  }
}
