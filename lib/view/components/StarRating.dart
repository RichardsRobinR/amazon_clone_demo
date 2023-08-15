import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;

  StarRating({required this.rating, this.starCount = 5, this.size = 12.0});

  @override
  Widget build(BuildContext context) {
    int filledStars = rating.floor();
    double remainder = rating - filledStars;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        if (index < filledStars) {
          return Icon(
            Icons.star,
            color: Color(0xFFEBA928),
            size: size,
          );
        } else if (index == filledStars && remainder > 0) {
          return Icon(
            Icons.star_half,
            color: Color(0xFFEBA928),
            size: size,
          );
        } else {
          return Icon(
            Icons.star_border,
            color: Color(0xFFEBA928),
            size: size,
          );
        }
      }),
    );
  }
}