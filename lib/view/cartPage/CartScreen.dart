import 'package:amazon_clone_demo/view/appBar/custom_appbar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      bottomNavigationBar: BottomAppBar(
        height: 130,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                "Total",
                style: TextStyle(fontSize: 20),),
                Text(
                  "Total",
                  style: TextStyle(fontSize: 30),),
              ],
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: ElevatedButton(onPressed: () {},
                  child:  Text("Add to Cart", style: TextStyle(fontSize: 26),),
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor:  Color(0xFFF3933F),
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              child: Text(
                "My List",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: imageUrls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 160,
                                  height: 160,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      imageUrls[index],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 210,
                                    child: const Text(
                                      "Mopio Chloe Futon Sofa Bed, Convertible Sleeper Sofa",
                                      style: TextStyle(fontSize: 16),
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Text(
                                    "\$11,000",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                      Text(
                                        "\$11,000",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

