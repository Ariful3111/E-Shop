import 'package:e_shop/core/data/local/theme_service.dart';
import 'package:e_shop/core/theme/theme_controller.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:e_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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

    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ).then((value) {
      Get.put(AuthRepoController());
    });
  }
}
