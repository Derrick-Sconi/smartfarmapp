import 'package:flutter/material.dart';
import 'package:smartfarmapp/loadingscreen.dart';
import 'package:smartfarmapp/homepage.dart';
import 'package:smartfarmapp/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/login': (context) => LoginPage(),
        '/home': (context) => Home(),  
      },
    ),
  );
}
