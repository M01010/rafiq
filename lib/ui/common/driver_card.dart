import 'package:flutter/material.dart';
import 'package:rafiq/ui/common/app_colors.dart';
import 'package:rafiq/ui/common/ui_helpers.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: halfScreenWidth(context),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: kcButtonColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.25),
                blurRadius: 7,
                offset: const Offset(0, 2),
                spreadRadius: 3)
          ]),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: const Icon(Icons.person),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('اسم السائق'),
        ],
      ),
    );
  }
}
