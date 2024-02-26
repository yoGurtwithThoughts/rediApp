import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: const Color.fromRGBO(0, 108, 236, 1),
      activeColor: const Color.fromRGBO(0, 108, 236, 1),
       side:
      const BorderSide(width: 1, color: Color.fromRGBO(0, 108, 236, 1),),
      value: checkedValue,
      onChanged: (newValue) {
        setState(() {
          checkedValue = newValue!;
        });
      },
    );
  }
}
