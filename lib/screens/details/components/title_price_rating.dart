import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    Key? key,
    required this.price,
    required this.numOfReviews,
    required this.rating,
    required this.name,
    required this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: rating,
                      onRated: onRatingChanged,
                    ),
                    SizedBox(width: 10,),
                    Text("$numOfReviews отзывов"),
                  ],
                ),
              ],
            ),
          ),
          priceTag(context, price: price),
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {required int price}) {
    return ClipPath(
          clipper: PricerCliper(),
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 15),
            height: 66,
            width: 65,
            color: kPrimaryColor,
            child: Text(
              "\$$price",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}

class PricerCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path =Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}
