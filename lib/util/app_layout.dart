import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(context) => MediaQuery.of(context).size;
  static getScreenHeight() => Get.height;
  static getScreenWidth() => Get.width;
  static getHeight(double val) {
    double x = getScreenHeight() / val;
    return getScreenHeight() / x;
  }

  static getWidth(double val) {
    double x = getScreenWidth() / val;
    return getScreenWidth() / x;
  }
}
