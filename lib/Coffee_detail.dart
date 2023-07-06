
import 'package:sizer/sizer.dart';

import 'package:coffee_app/Reuse/Text.dart';

import 'package:flutter/material.dart';


class CoffeeDetails extends StatelessWidget {
    String image,title,detail,price;

    
   
   CoffeeDetails({
    required this.price,
    required this.image,
    required this.title,
    required this.detail,

   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10,right: 10),
      child: Container(
        padding: EdgeInsets.all(10),
          width: 55.w,
        
          
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black54,
          ),

           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Container(
                   height: 22.h,
                   width: 50.w,
                  
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                      ),
                    
                   ),
                   
                   
                ),
             
             SizedBox(
              height: 1.5.h,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Textfile(
                text: title, 
                Color: Colors.white, 
                size: 14.sp, 
                weight: FontWeight.normal,
                
               ),
             ),
             SizedBox(
              height: 1.2.h,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Textfile(
                text: detail, 
                Color: Colors.grey.shade500, 
                size: 12.sp, 
                weight: FontWeight.w200,
                
               ),
             ),
             SizedBox(
              height: 1.2.h,
              
             ),
             Padding(
               padding: const EdgeInsets.only(left:110,),
               child: SizedBox(
                height:  4.h,
                width: 20.w,
                 child: ElevatedButton(onPressed: (){}, 
                 style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                primary: Colors.amber.shade800 
                 ),
                
                 child: Row(
                  children: [
                Textfile(
                text: '\$', 
                Color: Colors.white, 
                size: 14.sp, 
                weight: FontWeight.bold,
              
               ),
               SizedBox(
                width: 0.1.w,
               ),
               Textfile(
                text: price, 
                Color: Colors.white, 
                size: 14.sp, 
                weight: FontWeight.bold,
                
               ),],
                ),
                            ),
               ),
             ),
             ],
           ),

      ),
    );
  }
}