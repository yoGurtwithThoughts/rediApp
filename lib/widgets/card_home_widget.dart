import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardHomeWidget extends StatelessWidget {
  IconData icon;
  String h3;
  String text;
  Color peremTextColor;
  Color peremBackColor;
  CardHomeWidget({
    super.key,
    required this.icon,
    required this.h3,
    required this.text,
    required this.peremTextColor,
    required this.peremBackColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(8),
      width: 159,
      height: 159,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: peremBackColor,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: peremTextColor,
              size: 56,
            ),
            const SizedBox(height: 6),
            Text(
              h3,
              style: TextStyle(
                color: peremTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              text,
              style: TextStyle(
                fontSize: 8,
                color: peremTextColor == Colors.white
                    ? Colors.white
                    : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
