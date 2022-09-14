import 'package:fetch_api_data/apimodule/api_service.dart';
import 'package:fetch_api_data/productmodule/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;
  var productList1 = <ProductModel>[].obs;
  // var productList2 = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    fetchProductsDanaKonven();
    // fetchProductsKredit();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchProductsDanaKonven() async {
    try {
      isLoading(true);
      var products1 = await ApiService.fetchProductsDanaKonven();
      if (products1 != null) {
        productList1.assignAll(products1);
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchProductsKredit() async {
    try {
      isLoading(true);
      var products2 = await ApiService.fetchProductsKredit();
      if (products2 != null) {
        productList1.assignAll(products2);
      }
    } finally {
      isLoading(false);
    }
  }
}
