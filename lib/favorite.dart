import 'package:get/get.dart';

class Favorite extends GetxController{
  var fav = 0.obs;

  void favCounter(){
    if(fav.value==1){
      Get.snackbar("Liked it", "You Already Liked it");
    }else{
      fav.value++;
      Get.snackbar("Liked it", "You Just Liked it");
    }
  }
}