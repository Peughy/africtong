import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMsg {
  final Color bgColor;
  final Color fgColor;
  const ToastMsg({
    required this.bgColor,
    required this.fgColor,
  });
  void showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM, // Position at bottom
        backgroundColor: bgColor,
        textColor: fgColor,
        fontSize: 16);
  }
}
