import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final double originalPrice;
  final double rating;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.originalPrice,
    this.rating = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = constraints.maxWidth;
        // Define text sizes based on card width
        final titleFontSize = cardWidth < 150 ? 10.0 : cardWidth < 200 ? 12.0 : cardWidth < 250 ? 14.0 : 16.0;
        final priceFontSize = cardWidth < 150 ? 10.0 : cardWidth < 200 ? 12.0 : cardWidth < 250 ? 14.0 : 16.0;
        final originalPriceFontSize = cardWidth < 150 ? 8.0 : cardWidth < 200 ? 10.0 : cardWidth < 250 ? 12.0 : 14.0;
        final isSmallScreen = cardWidth < 200;

        return Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image section
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.network(
                      imageUrl,
                      height: cardWidth * 0.6,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: cardWidth * 0.6,
                        color: Colors.grey[300],
                        child: const Icon(Icons.broken_image, size: 40),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: CircleAvatar(
                      radius: isSmallScreen ? 10 : 12,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border,
                        size: isSmallScreen ? 14 : 16,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: isSmallScreen ? 10 : 12,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.shopping_cart,
                        size: isSmallScreen ? 14 : 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),

              // Content section
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isSmallScreen ? 6 : 8,
                  vertical: isSmallScreen ? 4 : 6,
                ),
                child: Column(
                  children: [
                    // Title
                    SizedBox(
                      height: isSmallScreen ? 32 : 36,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: titleFontSize,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // Rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        return Icon(
                          index < rating ? Icons.star : Icons.star_border,
                          size: isSmallScreen ? 12 : 14,
                          color: Colors.amber,
                        );
                      }),
                    ),

                    // Price row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            price >= 1000000
                                ? '\$${price.toString()}'
                                : '\$${price.toString()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: priceFontSize,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            originalPrice >= 1000000
                                ? '\$${originalPrice.toString()}'
                                : '\$${originalPrice.toString()}',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                              fontSize: originalPriceFontSize,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}