import 'package:coffee_app/Model/CardListModel.dart';
import 'package:coffee_app/Model/ProductModel.dart';
import 'package:get/get.dart';


class CartController extends GetxController{
  var totalQuantity = 0.obs;
  var numOfItems = 1.obs;
  var cardItems = <CardItemListModel>[].obs;
  var total = 0.obs;

  void RemoveItem()
  {
  if(numOfItems.value > 1 ){
    numOfItems.value--;
  }
  
  }
  
  void AddItemInCard(ProductModel product){
    final i = cardItems.indexWhere((element) => element.product == product);
    if(i>=0)
    {
     cardItems[i] = CardItemListModel(
     product: product,
     quantity: (numOfItems.value + cardItems[i].quantity));
    }
    else
    {
     cardItems.add(CardItemListModel(quantity: numOfItems.value, product: product));
    }
    totalQuantity.value = totalQuantity.value+ numOfItems.value;
    //numOfItems.value = 1;

 
    total.value = total.value+((product.Price as int ) * numOfItems.value);
   
   

  }


  void AddItemInCard1(ProductModel product){
    final i = cardItems.indexWhere((element) => element.product == product);
    if(i>=0)
    {
      cardItems[i] = CardItemListModel(
          product: product,
          quantity: (1 + cardItems[i].quantity));
    }
    else
    {
      cardItems.add(CardItemListModel(quantity: numOfItems.value, product: product));
    }
    totalQuantity.value = totalQuantity.value+1;
    //numOfItems.value = 1;


    total.value = total.value+((product.Price as int ) * 1);



  }

  void RemoveItemCart(ProductModel product){
    final i = cardItems.indexWhere((element) => element.product == product);
    if(i>=0)
    {
     // cardItems.remove(CardItemListModel(quantity: numOfItems.value, product: product));

      cardItems[i] = CardItemListModel(
          product: product,
          quantity: (cardItems[i].quantity -1 ));


    }if(cardItems[i].quantity>0){

    }else{
      cardItems.removeWhere((element) => element.product==product);
    }
    // else
    // {
    //   cardItems.remove(CardItemListModel(quantity: numOfItems.value, product: product));
    // }


    totalQuantity.value = totalQuantity.value- 1;
    //numOfItems.value = 1;


    total.value = total.value-((product.Price as int ) * 1);

  }

   
void quantity(){
  numOfItems.value = 1;
}

  void AddItem() {

numOfItems.value++;
  }   
 
  
  
}
