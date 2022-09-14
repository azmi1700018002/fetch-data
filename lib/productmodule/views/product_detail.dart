import 'package:fetch_api_data/productmodule/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductDetailListView extends GetView<ProductController> {
  // final ProductController productController = Get.put(ProductController());
  final productController = Get.put(ProductController());
  final controller = Get.find();
  final ProductModel product;
  ProductDetailListView({this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(product.kontenMenu),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              // Text('Border'),

              // ignore: unnecessary_null_comparison

              if (productController.productList != null)
                Expanded(
                  child: ListView.builder(
                    itemCount: productController.productList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {},
                          child: Card(
                              // color: Color.fromARGB(255, 203, 199, 199),
                              elevation: 5,
                              margin: const EdgeInsets.all(10),
                              child: ListTile(
                                title: Text(
                                  productController
                                      .productList1[index].kontenMenu,
                                ),
                              )));
                    },
                  ),
                ),
            ],
          ),
        ));
  }
}
