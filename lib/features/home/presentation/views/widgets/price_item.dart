import 'package:flutter/material.dart';
import 'package:shoes_shop/constant.dart';

class PriceItem extends StatelessWidget {
  const PriceItem({
    super.key,
    required this.price,
  });
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'EGP $price',
          style: const TextStyle(
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        const Text(
          '0,000 EGP',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Color.fromARGB(255, 138, 197, 249),
          ),
        ),
      ],
    );
  }
}
