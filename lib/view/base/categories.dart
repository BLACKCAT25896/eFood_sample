import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam/data/model/category.dart';
import 'package:sixam/util/app_constants.dart';
import 'package:sixam/util/dimensions.dart';

class Categories extends StatelessWidget {
  final Category category;

  const Categories(this.category);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              AppConstants.CATEGORY_IMAGE_BASE_URL + category.image,
            ),
            radius: 26,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image.network(
                AppConstants.CATEGORY_IMAGE_BASE_URL + category.image,
                height: 100,
              ),
            ),
          ),
          Text(category.name),
        ],
      ),
    );
  }
}
