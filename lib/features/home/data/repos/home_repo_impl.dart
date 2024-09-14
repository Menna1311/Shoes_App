import 'package:dartz/dartz.dart';
import 'package:shoes_shop/core/error/failure.dart';
import 'package:shoes_shop/core/utils/api_service.dart';
import 'package:shoes_shop/features/home/data/models/product_model/product_model.dart';
import 'package:shoes_shop/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      var data = await apiService.get(endpoint: 'products');
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(
            item)); // Assuming ProductModel has a fromJson method
      }
      return right(products);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
