import 'package:flutter/material.dart';
import 'package:weatherapp/Homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        iconTheme:const  IconThemeData(
          color: Colors.white
        ),
        textTheme:const  TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Formerly bodyText1
          bodyMedium: TextStyle(color: Colors.white), // Formerly bodyText2
          headlineLarge: TextStyle(color: Colors.white), // Formerly headline1
          headlineMedium: TextStyle(color: Colors.white), // Formerly headline2
          headlineSmall: TextStyle(color: Colors.white), // Formerly headline3
          titleLarge: TextStyle(color: Colors.white), // Formerly headline4
          titleMedium: TextStyle(color: Colors.white), // Formerly headline5
          titleSmall: TextStyle(color: Colors.white), // Formerly headline6
          labelLarge: TextStyle(color: Colors.white), // Formerly subtitle1
          labelSmall: TextStyle(color: Colors.white), // Formerly subtitle2
        ),
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homescreen(),
    );
  }
}
