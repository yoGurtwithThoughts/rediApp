import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String hintText;

  final TextInputType inputType;
  const TextWidget({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    required TextEditingController controller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 432,
      height: 52,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1.0,
            blurRadius: 5.0,
            offset: const Offset(
              0.0,
              4.0,
            ), // Shadow position
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintText: hintText,
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Color.fromRGBO(207, 207, 207, 1)),
        ),
      ),
    );
  }
}
