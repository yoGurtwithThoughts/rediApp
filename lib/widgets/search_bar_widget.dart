import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Search services',
        suffixIcon: const Icon(Icons.search),
        fillColor: const Color(0xffA7A7A7).withOpacity(0.7),
        filled: true,
        hoverColor: Colors.white,
        border: InputBorder.none,
      ),
    );
  }
}
