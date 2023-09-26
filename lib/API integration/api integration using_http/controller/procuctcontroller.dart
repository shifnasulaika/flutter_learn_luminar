import 'package:get/get.dart';
import 'package:ngnfnf/API%20integration/api%20integration%20using_http/service/api_service.dart';
import 'package:ngnfnf/passing%20data%20between%20screance/dummy%20data.dart';

class ProductController extends GetxController{
  var isLoading=true.obs;
  var productList=[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    getProducts();
    super.onInit();
  }
  void getProducts() async{
    try{
      isLoading(true);
      var products=await HttpService.fetchProduct(); 
      if(product !=null){
        product
      }
    }
  }
}