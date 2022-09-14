import 'package:fetch_api_data/commonmodule/AppColor.dart';
import 'package:fetch_api_data/commonmodule/AppString.dart';
import 'package:fetch_api_data/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'productmodule/views/product_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.PRODUK_KONVENSIONAL,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      smartManagement: SmartManagement.keepFactory,
      title: 'BPD DIY SMART',
    );
    // GetMaterialApp(
    //   title: AppString.fetchApiData,
    //   theme: ThemeData(
    //     primarySwatch: AppColor.purpleColor,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: ProductListView(),
    // );
  }
}
