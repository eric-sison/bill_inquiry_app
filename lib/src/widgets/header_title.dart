import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_theme.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image.asset(
        //   "lib/assets/water_bill.png",
        //   height: 60.0,
        //   width: 60.0,
        // ),
        const SizedBox(height: 8.0),
        Text(
          title,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
            fontSize: 37.0,
          ),
        ),
        const SizedBox(height: 12.0),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Text(
            subtitle,
            style: GoogleFonts.inter(
              color: kZinc500,
              fontSize: 17.0,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
