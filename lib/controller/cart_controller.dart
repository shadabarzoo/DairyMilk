import 'package:demo/Model/product_model.dart';
import 'package:get/get.dart';
class CartController extends GetxController{
  var _products = {}.obs;
  void addProduct(Product product){
    if(_products.containsKey(product)){
      _products[product]+= 1;
    }
    else{
      _products[product]=1;
    }
    Get.snackbar("Product Added", "You have added the ${product.name} to cart",
    snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
    }

    void removeProduct(product){
    if(_products.containsKey(product) && _products[product]==1){
      _products.removeWhere((key, value) => key==product);
    }else{
      _products[product]-= 1;
    }
    }

    get products => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.price*product.value).toList();

  get total {
    if (_products.isEmpty) {
      return "0.00";
    } else {
      return _products.entries
          .map((product) {
        if (product.key.price == 0) {
          return 0.0;
        } else {
          return product.key.price * product.value;
        }
      })
          .toList()
          .reduce((value, element) => value + element)
          .toStringAsFixed(2);
    }
  }

}