import 'package:dartz/dartz.dart';
import 'package:shoes_shop/core/error/failure.dart';
import 'package:shoes_shop/features/home/data/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> fetchProducts();
}
