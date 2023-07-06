import 'package:flutter/material.dart';

class Textfile extends StatelessWidget {
    String text;
    double size;
    final Color,weight;

   Textfile({ 
     required this.size,
     required this.text,
     required this.Color,
     required this.weight,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
       text,
       style: TextStyle(
         fontSize: size,
         color: Color,
         fontWeight: weight
       ),
      
    );
  }
}