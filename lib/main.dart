import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         theme: ThemeData(
             appBarTheme: const AppBarTheme(color: Color(0xff075E54)),

      ),
      home: const HomeScreen(),
    );
  }
}

