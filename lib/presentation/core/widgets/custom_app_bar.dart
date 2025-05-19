import 'package:flutter/material.dart';
import 'package:nop_cart/presentation/core/widgets/circle_button.dart';
import '../constraints/app_constraints.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConstraints.appBarBackground,
        boxShadow: [
          BoxShadow(
            color: AppConstraints.appBarShadow,
            offset: Offset(0, 2),
            blurRadius: 3,
          ),
        ],
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppConstraints.iconColor),
            onPressed: () {
            
            },
          ),
          centerTitle: true,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleIconButton(icon: Icons.filter_alt_outlined),
                const SizedBox(width: 16),
                CircleIconButton(icon: Icons.menu),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
