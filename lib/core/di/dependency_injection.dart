import 'package:e_shop/core/data/local/theme_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DependencyInjection {
  static Future<void> init() async {
    await GetStorage.init();
    Get.put(ThemeService(), permanent: true);
  }
}
