import 'package:amazon_clone_demo/view/appBar/custom_appbar.dart';
import 'package:amazon_clone_demo/view/components/custom_DropdownButtons.dart';
import 'package:amazon_clone_demo/view_model/itemListViewModel.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  final ItemListViewModel itemListViewModel;
  const DetailsScreen({super.key, required this.index, required this.itemListViewModel});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  List<String> imageUrls = [
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/200/300",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Center(
               child: Image(
                 width: 400,
                  height: 350,
                  image: NetworkImage(
                   imageUrls[0]),
                 fit: BoxFit.contain,
               ),
             ),
             SizedBox(height: 20,),
             Text(widget.itemListViewModel.itemRecords[widget.index].title.toString(),
               style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
             SizedBox(height: 10,),
             const Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("\$129.99",
                   style: TextStyle(fontSize: 30,color: Color(0xFFF3933F),fontWeight: FontWeight.w500),),
                 SizedBox(width: 25,),
                 Text("PRIME",
                   style: TextStyle(fontSize: 30),),

               ],
             ),
             SizedBox(height: 25,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Expanded(child: CustomDropDown()),
                 Expanded(child: CustomDropDown())
               ],
             ),
             SizedBox(height: 25,),
             Padding(
               padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
               child: ElevatedButton(onPressed: () {},
                 child:  Text("Add to Cart", style: TextStyle(fontSize: 26),),
                 style: ElevatedButton.styleFrom(
                   elevation: 4,
                 backgroundColor:  Color(0xFFF3933F),
                 minimumSize: const Size.fromHeight(50), // NEW
               ),),
             ),
             SizedBox(height: 20,),
             Card(
               elevation: 4,
                child: ExpansionTile(
                  title: Text("About this Item"),
                  children: [
                    Text("Name : User "),
                    Text("Phone No: "),
                    const Text("isAdmin: No")
                  ],
                ),
              )
           ],
          ),
        ),
      ),
    );
  }
}
