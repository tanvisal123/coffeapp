
import 'package:coffee_app/Model/ProductModel.dart';
import 'package:coffee_app/Reuse/Textfile.dart';
import 'package:coffee_app/Controller/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class counter extends StatelessWidget {
   counter({Key? key,
   required this.product
   }) : super(key: key);
  
  final ProductModel product;
  final int itemCount = 1;
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          color: Colors.white,
          press: (){
            cartController.RemoveItem();
          }
        ),
        Obx(()=>Padding(
          padding: const EdgeInsets.all(15),
          child: (
             TextFile(text: cartController.numOfItems.toString().padLeft(2,"0"), 
            textsize: 13.sp, textweight: FontWeight.normal, 
            Color: Colors.white)
          ),
        )),

        buildOutlineButton(
          icon: Icons.add,
          
          color: Colors.white,
          
          press: (){
            cartController.AddItem();
          }
        )
      ],
    );
  }
 Widget buildOutlineButton({
    required IconData icon, required Function press, required color
 })
 {
  return SizedBox(
    width: 15.w,
    height: 10.w,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
      padding: EdgeInsets.zero,
      backgroundColor: Colors.amber.shade700,
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
    ),
    onPressed: (){
      press();
    },
    child: Icon(icon,
    color: Colors.white,
    ),
    ),
  );
 }
}
