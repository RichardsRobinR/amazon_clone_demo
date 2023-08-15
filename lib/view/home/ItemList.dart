import 'package:amazon_clone_demo/view/components/StarRating.dart';
import 'package:amazon_clone_demo/view/detailsPage/DetailsScreen.dart';
import 'package:amazon_clone_demo/view_model/itemListViewModel.dart';
import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {

  final List<String> imageUrls;
  final ItemListViewModel itemListViewModel;
  ItemList({ Key? key,required this.imageUrls, required this.itemListViewModel}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(
        height: 300,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.itemListViewModel.itemRecords.length,
            itemBuilder: (BuildContext context, int index ,) {
              return Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 6, 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(index: index,itemListViewModel: widget.itemListViewModel,)),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          // padding: EdgeInsets.all(5.0),
                          width: 185,
                          height: 185,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              widget.imageUrls[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 185,
                      //   height: 185,
                      //   // width: 500,
                      //   // margin: EdgeInsets.symmetric(horizontal: 8.0),
                      //   child: Image.network(imageUrls[index],
                      //
                      //   ),
                      // ),
                      Container(
                        width: 185,
                        // padding: EdgeInsets.all(8.0),
                        child:  Text(widget.itemListViewModel.itemRecords[index].title.toString(),
                            style: TextStyle(fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 2),
                      ),
                      // Text("11,000"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StarRating(rating: widget.itemListViewModel.itemRecords[index].rating!.toDouble(),),
                          Text("11,000",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Row(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$479,99",
                            style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 12),),
                          SizedBox(width: 3,),
                          Text("\$368,99",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),

                        ],
                      )
                    ],
                  ),
                ),
              );
            }
        ),
      );

  }
}
