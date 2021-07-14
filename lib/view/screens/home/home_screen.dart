import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam/controller/banner_controller.dart';
import 'package:sixam/controller/category_controller.dart';
import 'package:sixam/controller/set_menu_controller.dart';
import 'package:sixam/util/dimensions.dart';
import 'package:sixam/view/base/categories.dart';
import 'package:sixam/view/base/food_banner.dart';
import 'package:sixam/view/base/search_bar.dart';
import 'package:sixam/view/base/set_menu.dart';
import 'package:sixam/view/base/bottom_navigation.dart';
import 'package:sixam/view/base/top_bar.dart';

class HomeScreen extends StatelessWidget {
  final CategoryController categoryController = Get.put(CategoryController());
  final BannerController bannerController = Get.put(BannerController());
  final SetMenuController setMenuController = Get.put(SetMenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: Dimensions.PADDING_SIZE_DEFAULT,
                right: Dimensions.PADDING_SIZE_DEFAULT),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TopBar(),
                SearchBar(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                  child: Text(
                    "All Categories",
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 85,
                  child: Obx(() {
                    if (categoryController.isLoading.value)
                      return Center(child: CircularProgressIndicator());

                    return ListView.builder(
                      itemBuilder: (contex, index) {
                        return Categories(
                            categoryController.categoryList[index]);
                      },
                      itemCount: categoryController.categoryList.length,
                      scrollDirection: Axis.horizontal,
                    );
                  }),
                ),
                SizedBox(
                  height: Dimensions.SIZEBOX_SIZE_LARGE,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                  child: Text(
                    "Set Menu",
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Obx(() {
                    if (setMenuController.isLoading.value)
                      return Center(child: CircularProgressIndicator());

                    return ListView.builder(
                      itemBuilder: (contex, index) {
                        return GestureDetector(
                          // ignore: deprecated_member_use
                          onTap: () => showModalBottomSheet(
                            context: context,
                            builder: (contex) {
                              return SetMenuScreen(
                                  setMenuController.setMenuList[index]);
                            },
                          ),
                          child: SetMenuScreen(
                              setMenuController.setMenuList[index]),
                        );
                      },
                      itemCount: setMenuController.setMenuList.length,
                      scrollDirection: Axis.horizontal,
                    );
                  }),
                ),
                SizedBox(
                  height: Dimensions.SIZEBOX_SIZE_LARGE,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                  child: Text(
                    "Banner",
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 85,
                  child: Obx(
                    () => ListView.builder(
                      itemBuilder: (contex, index) {
                        return FoodBanner(bannerController.bannerList[index]);
                      },
                      itemCount: bannerController.bannerList.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.SIZEBOX_SIZE_LARGE,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                  child: Text(
                    "Popular Item",
                    style: TextStyle(
                        fontSize: Dimensions.FONT_SIZE_LARGE,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
