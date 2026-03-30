import 'dart:async';

import 'package:e_shop/core/utils/loader/snack_loader.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:e_shop/shared/widgets/success_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  Future<void> sendVerificationEmail() async {
    try {
      await Get.find<AuthRepoController>().sendEmailVerification();
      SnackLoader.successSnackBar(
        title: 'Email Sent',
        message: 'Please check your inbox verify your email',
      );
    } catch (e) {
      SnackLoader.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  Future<void> checkVerificationStatus() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null && currentUser.emailVerified) {
        Get.off(
          SuccessPage(
            title: 'Your account successfully created',
            subTitle:
                'Congratulations! Your account has been successfully created. You can now explore all the amazing features, start personalizing your experience, and enjoy seamless access to our services. Let\'s get started!',
            onTap: () {
              Get.find<AuthRepoController>().screenDirection();
            },
          ),
        );
      }
    } catch (e) {
      SnackLoader.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  void reloadTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser!.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessPage(
            title: 'Your account successfully created',
            subTitle:
                'Congratulations! Your account has been successfully created. You can now explore all the amazing features, start personalizing your experience, and enjoy seamless access to our services. Let\'s get started!',
            onTap: () {
              Get.find<AuthRepoController>().screenDirection();
            },
          ),
        );
      }
    });
  }

  @override
  void onInit() {
    sendVerificationEmail();
    reloadTimer();
    super.onInit();
  }
}
