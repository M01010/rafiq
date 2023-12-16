import 'package:flutter/material.dart';
import 'package:rafiq/ui/common/app_colors.dart';

class ChildCard extends StatefulWidget {
  const ChildCard({super.key});

  @override
  State<ChildCard> createState() => _ChildCardState();
}

class _ChildCardState extends State<ChildCard> {
  bool isVisiting = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
          color: kcButtonColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                spreadRadius: 3,
                blurRadius: 5,
                color: Colors.black.withOpacity(.3))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(
                width: 20,
              ),
              Text('اسم الطالب'),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.call),
                onPressed: () {},
              ),
              isVisiting ? const Text('حاضر') : const Text('متغيب'),
              IconButton(
                onPressed: () {
                  setState(() {
                    isVisiting = !isVisiting;
                  });
                },
                icon: isVisiting
                    ? const Icon(Icons.check)
                    : const Icon(Icons.close),
              ),
            ],
          )
        ],
      ),
    );
  }
}
