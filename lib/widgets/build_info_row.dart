import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildInfoRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 13.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(fontSize: 16),

        ),
        Text(
          value,
          style:GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}