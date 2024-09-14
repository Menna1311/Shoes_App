import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes_shop/constant.dart';
import 'package:shoes_shop/features/home/data/models/product_model/product_model.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/price_item.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/review_item.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: kTextColor,
              fontSize: 14,
            ),
          ),
          Text(
            product.description!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          PriceItem(
            price: product.price!,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReviewItem(
                rating: product.rating!.rate!,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  FontAwesomeIcons.circlePlus,
                  size: 30,
                ),
                onPressed: () {},
                color: kPrimaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
