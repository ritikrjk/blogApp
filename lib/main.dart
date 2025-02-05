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
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              shape: CircleBorder(),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white70),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
      title: "Blog App",
      home: HomeScreen(),
    );
  }
}
