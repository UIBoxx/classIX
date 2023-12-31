import 'package:class_ix/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final lightTheme = ThemeData(
  primaryColor: Colors.purple,
  brightness: Brightness.light,
  primarySwatch: Colors.purple,
);


final darkTheme = ThemeData(
  primaryColor: Colors.purple[800],
  brightness: Brightness.dark,
  primarySwatch: Colors.purple,
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void onToggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Class-9 Offline Notes',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(
        onToggleDarkMode: onToggleDarkMode,
      ),
    );
  }
}




