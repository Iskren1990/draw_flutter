import 'package:flutter/material.dart';

class CommonInput extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final TextEditingController? controller;
  final String? Function(String?)? validatorFn;
  final bool? visibleText;
  final Function(String?)? onSaveHandler;

  const CommonInput({
    Key? key,
    required this.labelText,
    required this.icon,
    this.controller,
    this.validatorFn,
    this.onSaveHandler,
    this.visibleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        obscureText: visibleText == null ?  false : true,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          icon: Icon(icon),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
        validator: validatorFn,
        onSaved: onSaveHandler,
      ),
    );
  }
}
