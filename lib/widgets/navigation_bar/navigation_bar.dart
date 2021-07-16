import 'package:client_flutter/widgets/centered_view/centered_view.dart';
import 'package:flutter/material.dart';

class NavigarionBar extends StatelessWidget {
  const NavigarionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Color.fromARGB(255, 2, 136, 209),
      child: CenteredView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // TODO implement protected routes and user state navigation
          _NavbarItem('Hello <<Username or Guest>>', '/home', context),
          SizedBox(height: 20),
          _NavbarItem('Log in', '/login', context),
          SizedBox(height: 20),
          _NavbarItem('Register', '/register', context),
        ],
      )),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  final String title;
  final String route;
  final context;

  const _NavbarItem(this.title, this.route, this.context);

  void _navigate() {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(43, 187, 173, 255),
          shadowColor: Color.fromRGBO(43, 187, 173, 255),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: _navigate,
    );
  }
}
