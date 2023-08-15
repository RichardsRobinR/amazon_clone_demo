import 'package:amazon_clone_demo/view/components/StarRating.dart';
import 'package:amazon_clone_demo/view/components/custom_Carousel.dart';
import 'package:amazon_clone_demo/view/components/custom_SearchBar.dart';
import 'package:amazon_clone_demo/view/home/ItemList.dart';
import 'package:amazon_clone_demo/view_model/itemListViewModel.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  List<String> imageUrls = [
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
  ];
  late ItemListViewModel itemListViewModel;

  @override
  void initState() {

    super.initState();
    //itemListViewModel = context.watch<ItemListViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    print("hello");
    itemListViewModel = context.watch<ItemListViewModel>();
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSearchBar(),
          CarouselDemo(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text("Today's Deals",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ItemList(imageUrls: imageUrls,itemListViewModel: itemListViewModel,)
        ],
      ),
    );
  }
}
