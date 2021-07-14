// import 'package:get/state_manager.dart';
// import 'package:sixam/data/model/image_url.dart';
// import 'package:sixam/services/remote_services.dart';

// class ImageController extends GetxController {
//   var imageList = List<ImageUrl>().obs;

//   @override
//   void onInit() {
//     fetchImage();
//     super.onInit();
//   }

//   void fetchImage() async {
//     var images = await RemoteServices.fetchImages();
//     if (images != null) {
//       imageList.value = images;
//     }
//   }
// }
