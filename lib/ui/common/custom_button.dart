import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.child,
  });

  final void Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: MaterialButton(
        padding: const EdgeInsets.all(10),
        color: Theme.of(context).colorScheme.primary,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
