import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:simplemenuapp/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        menuData: jsonDecode(menuJson),
      ),
    );
  }
}

const String menuJson = '''
{
  "Menu1": {
    "submenu1": {
      "innersub1": {
        "Title": "inner title",
        "body": "inner page description"
      },
      "innersub2": {
        "Title": "inner title 2",
        "body": "inner page 2 description"
      }
    },
    "submenu2": {
      "innersub": {
        "Title": "inner title",
        "body": "inner page description"
      }
    }
  },
  "Menu2": {
    "submenu1": {
      "Title": "inner title",
      "body": "inner page description"
    }
  },
  "Menu3": {
 "submenu1": {
 "Title": "inner title",
 "body": "inner page description"
 }
 },
 "Menu4": {
 "submenu1": {
 "Title": "inner title",
 "body": "inner page description"
 }
 },
 "Menu6": {
 "submenu1": {
 "Title": "inner title",
 "body": "inner page description"
 }
 },
 "Menu7": {
 "submenu1": {"Title": "inner title",
 "body": "inner page description"
 }
 },
 "Menu8": {
 "submenu1": {
 "Title": "inner title",
 "body": "inner page description"
 }
 }
}

''';
