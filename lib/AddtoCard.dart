import 'package:coffee_app/Counter.dart';
import 'package:coffee_app/Model/ProductModel.dart';
import 'package:coffee_app/Reuse/Textfile.dart';
import 'package:coffee_app/Controller/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'Reuse/Appbutton.dart';


class CardList extends StatelessWidget {
  final ProductModel product;
   CardList({Key? key ,required this.product}) : super(key: key);
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        elevation: 0,
      leading: 
        InkWell(
        onTap: (){
          Get.back();
        },
        child: const Icon(Icons.keyboard_return_sharp))
      
      
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Obx(() {
                return ListView.builder(
                  itemCount: cartController.cardItems.length,
                  itemBuilder:  ((context, i) {
                    var currentItem = cartController.cardItems[i];
                    return ClipRect(
                      child: Padding(
                        padding: const EdgeInsets.only(top:5,bottom: 5),
                        child: Card(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 12.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(currentItem.product.Imag),
                                        fit: BoxFit.cover
                                    ),

                                  ),

                                ),
                              ),


                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  TextFile(
                                      text: currentItem.product.Title, textsize: 13.sp,
                                      textweight: FontWeight.bold, Color: Colors.white),
                                  SizedBox(
                                    height: 1.2.h,
                                  ),
                                  TextFile(
                                      text: "Quantity: ${currentItem.quantity}", textsize: 14.sp,
                                      textweight: FontWeight.normal, Color: Colors.white),
                                  SizedBox(
                                    height: 1.2.h,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                          onTap: (){
                                            cartController.RemoveItemCart(product);
                                          },
                                          child: const Icon(Icons.remove)),
                                      TextFile(
                                          text: '\$${currentItem.product.Price}', textsize: 14.sp,
                                          textweight: FontWeight.bold, Color: Colors.white),
                                      GestureDetector(
                                          onTap: (){
                                            cartController.AddItemInCard1(product);
                                          },
                                          child: const Icon(Icons.add)),
                                    ],
                                  ),


                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    );

                  }
                  ),

                );
              })
            ),
          ),
          Expanded(child: Obx(() {
            return Container(

              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                    colors: [Colors.white10,Colors.white10],
                  ),

                  boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 0.5,
                  )]
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:40,bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFile(text: "Item Total:",
                              textsize: 12.5.sp, textweight: FontWeight.normal, Color: Colors.white),
                          TextFile(text: "\$${cartController.total.value.toString()}",
                              textsize: 12.5.sp, textweight: FontWeight.normal, Color: Colors.white),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFile(text: "Delivery:",
                              textsize: 12.5.sp, textweight: FontWeight.normal, Color: Colors.white),
                          TextFile(text: "Free",
                              textsize: 12.5.sp, textweight: FontWeight.normal, Color: Colors.white),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFile(text: "Quantity",
                              textsize: 12.5.sp, textweight: FontWeight.normal, Color: Colors.white),
                          TextFile(text: "${cartController.totalQuantity.value.toString()}",
                              textsize: 12.5.sp, textweight: FontWeight.normal, Color: Colors.white),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 15),
                      child: Divider(
                        height: 2.h,
                        thickness: 0.5,
                        color: Colors.white30,
                      ),
                    ),
                    SizedBox(
                      height: 2.2.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFile(text: "Total",
                              textsize: 14.5.sp, textweight: FontWeight.bold,
                              Color: Colors.white),
                          TextFile(text: "\$${cartController.total.value.toString()}",
                              textsize: 14.5.sp, textweight: FontWeight.bold, Color: Colors.white),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    SizedBox(
                      height: 6.5.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){},
                        child: AppButton(backgroundColor: Colors.amber.shade700,
                          BorderColor: Colors.amber.shade700, Size: 100, Color: Colors.black,
                          text: "Payment",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          })
          ),
            
        ],
      ),
      
    );
  }
}