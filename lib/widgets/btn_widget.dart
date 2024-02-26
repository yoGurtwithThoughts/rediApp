import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final buttonName;
  final buttonColor;
  final void Function()? onTap;

  const ButtonWidget({
    super.key,
    required this.buttonColor,
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 342,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: buttonColor,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              buttonName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ]),
        ));
  }
}
