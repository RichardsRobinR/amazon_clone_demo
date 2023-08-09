import 'package:amazon_clone_demo/view/components/StarRating.dart';
import 'package:amazon_clone_demo/view/components/custom_Carousel.dart';
import 'package:amazon_clone_demo/view/components/custom_SearchBar.dart';
import 'package:flutter/material.dart';


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

  @override
  Widget build(BuildContext context) {
    print("hello");
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSearchBar(),

          CarouselDemo(),
          // Container(
          //     height: 350,
          //     width: 350,
          //     color: Colors.red,
          //    ),
          SizedBox(height: 20),
          Text("Today's Deals"),
          SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 6, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          // width: 500,
                          // margin: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.network(imageUrls[index],

                          ),
                        ),
                        Container(
                          width: 150,
                          // padding: EdgeInsets.all(8.0),
                          child: const Text("laptoppppppppppppppppppppppppppppppppppppppppppppppppppppppppp",
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 1,),
                        ),
                        StarRating(rating: 4.5,),
                      ],
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
