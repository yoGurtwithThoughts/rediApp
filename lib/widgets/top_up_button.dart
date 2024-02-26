import 'package:flutter/material.dart';

class TopUpButton extends StatelessWidget {
  final Widget icon;
  final String Txt;
  const TopUpButton({
    super.key,
   required this.icon,
   required this.Txt,
   });

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Color(0xff0560fa),
            child: IconButton(
              onPressed: () {},
              icon: icon),
          ),
          SizedBox(height: 5,),
          Text(Txt,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff3a3a3a)
          ),)
        ],
      ),
    );
  }
}