import 'package:e_shop/core/data/local/theme_service.dart';
import 'package:e_shop/core/theme/theme_controller.dart';
import 'package:e_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DependencyInjection {
  static Future<void> init() async {
    await GetStorage.init();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
    Get.put(ThemeService(), permanent: true);
    Get.put(ThemeController(), permanent: true);
  }
}
