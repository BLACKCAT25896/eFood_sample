import 'package:flutter/material.dart';
import 'package:sixam/data/model/popular_items.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PopularFoodItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/12.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Food Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {},
                      starCount: 5,
                      rating: 4,
                      size: 15.0,
                      isReadOnly: true,
                      color: Colors.grey,
                      borderColor: Colors.grey,
                      spacing: 0.0),
                  Text("\$ 12/23"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.favorite_outline,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Icon(Icons.add),
            ],
          )
        ],
      ),
    );
  }
}
