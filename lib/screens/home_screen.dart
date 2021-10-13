import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:design/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'العروض المقدمة',
        style: GoogleFonts.getFont('Almarai'),
      ),
      centerTitle: true,
      leading:
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),

    );
  }
}
