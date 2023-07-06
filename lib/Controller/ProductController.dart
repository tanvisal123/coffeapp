import 'dart:convert';

import 'package:coffee_app/Model/ProductModel.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  var products = <ProductModel>[].obs;
  var isDataLoadingCompleted = false.obs;
  

  @override
  void onInit(){
    super.onInit(); 
    fetchData();
  }
  void fetchData() async{
    var productjson = await rootBundle.loadString("lib/json/CoffeeList/Cappucino.json");
    var decodeData = jsonDecode(productjson);
    print (decodeData);
    products.value = List.from(decodeData).map((e) => ProductModel.fromMap(e)).toList();

    isDataLoadingCompleted.value = true; 

  void destory()
  {
    products.value= [];
  }  

 }
}