import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplemenuapp/submenu.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic> menuData;

  const HomePage({super.key, required this.menuData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xfff8f8fe),
          ),
          backgroundColor: const Color(0xff000000),
          elevation: 0,
          title: Text(
            'Menus',
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color(0xfff8f8fe),
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
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xfff8f8fe),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubMenuPage(
                          title: menuKey,
                          subMenuData: menuData[menuKey],
                        ),
                      ),
                    );
                  },
                  trailing: const Icon(
                    Icons.menu_rounded,
                    color: Color(0xfff8f8fe),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
