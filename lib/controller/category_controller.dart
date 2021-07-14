import 'package:get/state_manager.dart';
import 'package:sixam/data/model/category.dart';
import 'package:sixam/services/remote_services.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var categoryList = List<Category>().obs;

  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }

  void fetchCategory() async {
    try {
      isLoading(true);
      var categories = await RemoteServices.fetchCategories();
      if (categories != null) {
        categoryList.value = categories;
      }
    } finally {
      isLoading(false);
    }
  }
}
