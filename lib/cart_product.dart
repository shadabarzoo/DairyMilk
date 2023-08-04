import 'package:demo/Model/product_model.dart';
import 'package:demo/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartProducts extends StatelessWidget {
   CartProducts({Key? key}) : super(key: key);
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> SizedBox(height: 600,
      child: ListView.builder(
        itemCount: controller.products.length,
          itemBuilder: (BuildContext context,int index){
          return CartProductCard(
            controller: controller,
            product: controller.products.keys.toList()[index],
            quantity: controller.products.values.toList()[index],
            index: index,
          );
          }
      ),),
    );
  }
}

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    Key? key,
  required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric( vertical: 10 ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Product.products[index].image,
              width: 200,
            ),
            Expanded(child: Text(product.name,
              style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200),
          child: Row(
            children: [
              IconButton(onPressed: (){
                controller.removeProduct(product);
              }, icon: Icon(Icons.remove_circle),color: Colors.white,),
              Text("${quantity}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),),
              IconButton(onPressed: (){
                controller.addProduct(product);
              }, icon: Icon(Icons.add_circle),color: Colors.white,),
            ],
          ),
        )
      ],
    ),
    );
  }
}

