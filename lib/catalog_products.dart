import 'package:demo/Model/product_model.dart';
import 'package:demo/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
      itemCount: Product.products.length,
        itemBuilder: (BuildContext context,int index){
          return CatalogProductCard(index: index);
        }));
  }
}

class CatalogProductCard extends StatelessWidget {
  CatalogProductCard({
      Key? key,
      required this.index,
      }): super(key: key);
  final cartController = Get.put(CartController());
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
        child: Container(
          width: 280,
          height: 270,
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Image.asset(
                Product.products[index].image,
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  Product.products[index].name,textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Center(
                    child: Text(
                      'RS ${Product.products[index].price}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 100,),
                  ElevatedButton(onPressed: (){cartController.addProduct(Product.products[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Items Added to Cart!')));
                    },style: ElevatedButton.styleFrom(
                    primary: Colors.purple[900], // Background color
                  ),
                    child: Center(child: Text('Add to Cart')),),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}

