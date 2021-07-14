import 'package:get/state_manager.dart';
import 'package:sixam/data/model/banners.dart';
import 'package:sixam/data/model/category.dart';
import 'package:sixam/services/remote_services.dart';

class BannerController extends GetxController {
  // ignore: deprecated_member_use
  var bannerList = List<FoodSliderBanner>().obs;

  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }

  void fetchCategory() async {
    var banners = await RemoteServices.fetchBanner();
    if (banners != null) {
      bannerList.value = banners;
    }
  }
}
