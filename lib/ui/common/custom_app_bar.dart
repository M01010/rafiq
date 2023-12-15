import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset('assets/logo.svg', height: 30),
      centerTitle: true,
      elevation: 20,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
