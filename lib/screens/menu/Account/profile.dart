import 'package:flutter/material.dart';
import 'package:project_for_company/screens/menu/Account/DataAccount.dart';

class EditingProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF08E05F),
        title: Text("Редактирование профиля"),
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  get dropdownValue => null;
  String? s = 'Юр лицо';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  labelText: "Имя",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  labelText: "Фамилия",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(
                    Icons.add_location,
                    color: Colors.grey,
                  ),
                  labelText: "Город",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  labelText: "Телефон",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  labelText: "Email",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        DropdownButton<String>(
          value: s,
          onChanged: (String? newValue) {
            setState(() {
              s = newValue;
            });
          },
          items: <String>[
            'Юр лицо',
            'ИП',
            'Физ лицо',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        Container(
            padding: const EdgeInsets.only(left: 150.0, top: 40.0),
            child: ElevatedButton(
              child: const Text("Сохранить"),
              onPressed: () {},
            )),
      ],
    );
  }
}

// class EditingProfile extends StatefulWidget {
//   const EditingProfile({Key? key}) : super(key: key);

//   @override
//   _EditingProfileState createState() => _EditingProfileState();
// }

// class _EditingProfileState extends State<EditingProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Редактирование профиля "),
//         ),
//         body: ListView(

//         )
//         );
//   }
// }
