import 'dart:math';

import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:string_extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreenController extends GetxController {
  var count = 1.obs;

  Color getColor() {
    var oddColors = [Colors.amber, Colors.lightBlue, Colors.greenAccent];

    var evenColors = [Colors.redAccent, primaryColor, Colors.pinkAccent];

    var num = Random().nextInt(3);
    
    if (count.value % 2 == 1) {
      print(count.value);
      count.value++;
      num = Random().nextInt(3);
      return oddColors[num];
    } else {
      print(count.value);
      count.value++;
      num = Random().nextInt(3);
      return evenColors[num];
    }
  }

  String getAcronym(String name) {
    if (name.countWords() == 1) {
      return name.first().toUpperCase();
    } else if (name.countWords() > 1) {
      var first = name.first().toUpperCase();
      var list = name.split(' ');
      var second = list[1].first().toUpperCase();
      return '$first$second';
    }
  }
}
