import 'package:fetch_api_data/commonmodule/AppColor.dart';
import 'package:fetch_api_data/commonmodule/AppString.dart';
import 'package:fetch_api_data/productmodule/controllers/product_controller.dart';
import 'package:fetch_api_data/productmodule/views/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListView extends GetView<ProductController> {
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.productList),
        ),
        body: Container(
            child: Column(children: [
          Obx(() {
            if (productController.isLoading.value)
              return Center(child: CircularProgressIndicator());
            else
              return Expanded(
                  child: ListView.builder(
                      itemCount: productController.productList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  // How can I retrieve data by url based on index

                                  Get.to(
                                      () => ProductDetailListView(
                                          product: productController
                                              .productList[index]),
                                      transition: Transition.fadeIn,
                                      preventDuplicates: false);
                                },
                                child: Card(
                                    // color: Colors.blue[900],
                                    elevation: 5,
                                    margin: const EdgeInsets.all(10),
                                    child: ListTile(
                                        title: Text(
                                            productController
                                                .productList[index].kontenMenu,
                                            style: (TextStyle(
                                              fontSize: 20,
                                            ))))))
                          ],
                        );
                      }));
          })
        ])));
  }
}
