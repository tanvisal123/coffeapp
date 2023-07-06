import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final String Coffeetype;


   Category({ 
    required this.Coffeetype, 
   
    
  });

  @override
  Widget build(BuildContext context) {
    return Text(Coffeetype,
    style: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 16,
       
      ),
    ),
    
    
      
    );
  }
}
