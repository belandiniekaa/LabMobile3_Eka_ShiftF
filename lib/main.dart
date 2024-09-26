import 'package:flutter/material.dart';
import 'package:flutter_routes_sidemenu_login/home_page.dart';
import 'package:flutter_routes_sidemenu_login/login_page.dart';
import 'package:flutter_routes_sidemenu_login/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soft Pastel App',
      theme: ThemeData(
        primaryColor: Colors.pink[100],
        scaffoldBackgroundColor: Colors.pink[50],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87, fontSize: 16),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink[100],
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
