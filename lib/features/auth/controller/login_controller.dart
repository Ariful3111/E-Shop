import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/core/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_shop/core/utils/exceptions/format_exception.dart';
import 'package:e_shop/core/utils/helper/network_helpers.dart';
import 'package:e_shop/core/utils/loader/animation_loader.dart';
import 'package:e_shop/core/utils/loader/snack_loader.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final authRepo = Get.put(AuthRepoController());
  RxBool isRemember = false.obs;
  RxBool isPassVisible = false.obs;
  final formKey = GlobalKey<FormState>();
  final localStorage = GetStorage();
  Future<void> login() async {
    try {
      AnimationLoader.openLoadingDialog('We are processing your information');
      bool isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        AnimationLoader.stopLoading();
        SnackLoader.warningSnackBar(title: 'No Internet Connection');
        return;
      }
      if (isRemember.value) {
        localStorage.write('remember_email', emailController.text.trim());
        localStorage.write('remember_password', passController.text.trim());
      }

      if (!formKey.currentState!.validate()) {
        AnimationLoader.stopLoading();
        return;
      }
      await authRepo.login(
        email: emailController.text,
        password: passController.text,
      );
      AnimationLoader.stopLoading();
      authRepo.screenDirection();
      SnackLoader.successSnackBar(
        title: 'CongraTulation',
        message: 'Login successfully',
      );
      AnimationLoader.stopLoading();
      Get.toNamed(AppRoutes.bottomNavigation);
    } catch (e) {
      AnimationLoader.stopLoading();
      String message = 'Something went wrong';
      if (e is AppFirebaseAuthExceptions) {
        message = e.message;
      } else if (e is AppFormatException) {
        message = e.message;
      } else if (e is FirebaseAuthException) {
        message = e.message ?? message;
      }
      SnackLoader.errorSnackBar(title: 'Error', message: message);
    }
  }
}
