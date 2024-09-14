import 'package:flutter/material.dart';
import 'package:shoes_shop/constant.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Review ($rating)',
          style: const TextStyle(color: kTextColor, fontSize: 12),
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
      ],
    );
  }
}
