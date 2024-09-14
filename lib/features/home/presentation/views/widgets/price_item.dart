import 'package:flutter/material.dart';
import 'package:shoes_shop/constant.dart';

class PriceItem extends StatelessWidget {
  const PriceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'EGP 1,200',
          style: TextStyle(
            color: kTextColor,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Text(
          '2,000 EGP',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Color.fromARGB(255, 138, 197, 249),
          ),
        ),
      ],
    );
  }
}
