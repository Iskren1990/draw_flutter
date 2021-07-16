import 'package:flutter/material.dart';
import '../../widgets/centered_view/centered_view.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Color.fromARGB(255, 2, 136, 209),
      child: CenteredView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _FooterItem('© 2021 Copyright Text'),
            SizedBox(width: 60),
            _FooterItem('More'),
          ],
        ),
      ),
    );
  }
}

class _FooterItem extends StatelessWidget {
  final String title;

  const _FooterItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white));
  }
}
