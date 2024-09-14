import 'package:flutter/material.dart';
import 'package:shoes_shop/constant.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/product_details.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

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
                  child: Image.asset(
                    'assets/images/test.jpg',
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/love.png',
                          height: 24,
                          width: 24,
                        )),
                  ),
                ),
              ],
            ),
            const ProductDetails(),
          ],
        ),
      ),
    );
  }
}
