import 'package:flutter/material.dart';

import '../../common_widgets/common_input_widget.dart';
import '../../common_widgets/button_widget.dart';
import '../../models/user_model.dart';

class LoginView extends StatefulWidget {

  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final model = UserModel();

  submitHandler() {
    model.username = _usernameController.text;
    model.password = _passwordController.text;
    if (model.username!.isEmpty || model.password!.isEmpty) return;
    // TODO login service call
    print('Login request sent');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      constraints: BoxConstraints.loose(
        Size(MediaQuery.of(context).size.width / 4,
            MediaQuery.of(context).size.height - 140),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Login",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),),
          ),
          CommonInput(
            labelText: 'Username',
            icon: Icons.person_outline,
            controller: _usernameController,
            validatorFn: model.usernameValidation,
          ),
          CommonInput(
            labelText: 'Password',
            icon: Icons.code,
            controller: _passwordController,
            visibleText: true,
            validatorFn: model.passwordValidation,
          ),
          CommonButton(labelText: 'LOG IN', onSubmit: submitHandler),
        ],
      ),
    );
  }
}
