import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String labelText;
  final Function onSubmit;
  const CommonButton({Key? key, required this.labelText, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(43, 187, 173, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(labelText),
            Padding(
              padding: EdgeInsets.all(2),
              child: Icon(Icons.double_arrow),
            )
          ],
        ),
        onPressed: () => onSubmit(),
      ),
    );
  }
}
