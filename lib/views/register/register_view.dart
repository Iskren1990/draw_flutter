//  Form widget
import 'package:client_flutter/common_widgets/button_widget.dart';
import 'package:client_flutter/common_widgets/common_input_widget.dart';
import 'package:client_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final model = UserModel();

  void submitHandler() {
    // TODO login service call
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      constraints: BoxConstraints.loose(
        Size(MediaQuery.of(context).size.width / 4,
            MediaQuery.of(context).size.height - 140),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CommonInput(
                labelText: 'Username',
                icon: Icons.person_outline,
                validatorFn: model.usernameValidation,
                onSaveHandler: (String? value) {
                  model.username = value;
                }),
            CommonInput(
              labelText: 'Password',
              icon: Icons.code,
              validatorFn: model.passwordValidation,
              onSaveHandler: (String? value) {
                  model.password = value;
                }
            ),
            CommonInput(
              labelText: 'Repeated Password',
              icon: Icons.code,
              validatorFn: model.rePasswordValidation,
            ),
            CommonButton(labelText: 'REGISTER', onSubmit: submitHandler),
          ],
        ),
      ),
    );
  }
}
