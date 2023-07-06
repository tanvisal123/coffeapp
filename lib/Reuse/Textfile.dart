import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextFile extends StatelessWidget {
   final String text;
   final double textsize;
   final textweight;
   final Color;
   TextFile({ 
      required this.text,
      required this.textsize,
      required this.textweight,
      required this.Color,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child:  Text(text,
        style: GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: textsize,
          fontWeight: textweight,
          color: Color,
        ),  
        ),
        
        
        ),
        
    );
  }
}