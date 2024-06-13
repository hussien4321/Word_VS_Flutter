import 'package:flutter/material.dart';
import 'package:get/get.dart';

void quickSnackbar(String title, String desc) {
  Get.snackbar(
    title,
    desc,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.white,
    margin: const EdgeInsets.only(
      bottom: 32,
      left: 16,
      right: 16,
    ),
    animationDuration: const Duration(milliseconds: 200),
    duration: const Duration(seconds: 1),
  );
}

void topSnackbar(String msg) {
  Get.showSnackbar(
    GetSnackBar(
      message: msg,
      messageText: Center(
        child: Text(
          msg,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      borderRadius: 8,
      backgroundColor: Colors.grey.shade300,
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.only(
        top: 32,
        left: 16,
        right: 16,
      ),
      animationDuration: const Duration(milliseconds: 200),
      duration: const Duration(seconds: 3),
    ),
  );
}
