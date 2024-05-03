import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubMenuDetailPage extends StatelessWidget {
  final String title;
  final String body;

  const SubMenuDetailPage({super.key, required this.title, required this.body});

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
          'Detail',
          style: GoogleFonts.poppins(
              color: const Color(0xfff8f8fe),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: $title',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color(0xfff8f8fe),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Body: $body',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xfff8f8fe),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
