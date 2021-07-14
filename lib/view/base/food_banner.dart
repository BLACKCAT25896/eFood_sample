import 'package:flutter/material.dart';
import 'package:sixam/data/model/banners.dart';
import 'package:sixam/util/app_constants.dart';
import 'package:sixam/util/dimensions.dart';

class FoodBanner extends StatelessWidget {
  final FoodSliderBanner banner;
  const FoodBanner(this.banner);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
      child: Container(
        width: 240,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(7))),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.PADDING_SIZE_SMALL),
          child: Image.network(
            AppConstants.BANNER_IMAGE_BASE_URL + banner.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
