import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:project_for_company/screens/menu/Question/dataMenu.dart';

import 'Account/AccountScreen.dart';
import 'Account/DataAccount.dart';
import 'Question/Question.dart';

class Menu extends StatefulWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final account = AccountList().account;
  final list = questionList().list;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          //Аватарка и личные данные и колл центр
          children: [
            newMethod(context),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(list[index].name),
                    trailing: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return New(name: list[index]);
                          }));
                        }),
                  );
                })
          ],
        ));
  }

  Column newMethod(BuildContext context) {
    return Column(
      children: [
        //Аватарка и личные данные и колл центр
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.account_box),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PersonalData();
                  }));
                }),
            IconButton(
                icon: Icon(Icons.message_sharp),
                onPressed: () {
                  print("Pressed");
                }),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        //баланн бонус заказы и избронные товары

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Мой баланс"),
                  Text("xxx руб"),
                  Text("История Операции")
                ],
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Бонус"),
                  Text("xxx баллов"),
                  Text("Как это работает")
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Мои заказы"),
                  Text("Товаров xxx"),
                  Text("Сумма xxx"),
                  Text("Перейти к заказам")
                ],
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Избранные товары "),
                  Text("Товаров xxx"),
                  Text("Сумма xxx"),
                  Text("Посмотреть")
                ],
              ),
            ),
          ],
        ),
        //Нижний отдел вопросы ответы и т/д
      ],
    );
  }
}
