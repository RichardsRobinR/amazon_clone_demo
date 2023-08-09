import 'package:amazon_clone_demo/view/components/custom_icons_icons.dart';
import 'package:flutter/material.dart';


class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search on Amazon...',
          prefixIcon: Icon(Icons.search,color: Color(0xFF7A7979)),
          suffixIcon: Icon(Icons.mic_none_rounded,color: Color(0xFF7A7979) ),
          // hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5, color: Color(0xFF7A7979)),
          borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                width: 1.5, color: Colors.grey),
          ),
          // icon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}





