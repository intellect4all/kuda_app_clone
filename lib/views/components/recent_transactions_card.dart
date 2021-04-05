import 'package:flutter/material.dart';
import 'package:kuda_app_clone/models/transaction.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/return_bankImage.dart';
import 'package:string_extensions/string_extensions.dart';

class RecentTransactionCard extends StatelessWidget {
  const RecentTransactionCard({
    Key key,
    @required this.transaction,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    Map data = <String, String>{
      "Kuda": 'assets/images/kuda.jpg',
      "GTBank Plc": 'assets/images/GTBank_logo.png',
      "United Bank of Africa": 'assets/images/acceleres.png',
      "Unknown Bank": 'assets/images/unknown.png',
      'uk': "assets/images/resized-1.jpg"
    };
    return Container(
      width: 55,
      margin: EdgeInsets.only(left: 15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: getBankImageAvatar(transaction, height: 50, width:50),
          ),
          SizedBox(height: 10),
          Text(
            transaction.amount < 0
                ? transaction.recipient.toTitleCase() ?? 'reciepient null'
                : transaction.sender.toTitleCase() ?? 'null',
            maxLines: 2,
            softWrap: true,
            textAlign: TextAlign.center,
            style: subTitleTextStyle.copyWith(fontSize:11),
          )
        ],
      ),
    );
  }
}
