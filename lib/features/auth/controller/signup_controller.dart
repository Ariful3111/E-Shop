import 'package:e_shop/core/utils/helper/network_helpers.dart';
import 'package:e_shop/core/utils/loader/animation_loader.dart';
import 'package:e_shop/core/utils/loader/snack_loader.dart';
import 'package:e_shop/features/auth/models/user_model.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:e_shop/features/auth/repo/register_repo.dart';
import 'package:e_shop/features/auth/views/email_send_view.dart';
import 'package:e_shop/shared/widgets/success_page.dart';
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
      Get.to(
        EmailSendView(
          title: 'Verify your email address!',
          subTitle:
              'We\'ve sent a verification link to your email. Please check your inbox and click the link to verify your account',
          onTap: () {
            Get.to(
              SuccessPage(
                title: 'Your account successfully created',
                subTitle:
                    'Congratulations! Your account has been successfully created. You can now explore all the amazing features, start personalizing your experience, and enjoy seamless access to our services. Let\'s get started!',
                onTap: () {},
              ),
            );
          },
        ),
      );
    } catch (e) {
      AnimationLoader.stopLoading();
      SnackLoader.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
