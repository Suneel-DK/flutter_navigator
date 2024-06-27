library flutter_navigator;

import 'package:flutter/material.dart';

class NavigatorHelper{
  static void to(BuildContext context, Widget destination) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => destination));
  }
}
