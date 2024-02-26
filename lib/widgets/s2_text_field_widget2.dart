import 'package:flutter/material.dart';

class S2TextFieldWidget2 extends StatelessWidget {
  final String textTitle;
  final String hintText;
  final bool isObsText;
  final Color textTitleColor;
  final double textSize;
  final TextInputType inputType;
  final TextEditingController controller;
  final formater;

  const S2TextFieldWidget2({
    super.key,
    required this.controller,
    required this.textTitle,
    required this.hintText,
    required this.textTitleColor,
    required this.textSize,
    this.isObsText = false,
    this.inputType = TextInputType.text,
    this.formater = null,
  });

//TEXT WIDGET
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              SizedBox(
                width: 342,
                child: Text(
                  textTitle,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          autocorrect: false,
          controller: controller,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(58, 58, 58, 1),
          ),
          cursorColor: const Color.fromRGBO(167, 167, 167, 1),
          obscureText: isObsText,
          keyboardType: inputType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none,
            fillColor: Colors.transparent,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              borderSide:
                  BorderSide(color: Color.fromRGBO(167, 167, 167, 1), width: 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(
                color: Color.fromRGBO(167, 167, 167, 1),
                width: 1,
              ),
            ),
            hintStyle: const TextStyle(color: Colors.transparent),
            hintText: hintText,
            labelText: hintText,
            labelStyle: const TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(207, 207, 207, 1),
                fontWeight: FontWeight.w500),
            filled: true,
          ),
        ),
      ],
    );
  }
}
