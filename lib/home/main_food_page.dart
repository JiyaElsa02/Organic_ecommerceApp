import 'package:flutter/material.dart';
import 'package:organic_ecommerce_app/home/food_page_body.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoodPageBody(),
    );
  }
}
