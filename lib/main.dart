import 'package:flutter/material.dart';
import 'package:frontend/home/screen/home_screen.dart';

void main() {
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          tabBarTheme: TabBarTheme(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(color: Colors.white))),
      title: "Blog App",
      home: HomeScreen(),
    );
  }
}
