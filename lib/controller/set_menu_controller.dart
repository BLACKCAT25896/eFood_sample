import 'package:get/state_manager.dart';
import 'package:sixam/data/model/set_menu.dart';
import 'package:sixam/services/remote_services.dart';
import 'package:sixam/view/base/set_menu.dart';

class SetMenuController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var setMenuList = List<SetMenu>().obs;

  @override
  void onInit() {
    fetchSetMenu();
    super.onInit();
  }

  void fetchSetMenu() async {
    try {
      isLoading(true);
      var setMenus = await RemoteServices.fetchSetMenu();
      if (setMenus != null) {
        setMenuList.value = setMenus;
      }
    } finally {
      isLoading(false);
    }
  }
}
