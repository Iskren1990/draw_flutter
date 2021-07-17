import 'package:client_flutter/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import './layouts/layout_view.dart';
import './views/login/login_view.dart';
import './views/register/register_view.dart';
import './views/home/home_view.dart';
import './views/four_ou_four/four_ou_four.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => UserProvider(),
      child: MaterialApp(
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
          '/user/login': (ctx) => LayoutView(child: LoginView()),
          '/user/register': (ctx) => LayoutView(child: RegisterView()),
        },
        onUnknownRoute: (settings) => MaterialPageRoute(
            builder: (ctx) => LayoutView(child: FourOuFour())),
      ),
    );
  }
}
