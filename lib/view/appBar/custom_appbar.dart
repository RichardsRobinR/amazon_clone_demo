import 'package:amazon_clone_demo/view/components/custom_icons_icons.dart';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white, // <-- SEE HERE
        statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
      ),
      leading:  IconButton(
        icon: const Icon(Icons.menu),
        color: Color(0xFF221F1F),
        tooltip: 'Menu Icon',
        onPressed: () {},
      ),
      // leading: const Icon(CustomIcons.menu,color: Color(0xFF221F1F),),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          // Image.asset(
          //   'assets/icons/amazon_logo.png', // Replace this with your Amazon logo
          //   height: 20,
          //   width: 80.57,
          // ),
          SvgPicture.asset(
            'assets/icons/Logo.svg',
            semanticsLabel: 'My SVG Image',
            height: 24,
            width: 80.57,
          ),
        ],
      ),
      actions: [
       TextButton.icon(onPressed: () {}, icon: Icon(CustomIcons.location_icon,color: Color(0xFF221F1F)), label: Text("Deliver to\nMYSORE 570015",)),
        IconButton(
          icon: Icon(CustomIcons.bell),
          color: Color(0xFF221F1F),
          onPressed: () {
            // Add shopping cart functionality here
          },
        ),
      ],
      centerTitle: false,
    );
  }
}
