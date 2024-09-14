import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop/constant.dart';
import 'package:shoes_shop/features/home/data/models/product_model/product_model.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/product_details.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            border: Border.all(color: kPrimaryColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Center(
                    child: CachedNetworkImage(
                      imageUrl: product.image!,
                      height: 120,
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                    elevation: 4,
                    shape: const CircleBorder(),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/love.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ProductDetails(product: product),
          ],
        ),
      ),
    );
  }
}
