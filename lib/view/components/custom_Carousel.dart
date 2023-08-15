import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://fastly.picsum.photos/id/756/334/280.jpg?hmac=4r2yKWj82ayO1ym14FWaAFCfuj-jiVoiRQTmAgK1Z-Q',
  'https://fastly.picsum.photos/id/756/334/280.jpg?hmac=4r2yKWj82ayO1ym14FWaAFCfuj-jiVoiRQTmAgK1Z-Q',
  'https://fastly.picsum.photos/id/756/334/280.jpg?hmac=4r2yKWj82ayO1ym14FWaAFCfuj-jiVoiRQTmAgK1Z-Q',
  'https://fastly.picsum.photos/id/756/334/280.jpg?hmac=4r2yKWj82ayO1ym14FWaAFCfuj-jiVoiRQTmAgK1Z-Q',
  'https://fastly.picsum.photos/id/756/334/280.jpg?hmac=4r2yKWj82ayO1ym14FWaAFCfuj-jiVoiRQTmAgK1Z-Q',

];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ],
        )),
  ),
))
    .toList();

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 334,
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}