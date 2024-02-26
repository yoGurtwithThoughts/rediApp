import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late String  text;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.white,
      elevation: 4.0,
      leading: IconButton(onPressed: () {
      Navigator.pop(context);
    },
     icon: SvgPicture.asset('assets/images/exit_icon.svg')),
     title: Text(text,
          style: TextStyle(
            color: Color(0xffa3a3a3),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),),
      centerTitle: true,
    );
  }
}