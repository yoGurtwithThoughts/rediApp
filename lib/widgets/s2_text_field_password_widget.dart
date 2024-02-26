import 'package:flutter/material.dart';

class S2TextFieldPasswordWidget extends StatefulWidget {
  final String textTitle;
  final String hintText;
  final Color textTitleColor;
  final double textSize;
  final TextInputType inputType;
  final TextEditingController controller;

  const S2TextFieldPasswordWidget({
    super.key,
    required this.controller,
    required this.textTitle,
    required this.hintText,
    required this.textTitleColor,
    required this.textSize,
    this.inputType = TextInputType.text,
  });

  @override
  State<S2TextFieldPasswordWidget> createState() =>
      _S2TextFieldPasswordWidgetState();
}

var isObsText = true;

class _S2TextFieldPasswordWidgetState extends State<S2TextFieldPasswordWidget> {
//TEXT WIDGET
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.textTitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              controller: widget.controller,
              style: const TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(58, 58, 58, 1),
              ),
              cursorColor: const Color.fromRGBO(167, 167, 167, 1),
              obscureText: isObsText,
              keyboardType: widget.inputType,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                suffixIcon: InkWell(
                  onTap: () {
                    isObsText = !isObsText;
                    setState(() {});
                  },
                  child: Icon(
                    isObsText ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: InputBorder.none,
                fillColor: Colors.transparent,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(167, 167, 167, 1), width: 1),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    width: 1,
                  ),
                ),
                hintStyle: const TextStyle(color: Colors.transparent),
                hintText: widget.hintText,
                labelText: widget.hintText,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(207, 207, 207, 1),
                  fontWeight: FontWeight.w500,
                ),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
