import 'package:flutter/material.dart';

import 'package:store1/screens/creat_screen.dart';
import 'package:store1/screens/details_screen.dart';
import 'package:store1/screens/home_screen.dart';
import 'package:store1/screens/login_screen.dart';
import 'package:store1/screens/mycart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/login_screen',

      routes: {
        '/login_screen': (context) => const LoginScreen(),

        '/home_screen': (context) => const HomeScreen(),

        '/creat_screen': (context) => const CreateScreen(),

      },
    );
  }
}