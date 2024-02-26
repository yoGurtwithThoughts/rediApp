import 'package:flutter/material.dart';

class SendPackageWidget extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  // final TextEditingController controllers;
  const SendPackageWidget({
    super.key,
    this.inputType = TextInputType.text,
    required TextEditingController controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.symmetric(vertical: 5) ,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0xffcfcfcf),
            blurRadius: 1,
            offset: const Offset(0,4), 
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          // filled: true,
          hintText: hintText,
          fillColor: Colors.white,
          hintStyle: const TextStyle(
            color: Color(0xffcfcfcf), 
            fontSize: 19),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 7.5, top: 5.5, right: 7.5),
      //   child: TextWidget(
      //     hintText: hintText, controller: controllers),
      // ),
    );
  }
}