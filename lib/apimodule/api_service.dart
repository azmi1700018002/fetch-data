import 'package:fetch_api_data/productmodule/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await client.get('http://192.168.100.179:8080/konven');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }

  static Future<List<ProductModel>> fetchProductsDanaKonven() async {
    var response = await client.get('http://192.168.100.179:8080/danakonven');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }

  static Future<List<ProductModel>> fetchProductsKredit() async {
    var response = await client.get('http://192.168.100.179:8080/kredit');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
