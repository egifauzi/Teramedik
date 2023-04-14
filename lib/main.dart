import 'package:flutter/material.dart';
import 'package:teramedik/ui/home_page.dart';


void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
