import 'package:flutter/material.dart';
import 'package:project_for_company/configuration/strings.dart';
import 'package:project_for_company/navigation/main_navigation.dart';

class SingUpScreen extends StatelessWidget {


  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: CustomForm(),),
    );
  }
}

class CustomForm extends StatelessWidget {
   CustomForm({Key? key}) : super(key: key);
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
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: confirmPassword,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                      width: double.infinity,
                      child:
                      ElevatedButton(onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(MainNavigationRouteName.app,(r)=>false);
                      }, child: Text(singUpBtn))),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Center(
                        child: Text(
                          haveAccount,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        )),
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
