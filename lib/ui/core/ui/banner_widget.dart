import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String imageUrl;

  const BannerWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.39, // Calculated aspect ratio
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/banner.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
      ),
    );
  }
}