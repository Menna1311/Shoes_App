import 'package:flutter/material.dart';
import 'package:shoes_shop/constant.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Review (4.6)',
          style: TextStyle(color: kTextColor, fontSize: 12),
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
      ],
    );
  }
}
