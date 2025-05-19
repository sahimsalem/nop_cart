import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/constraints/app_constraints.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;

  const CircleIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(icon, color: AppConstraints.iconColor),
    );
  }
}