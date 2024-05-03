import 'package:flutter/material.dart';
import 'package:simplemenuapp/submenu.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic> menuData;

  HomePage({required this.menuData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          elevation: 0,
          title: const Text(
            'Menus',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xfff8f8fe),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 10),
            children: menuData.keys.map((menuKey) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: const Color(0xff2885f6),
                  title: Text(
                    menuKey,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfff8f8fe),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubMenuPage(),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
