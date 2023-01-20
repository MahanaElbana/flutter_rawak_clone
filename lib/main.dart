import 'package:flutter/material.dart';
import 'package:flutter_rawak_clone/view/home_screen.dart';
import 'package:flutter_rawak_clone/view/widget/web_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
     home: const HomeScreen(),
    );
  }
}