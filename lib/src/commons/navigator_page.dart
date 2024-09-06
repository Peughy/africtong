import 'package:flutter/material.dart';

class NavigatorPage {
  // ignore: avoid_types_as_parameter_names
  void changePage(context, route) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  }
}
