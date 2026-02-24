import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shop/core/data/static_datas.dart';
import 'package:e_shop/core/utils/exceptions/format_exception.dart';
import 'package:e_shop/features/auth/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class RegisterRepo extends GetxController {
  final db = FirebaseFirestore.instance;

  Future<void> saveUserInfo(UserModel userModel) async {
    try {
      db.collection(StaticDatas.userCollection).doc(userModel.id).set(userModel.toJson());
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code.toString()).message.toString();
    } on FirebaseException catch (e) {
      throw FirebaseAuthException(code: e.code).message.toString();
      // ignore: unused_catch_clause
    } on FormatException catch (e) {
      throw AppFormatException();
    } on PlatformException catch (e) {
      throw AppFormatException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong. Please Try Again';
    }
  }
}
