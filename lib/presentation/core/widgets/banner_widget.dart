import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String imageUrl;

  const BannerWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
  
    double bannerHeight;
    if (screenWidth < 600) {
      bannerHeight = 200; // Small devices
    } else if (screenWidth < 900) {
      bannerHeight = 300; // Medium devices
    } else if (screenWidth < 1200) {
      bannerHeight = 400; // Tablets
    } else {
      bannerHeight = 500; // Large screens
    }

    return Container(
      width: double.infinity,
      height: bannerHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
    );
  }
}