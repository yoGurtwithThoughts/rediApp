import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final isBack;
  final text;
  const AppBarWidget({
    super.key,
    required this.text,
    required this.isBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isBack
            ? InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset('assets/images/s5_icon_arrow-left.png'),
              )
            : SizedBox(width: 24),
        Text(
          text,
          style: TextStyle(
            color: Color(0xffA7A7A7),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
