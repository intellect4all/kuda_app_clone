import 'package:flutter/material.dart';
import 'package:kuda_app_clone/models/transaction.dart';

Widget getBankImageAvatar(Transaction transaction,{@required double height, @required double width }) {
  Map data = <String, String>{
    "Kuda": 'assets/images/kuda.jpg',
    "GTBank Plc": 'assets/images/GTBank_logo.png',
    "United Bank for Africa": 'assets/images/acceleres.png',
    "Unknown Bank": 'assets/images/unknown.png',
  };

  if (transaction.amount < 0) {
    var d = transaction.recipientBank;
    print('recipie');
    print(d);
    String image = data[d];
    print(image);
    return ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(image, fit: BoxFit.fill, height: height, width: width));
  } else {
    var d = transaction.senderBank;
    print('sender');
    print('sender bank: $d');
    String image = data[d];
    print(image);
    return ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(image, fit: BoxFit.fill, height: height, width: height));
  }
}
