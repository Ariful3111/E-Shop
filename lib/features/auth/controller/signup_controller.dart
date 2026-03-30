import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/core/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_shop/core/utils/exceptions/format_exception.dart';
import 'package:e_shop/core/utils/helper/network_helpers.dart';
import 'package:e_shop/core/utils/loader/animation_loader.dart';
import 'package:e_shop/core/utils/loader/snack_loader.dart';
import 'package:e_shop/features/auth/models/user_model.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:e_shop/features/auth/repo/register_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final authRepo = Get.put(AuthRepoController());
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  RxBool isrRemember = false.obs;
  RxBool isPassVisible = false.obs;
  final formKey = GlobalKey<FormState>();

  Future<void> register() async {
    try {
      AnimationLoader.openLoadingDialog('We are processing your information');
      bool isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        AnimationLoader.stopLoading();
        SnackLoader.warningSnackBar(title: 'No Internet Connection');
        return;
      }
      if (!isrRemember.value) {
        AnimationLoader.stopLoading();
        SnackLoader.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account you have to accept privacy and policy',
        );
        return;
      }
      if (!formKey.currentState!.validate()) {
        AnimationLoader.stopLoading();
        return;
      }
      UserCredential userCredential = await authRepo.register(
        email: emailController.text,
        password: passController.text,
      );
      UserModel userModel = UserModel(
        id: userCredential.user!.uid,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        username: '${firstNameController.text}${lastNameController.text}',
        email: emailController.text.trim(),
        phoneNumber: phoneController.text.trim(),
        profilePicture: '',
      );
      final userRepo = Get.put(RegisterRepo());
      userRepo.saveUserInfo(userModel);
      SnackLoader.successSnackBar(
        title: 'CongraTulation',
        message: 'Your account has been successfully created.',
      );
      AnimationLoader.stopLoading();
      Get.toNamed(AppRoutes.emailVerification);
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
