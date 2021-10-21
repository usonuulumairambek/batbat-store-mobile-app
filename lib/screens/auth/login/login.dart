import 'package:flutter/material.dart';
import 'package:project_for_company/configuration/strings.dart';
import 'package:project_for_company/navigation/main_navigation.dart';

class LoginScreen extends StatelessWidget {

 const  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: MyCustomForm()),
    );
  }
}

class MyCustomForm extends StatelessWidget {
   MyCustomForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/batbat.jpg'),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: loginEmail,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: loginPassword,
                ),
              ),
              const SizedBox(height: 16),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(forgotPassword,
                      style: TextStyle(color: Colors.blueAccent))),
              const SizedBox(height: 16),
              SizedBox(
                  width: double.infinity,
                  child:
                      ElevatedButton(onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(MainNavigationRouteName.app,(r)=>false);
                      }, child: Text(loginBtn))),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(MainNavigationRouteName.singUp);
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(singUpBtn),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ],
          )),
          Center(
              child: Text(
            policy,
            textAlign: TextAlign.right,
          )),
        ],
      ),
    );
  }
}
