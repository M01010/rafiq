import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.actions});
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset('assets/logo.svg', height: 30),
      centerTitle: true,
      elevation: 20,
      shadowColor: Colors.black.withOpacity(.4),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
