import 'package:fetch_api_data/productmodule/binding/product_binding.dart';
import 'package:get/get.dart';

import '../productmodule/views/product_detail.dart';
import '../productmodule/views/product_list_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.PRODUK_KONVENSIONAL;

  static final routes = [
    GetPage(
      name: Routes.PRODUK_KONVENSIONAL,
      page: () => ProductListView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.PRODUK_KONVENSIONAL_DETAILS,
      page: () => ProductDetailListView(),
      binding: ProductBinding(),
    ),
  ];
}
