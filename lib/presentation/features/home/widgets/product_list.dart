import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';
import 'package:nop_cart/presentation/core/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
   
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth < 400
        ? 2
        : screenWidth < 600
            ? 3
            : screenWidth < 900
                ? 4
                : 5;

    return GridView.builder(
      
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        
        maxCrossAxisExtent: 250, // Maximum width per card
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.75, // Adjusted for better content fit
      ),
      itemCount: AppConstraints.productData.length,
      itemBuilder: (context, index) {
        final data =  AppConstraints.productData[index];
        return ProductCard(
          imageUrl: data['imageUrl']! as String,
          title: data['title']! as String,
          price: data['price']! as double,
          originalPrice: data['originalPrice']! as double,
          rating: data['rating']! as double,
        );
      },
    );
  }
}