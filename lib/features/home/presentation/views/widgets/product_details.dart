import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes_shop/constant.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/price_item.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/review_item.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nike Air Jordan',
            style: TextStyle(
              color: kTextColor,
              fontSize: 14,
            ),
          ),
          const Text(
            'Nike shoes flexible for women',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kTextColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const PriceItem(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ReviewItem(),
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
