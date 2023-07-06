import 'package:sizer/sizer.dart';
import 'package:coffee_app/OrderPage.dart';
import 'package:coffee_app/Category.dart';
import 'package:coffee_app/Coffee_detail.dart';
import 'package:coffee_app/Controller/ProductController.dart';
import 'package:coffee_app/Reuse/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  ProductController productController = Get.put(ProductController());
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
 
  ProductController  productController = Get.put(ProductController());
  @override

  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(
      length: 5, vsync: this);
    return Scaffold(
          appBar: AppBar(
          actions: [Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.person),
          )],
          leading: Icon(Icons.menu),
          backgroundColor: Color(0xFFF2E2E2E),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15,right: 15,top:15),
              child: Text("LIFE IS BETTER WITH COFFEE",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.bold
                ),
              ),
              ),
            ),
            Searchbar(),
                 
           Padding(
             padding: const EdgeInsets.only(left:15),
             child: Container(
              height: 5.h,
             
              
              child: TabBar(
                isScrollable: true,
               controller: _tabcontroller,
               labelColor: Colors.white,
               unselectedLabelColor: Colors.white,
               indicator: BoxDecoration(
               borderRadius: BorderRadius.circular(50),
                color: Colors.amber.shade800
               ),
               
              
                tabs: [
              Category(
               Coffeetype: 'Cappucino',
               
              ),
              Category(
               Coffeetype: 'Americano',
               
              ),
              Category(
               Coffeetype: 'Expresso',
               
              ),
               Category(
               Coffeetype: 'Iced Coffee',
               
              ),
               Category(
               Coffeetype: 'Latte',
               
              ),
              
              
                ],),
             ),
           ),
           SizedBox(
            height: 2.h,
           ), 
           Container(
            height: 40.5.h,
             child: TabBarView(
               
             controller: _tabcontroller,
             children: [
               GetBuilder<ProductController>(builder: (controller){
                 return ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: productController.products.length,
               itemBuilder: (_, i){
               var currentProduct = productController.products[i]; 
                 return GestureDetector(
                   onTap: (){
                   Get.to(CardPage(product: currentProduct,));
                  },
                 
                 child: CoffeeDetails(
                
                   image: currentProduct.Imag, 
                   title: currentProduct.Title ,
                   detail: currentProduct.Details, 
                   price: '${currentProduct.Price}', 
                  
                   
                   
                 
                 ));
               }
               
               );
               }),
               GetBuilder<ProductController>(builder: (controller){
                 return ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: productController.products.length,
               itemBuilder: (_, i){
               var currentProduct = productController.products[i]; 
                 return GestureDetector(
                   onTap: (){
                   Get.to(CardPage(product: currentProduct,));
                  },
                 
                 child: CoffeeDetails(
                
                   image: currentProduct.Imag, 
                   title: currentProduct.Title ,
                   detail: currentProduct.Details, 
                   price: '${currentProduct.Price}', 
                  
                   
                   
                 
                 ));
               }
               
               );
               }),
               GetBuilder<ProductController>(builder: (controller){
                 return ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: productController.products.length,
               itemBuilder: (_, i){
               var currentProduct = productController.products[i]; 
                 return GestureDetector(
                   onTap: (){
                   Get.to(CardPage(product: currentProduct,));
                  },
                 
                 child: Hero(
                  tag: currentProduct,
                   child: CoffeeDetails(
                                 
                     image: currentProduct.Imag, 
                     title: currentProduct.Title ,
                     detail: currentProduct.Details, 
                     price: '${currentProduct.Price}', 
                    
                     
                     
                   
                   ),
                 ));
               }
               
               );
               }),
               GetBuilder<ProductController>(builder: (controller){
                 return ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: productController.products.length,
               itemBuilder: (_, i){
               var currentProduct = productController.products[i]; 
                 return GestureDetector(
                   onTap: (){
                   Get.to(CardPage(product: currentProduct,));
                  },
                 
                 child: CoffeeDetails(
                
                   image: currentProduct.Imag, 
                   title: currentProduct.Title ,
                   detail: currentProduct.Details, 
                   price: '${currentProduct.Price}', 
                  
                   
                   
                 
                 ));
               }
               
               );
               }),
               GetBuilder<ProductController>(builder: (controller){
                 return ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: productController.products.length,
               itemBuilder: (_, i){
               var currentProduct = productController.products[i]; 
                 return GestureDetector(
                   onTap: (){
                   Get.to(CardPage(product: currentProduct,));
                  },
                 
                 child: CoffeeDetails(
                
                   image: currentProduct.Imag, 
                   title: currentProduct.Title ,
                   detail: currentProduct.Details, 
                   price: '${currentProduct.Price}', 
                  
                   
                   
                 
                 ));
               }
               
               );
               }),
               
               
                
              
             
             ]),
           ),
     
           
           
          ],
        ),
      ),
    );

  }
}