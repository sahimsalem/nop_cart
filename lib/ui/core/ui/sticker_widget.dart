import 'package:flutter/material.dart';
import 'package:nop_cart/ui/core/constraints/app_constraints.dart';

class StickerWidget extends StatelessWidget {
  final String imageUrl;
  final String label;

  const StickerWidget({super.key, required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
    
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 35, backgroundImage: NetworkImage(imageUrl)),
          SizedBox(width: 4),
          Text(
            label,
            style:  TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: AppConstraints.textColor),
            textAlign: TextAlign.left,
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }
}
