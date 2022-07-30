import 'package:flutter/material.dart';

class QuickAccessItem extends StatelessWidget {
  final String quickAccessItemText;
  final IconData quickAccessItemIcon;

  const QuickAccessItem({
    Key? key,
    required this.quickAccessItemText,
    required this.quickAccessItemIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //icon button
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.grey.shade300,
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          child: Icon(quickAccessItemIcon),
        ),
        //text button
        Text(
          quickAccessItemText,
          style: const TextStyle(
            letterSpacing: 0.8,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
