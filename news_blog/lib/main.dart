import 'package:flutter/material.dart';
import 'package:news_blog/home_page.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
