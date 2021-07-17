import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';
import '../../widgets/centered_view/centered_view.dart';

class NavigarionBar extends StatefulWidget {
  const NavigarionBar({Key? key}) : super(key: key);

  @override
  _NavigarionBarState createState() => _NavigarionBarState();
}

class _NavigarionBarState extends State<NavigarionBar> {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserProvider>(context).user;
    return Container(
      height: 70,
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Color.fromARGB(255, 2, 136, 209),
      child: CenteredView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // TODO implement protected routes and user state navigation
            _NavbarItem(
                'Hello ' + (userData.username != null
                        ? userData.username.toString()
                        : 'Guest'),
                '/home',
                context),
            SizedBox(height: 20),
            if (userData.id == null) ...[
              _NavbarItem('Log in', '/user/login', context),
              SizedBox(height: 20),
              _NavbarItem('Register', '/user/register', context),
            ] else ...[
              _NavbarItem('My Draws', '/register', context),
              SizedBox(height: 20),
              _NavbarItem('Create Draw', '/register', context),
              SizedBox(height: 20),
              _NavbarItem('Logout', '/user/logout', context),
            ],
          ],
        ),
      ),
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
