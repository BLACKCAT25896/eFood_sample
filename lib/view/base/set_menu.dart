import 'package:flutter/material.dart';
import 'package:sixam/data/model/set_menu.dart';
import 'package:sixam/util/app_constants.dart';
import 'package:sixam/util/dimensions.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SetMenuScreen extends StatelessWidget {
  final SetMenu setMenu;
  const SetMenuScreen(this.setMenu);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 200,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/efood_bike.png',
                  image: AppConstants.PRODUCT_IMAGE_BASE_URL + setMenu.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: Dimensions.PADDING_SIZE_SMALL),
              child: Text(
                setMenu.name,
                style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_DEFAULT,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_SMALL),
              child: SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: 5,
                  rating: 4,
                  size: 15.0,
                  isReadOnly: true,
                  color: Colors.red,
                  borderColor: Colors.orange,
                  spacing: 0.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_SMALL),
              child: Text('\$ ' + setMenu.price.toString()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_SMALL),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ' + setMenu.discount.toString(),
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Icon(Icons.add),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
