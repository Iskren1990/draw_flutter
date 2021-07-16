import 'package:flutter/material.dart';
import './layouts/layout_view.dart';
import 'package:google_fonts/google_fonts.dart';

import './views/login/login_view.dart';
import './views/register/register_view.dart';
import './views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draw',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        '/': (ctx) => LayoutView(child: HomeView()),
        '/home': (ctx) => LayoutView(child: HomeView()),
        '/login': (ctx) => LayoutView(child: LoginView()),
        '/register': (ctx) => LayoutView(child: RegisterView()),
      },
    );
  }
}
