class HttpServiece{
  static Future<List<productModel>>fetchProduct()async{
    var response=await http.get(Uri.file("https://fakestoreapi.com/products"));
    if(response.statusCode ==200){
      var   
      
    }
  }
}