import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplemenuapp/submenudetails.dart';

class SubMenuPage extends StatelessWidget {
  final String title;
  final Map<String, dynamic> subMenuData;

  const SubMenuPage(
      {super.key, required this.title, required this.subMenuData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xfff8f8fe),
        ),
        backgroundColor: const Color(0xff000000),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xfff8f8fe),
          ),
        ),
      ),
      body: ListView(
        children: subMenuData.entries.map<Widget>((subMenuEntry) {
          if (subMenuEntry.value is Map<String, dynamic> &&
              subMenuEntry.value.keys
                  .any((key) => key.toString().contains('innersub'))) {
            // Handle submenu with innersub
            final innersubEntries = subMenuEntry.value.entries
                .where((entry) => entry.key.toString().contains('innersub'))
                .toList();
            return ExpansionTile(
              backgroundColor: const Color(0xff2885f6),
              title: Text(
                subMenuEntry.key,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xfff8f8fe),
                ),
              ),
              children: innersubEntries.map<Widget>((innerEntry) {
                return ListTile(
                  tileColor: const Color(0xff2885f6),
                  title: Text(
                    innerEntry.key,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xfff8f8fe),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubMenuDetailPage(
                          title: innerEntry.value['Title'] ?? '',
                          body: innerEntry.value['body'] ?? '',
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            );
          } else {
            // Handle submenu without innersub
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: const Color(0xff2885f6),
                title: Text(
                  subMenuEntry.key,
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
                      builder: (context) => SubMenuDetailPage(
                        title: subMenuEntry.value['Title'] ?? '',
                        body: subMenuEntry.value['body'] ?? '',
                      ),
                    ),
                  );
                },
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
