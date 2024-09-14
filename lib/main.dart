import 'package:flutter/material.dart';
import 'package:shoes_shop/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const ShoesApp());
}

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
