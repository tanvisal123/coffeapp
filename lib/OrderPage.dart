
import 'package:coffee_app/AddtoCard.dart';
import 'package:coffee_app/Counter.dart';
import 'package:coffee_app/Model/ProductModel.dart';
import 'package:coffee_app/Reuse/Textfile.dart';
import 'package:coffee_app/Controller/card_controller.dart';
import 'package:coffee_app/favorite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class CardPage extends StatelessWidget {
   CardPage({ Key? key,
   required this.product,
   }) : super(key: key);

  final ProductModel product;

  
  CartController cartController = Get.find();

  int RatingStar = 4;

  int selectedIndex = 1;

  

  @override
  Widget build(BuildContext context) {
    cartController.quantity();
   
    final Favorite fav = Get.put(Favorite());
     
    return Scaffold(
     
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(child: Hero(
              tag: product.id,
              child: Container(
                height: 62.h,
                width: double.maxFinite,
               decoration: BoxDecoration(
                 image: DecorationImage(
                image: AssetImage(
                  product.Imag
                          
                          ), 
                 fit: BoxFit.cover         
                ),
                 ), 
                ),
            )),
               
            
            Positioned(
              top: 4.h,
              child: Row(
               
              children: [
              IconButton(onPressed: (){}, 
              icon: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child:IconButton(
                icon: Icon(Icons.keyboard_return_sharp),
                onPressed: ()=>Get.back(),
                ), 
                
              ),
              color: Colors.white
              ),
                
              InkWell(
                onTap: (){
                  Get.to(() => CardList(
                    product: product,
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 290),
                  child:Badge(
                    //badgeColor: Colors.amber.shade700,
                    label:
                   Obx(()=>(
                         TextFile(text: cartController.totalQuantity.value.toString(), 
                        textsize: 12.sp, textweight: FontWeight.normal, 
                        Color: Colors.white)
                      )),
                    child: Icon(Icons.shopping_cart_outlined,
                    size: 3.5.h,
                    ),

                  ), 
                  
                ),
              ),
              
              
              ],
            )), 
           Positioned(
            top:  61.5.h,
          child: Container(
            height: 40.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            color: Color(0xFFF2E2E2E),
           
            ),
          child: Padding(
            padding: const EdgeInsets.only(left:20,right: 25,top:25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                TextFile(text: 'Description', 
                textsize: 15.sp, 
                textweight: FontWeight.normal, 
                Color: Colors.white),
                SizedBox(
                  height: 1.2.h,
                ),
                TextFile(text: product.Details, 
                textsize: 11.5.sp, 
                textweight: FontWeight.w100, 
                Color: Colors.grey.shade300),
               
              
                SizedBox(
                  height: 4.h,
                ),

              
              Row(
                children: [
                  counter(product: product)
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              TextFile(text: 'Price', textsize: 15.sp, 
                  textweight: FontWeight.normal, Color: Colors.white),
                  SizedBox(
                    height: 1.5.h,
                  ),
              Row(
                
                children: [
                  TextFile(text: '\$', textsize: 18.sp, 
                  textweight: FontWeight.normal, Color: Colors.amber.shade700),
                  TextFile(text: '${product.Price}', textsize: 18.sp, textweight: FontWeight.bold, Color: Colors.white)
                 ,
                 IconButton(onPressed: ()=>fav.favCounter(),
                 icon: Icon(Icons.favorite_border),),
                 SizedBox(
                  width: 13.w,
                 ),
                 InkWell(
                  onTap: (){
                   cartController.AddItemInCard(product);
                   Get.to(() => CardList(
                     product: product,
                   ));
                  },
                   child: Container(
                    height:  7.h,
                    width: 48.w,
                     decoration: BoxDecoration(
                      color: Colors.amber.shade700,
                      borderRadius:  BorderRadius.circular(25),
                 
                     ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30),
                        child: TextFile(text: 'Add to Card', 
                        textsize: 12.sp, textweight: FontWeight.normal, 
                        Color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:20),
                        child: Icon(Icons.shopping_cart_sharp),
                      ), 
                      ],
                    ),
                    
                   ),
                 ),

                 
                
                ],
              ),
              ],
            ),
          ),
          
          
          ),
        
          
          ),  
                Positioned(
                top: 46.1.h,
                
                
                 child: Container(
                         height: 15.3.h,
                         width: 100.w,
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)
                         ),
                          gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           
                           colors: [Colors.black12,Colors.black12],
                          ),
                          
                          boxShadow: [BoxShadow(
                           color: Colors.black.withOpacity(0.3),
                           blurRadius: 0.5.h,
                           spreadRadius: 0.5,
                          )]
                         ),
                        
child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10,left: 15,right: 25),
              child: Row(
                
                children: [
                  TextFile(
                  text: product.Title, textsize: 18.sp, 
                  textweight: FontWeight.bold, Color: Colors.white),
                  
               
               ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(left:15,top: 10),
            child: Row(
             children: [
              Icon(Icons.location_on_sharp),
              TextFile(
              text: "Karachi,", 
              textsize: 10.5.sp, 
              textweight: FontWeight.normal, 
              Color: Colors.white
              ),
              TextFile(
              text: " Pakistan", 
              textsize: 10.5.sp, 
              textweight: FontWeight.normal, 
              Color: Colors.white
              ),
             ], 
            ),
          ), 
          SizedBox(
            height: 1.2.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Row(
              children: [
                Wrap(
                  children: 
                    List.generate(5, (index) {
                     return Icon(Icons.star,
                     color: index<RatingStar? Colors.amber: Colors.white,
                     );
                     
                    }),
                  
                ),
                SizedBox(
                  width:1.5.w
                ),
               TextFile(
              text: "(4.0)", textsize: 11.sp, textweight: FontWeight.normal, 
              Color: Colors.white) 
              ],
            ),
          ), 
        
       
         
        
          ],),
                       ),
                       
               ),
          ],
          
        ),
      ),
    );
  }
}