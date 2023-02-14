import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_widget/custom_text.dart';
import '../constant/app_color.dart';
import '../constant/app_text_size.dart';
import '../utils/app_string.dart';

class DataHelper {
  static RxBool isLogin = false.obs;
  static RxInt productId = 0.obs;
  static RxString fullPrice = ''.obs;

  static RxBool offerCheck = false.obs;
  static RxBool subscribeCheck = false.obs;
  static RxString gender = ''.obs;
  static RxBool isLoading = false.obs;

  static void changeLanguage(String lang) {
    Locale locale = Locale(lang);
    Get.updateLocale(locale);
  }

  static void printLog(String key, dynamic value) {}

  static void debugPrintLog(String key, dynamic value) {}

  static void logData(String key, dynamic value) {}

  static showToast(String message) {
    return Get.snackbar(
      AppStrings.message,
      message,
      snackPosition: SnackPosition.TOP,
      colorText: AppColor.white,
      borderRadius: 10,
      backgroundColor: AppColor.buttonPrimaryColor,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
    );
  }

  static bool emailValidation(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static showDialogBox(
      {required BuildContext context,
      required String msg,
      required Function()? onSuccessTap}) async {
    return await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: CustomText(
          txt: msg,
          alignment: TextAlign.start,
          fontSize: AppTextSize.idelTextSize,
        ),
        actions: [
          ElevatedButton(
            onPressed: onSuccessTap,
            child: CustomText(
              txt: AppStrings.yes,
              alignment: TextAlign.center,
              colour: AppColor.white,
            ),
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: CustomText(
              txt: AppStrings.no,
              alignment: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
