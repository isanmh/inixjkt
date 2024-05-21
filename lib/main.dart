import 'package:dasar_app/views/home_page.dart';
import 'package:dasar_app/views/root_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // root page
      routes: {
        '/': (context) => const RootPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
