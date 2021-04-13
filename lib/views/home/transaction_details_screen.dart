import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:kuda_app_clone/models/beneficiary.dart';
import 'package:kuda_app_clone/models/transaction.dart';
import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/recent_transactions_card.dart';
import 'package:kuda_app_clone/views/components/return_bankImage.dart';
import 'package:kuda_app_clone/views/components/standardButton.dart';

class TransactionScreen extends StatelessWidget {
  final Transaction transaction;
  const TransactionScreen({
    Key key,
    @required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.chevron_left_rounded,
                            size: 35,
                            color: primaryColor,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Transaction',
                        style: boldTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                          ),
                        ),
                        StandardButton(
                          text: 'Share',
                          onPressed: () {
                            //TODO: add a share link
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(
                                color: primaryColor.withOpacity(0.4),
                                blurRadius: 1.5,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: accentColor.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.mobile_friendly_outlined,
                                  size: 13,
                                  color: primaryColor,
                                ),
                              ),
                              SizedBox(width: 25),
                              Text(
                                'Transfer',
                                style: boldTextStyle.copyWith(
                                  color: primaryColor,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(width: 25),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 30,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'On',
                          style: GoogleFonts.muli(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '${transaction.date}',
                          style: GoogleFonts.muli(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'at',
                          style: GoogleFonts.muli(
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '${transaction.time}',
                          style: GoogleFonts.muli(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '#${transaction.amount.abs().toStringAsFixed(2)}',
                            style: GoogleFonts.muli(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            transaction.amount < 0
                                ? '${transaction.recipient}'
                                : '${transaction.sender}',
                            style: GoogleFonts.muli(
                              fontSize: 13,
                            ),
                          ),
                          Divider(
                            color: Colors.black87,
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                     transaction.amount < 0 ? 'To' : 'From',
                                    style: GoogleFonts.muli(
                                      fontSize: 11,
                                    ),
                                  ),
                                  
                                  Text(
                                    transaction.amount < 0 ? '${transaction.recipientBank}' : '${transaction.senderBank}',
                                    style: GoogleFonts.muli(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: accentColor,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child: getBankImageAvatar(transaction,
                                      height: 40, width: 40),
                                ),
                              ),
                            ],
                          ),
                          Divider(color: Colors.black87, height: 20),
                          SizedBox(height: 5),
                          Text(
                            'Description',
                            style: GoogleFonts.muli(
                              fontSize: 11,
                            ),
                          ),
                          
                          Text(
                            '${transaction.description}',
                            style: GoogleFonts.muli(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(color: Colors.black87, height: 20),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Payment Method',
                                      style: GoogleFonts.muli(
                                        fontSize: 11,
                                      ),
                                    ),
                                    
                                    Text(
                                      transaction.amount < 0 ? 'Money Sent' : 'Money Received',
                                      style: GoogleFonts.muli(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fees',
                                      style: GoogleFonts.muli(
                                        fontSize: 11,
                                      ),
                                    ),
                                    
                                    Text(
                                      '${transaction.fees.abs().toStringAsFixed(2)}',
                                      style: GoogleFonts.muli(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.black87, height: 20),
                          SizedBox(height: 40),
                          Text('More Actions', style: boldTextStyle),
                          SizedBox(height: 20),
                          Card(
                            elevation: 1,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(22, 8, 15, 8),
                                margin: EdgeInsets.symmetric(vertical: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 4,
                                            top: 0,
                                            child: Container(
                                              height: 35,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.red
                                                      .withOpacity(0.5),
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 4,
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              height: 35,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: HexColor('#FFCCCC'),
                                                border: Border.all(
                                                  color: Colors.red,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '!',
                                                  style: GoogleFonts.muli(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Report Transaction',
                                          style: GoogleFonts.muli(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          'Report an issue with this payment',
                                          style: subTitleTextStyle,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      size: 30,
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
