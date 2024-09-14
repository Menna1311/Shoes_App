import 'package:flutter/material.dart';
import 'package:shoes_shop/features/home/presentation/views/widgets/product_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 3.1 / 4,
      ),
      itemBuilder: (context, index) {
        return const ProductItem();
      },
    );
  }
}
