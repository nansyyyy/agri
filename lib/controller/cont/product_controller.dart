

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final productlist = [].obs;

  void getProduct() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection("store").get();
      
      
      productlist.addAll(querySnapshot.docs);
    } catch (e) {
      print("Error getting products: $e");
    }
  }
    
  @override
  void onInit() {
    getProduct();
    super.onInit();
  }
}
