import 'package:flutter/material.dart';

class StudentIcon extends StatelessWidget {
  const StudentIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        'assets/child.png',
      ),
    );
  }
}
