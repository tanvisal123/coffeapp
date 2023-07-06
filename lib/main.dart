import 'package:coffee_app/Controller/ProductController.dart';
import 'package:coffee_app/BottomNavigationBar.dart';
import 'package:coffee_app/Controller/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  CartController cartController = Get.put(CartController());
   ProductController productController = Get.put(ProductController());
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType){
    return GetMaterialApp(
        theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light().copyWith(primary: Colors.amber.shade700),
        ),
      
        
        debugShowCheckedModeBanner: false,
       
     
        initialRoute: "/",
       getPages:[
        GetPage(name: "/",page: ()=>Bar()),
        
       ]
        
      );
    }));
    
  }
}

