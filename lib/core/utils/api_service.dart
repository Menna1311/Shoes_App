import 'package:dio/dio.dart';
import 'package:shoes_shop/features/home/data/models/product_model/product_model.dart';

class ApiService {
  final String baseUrl = 'https://fakestoreapi.com/';
  final Dio dio;

  ApiService(this.dio);
  Future<List<ProductModel>> fetchProducts({required String endpoint}) async {
    var response = await dio.get('$baseUrl/$endpoint');
    return response.data;
  }
}
