import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loader {
  static show({
    BuildContext? context,
  }) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.center,
              child: const CupertinoActivityIndicator(
                radius: 20,
              ))
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context ?? Get.context!,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
