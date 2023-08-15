import 'package:amazon_clone_demo/view/appBar/custom_appbar.dart';
import 'package:amazon_clone_demo/view/components/custom_icons_icons.dart';
import 'package:amazon_clone_demo/view/detailsPage/DetailsScreen.dart';
import 'package:amazon_clone_demo/view/home/home_screen.dart';
import 'package:amazon_clone_demo/view/cartPage/CartScreen.dart';
import 'package:amazon_clone_demo/view_model/itemListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    ItemListViewModel itemListViewModel = context.watch<ItemListViewModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(CustomIcons.category_icon),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(CustomIcons.profile_icon),
            label: 'Saved',
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        // Container(
        //   color: Colors.red,
        //   alignment: Alignment.center,
        //   child: const Text('Page 1'),
        // ),
        CartScreen(),
        CartScreen(),
        // DetailsScreen(),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}
