import 'package:coffee_app/Reuse/Textfile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AppButton extends StatelessWidget {
   final backgroundColor;
   final BorderColor;
   final double Size;
   final Color, TextColor;
   String? text;
   IconData? icon;
   bool? isIcon;
   AppButton({ 
       this.TextColor,
       this.isIcon = false,
       required this.backgroundColor,
        required this.BorderColor,
        required this.Size,
        required this.Color,
       this.text='HI',
         this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Size,
      height: Size,
      decoration: BoxDecoration(
        border: Border.all(
          color: BorderColor,
          width: 1.0.w
        ),
      borderRadius: BorderRadius.circular(25),
      color: backgroundColor
      ),
      child: isIcon==false?Center(
        child: TextFile(
        text: text!, 
        textsize: 12.5.sp, 
        textweight: FontWeight.normal, 
        Color: TextColor,
        ),
      ):Icon(icon,color: Color,),
    );
  }
}