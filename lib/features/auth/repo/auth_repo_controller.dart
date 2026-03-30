import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/core/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_shop/core/utils/exceptions/format_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthRepoController extends GetxController {
  final localStorage = GetStorage();
  final _register = FirebaseAuth.instance;
  void screenDirection() {
    final user = _register.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAllNamed(AppRoutes.bottomNavigation);
      } else {
        Get.offAllNamed(AppRoutes.emailVerification);
      }
    } else {
      localStorage.write('isFirstTime', true);
      localStorage.read('isFirstTime') != true
          ? Get.toNamed(AppRoutes.onboardingView)
          : Get.toNamed(AppRoutes.loginView);
    }
  }

  Future<UserCredential> register({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _register
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
      // ignore: unused_catch_clause
    } on FormatException catch (e) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppFormatException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong. Please Try Again';
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      _register.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
      // ignore: unused_catch_clause
    } on FormatException catch (e) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppFormatException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong. Please Try Again';
    }
  }

  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _register
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
      // ignore: unused_catch_clause
    } on FormatException catch (e) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppFormatException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong. Please Try Again';
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed(AppRoutes.loginView);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
    } on FirebaseException catch (e) {
      throw AppFirebaseAuthExceptions(e.code);
      // ignore: unused_catch_clause
    } on FormatException catch (e) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppFormatException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong. Please Try Again';
    }
  }

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenDirection();
    super.onReady();
  }
}
