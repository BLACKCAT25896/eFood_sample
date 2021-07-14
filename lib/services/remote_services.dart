import 'package:http/http.dart' as http;
import 'package:sixam/data/model/banners.dart';
import 'package:sixam/data/model/category.dart';
import 'package:sixam/data/model/popular_items.dart';
import 'package:sixam/data/model/set_menu.dart';
import 'package:sixam/util/app_constants.dart';

class RemoteServices {
  int currentPage = 1;
  List<ProductElement> products = [];
  static var client = http.Client();

  static Future<List<Category>> fetchCategories() async {
    var response = await client.get(
      Uri.parse(AppConstants.BASE_URL + '/api/v1/categories'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return categoryFromJson(jsonString);
    } else {
      return null;
    }
  }

  static Future<List<FoodSliderBanner>> fetchBanner() async {
    var response = await client.get(
      Uri.parse(AppConstants.BASE_URL + '/api/v1/banners'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return foodBannerFromJson(jsonString);
    } else {
      return null;
    }
  }

  static Future<List<SetMenu>> fetchSetMenu() async {
    var response = await client.get(
      Uri.parse(AppConstants.BASE_URL + '/api/v1/products/set-menu'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return setMenuFromJson(jsonString);
    } else {
      return null;
    }
  }
}
