import 'package:disenos/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (BuildContext context) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
