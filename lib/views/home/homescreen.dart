import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/models/transaction.dart';
import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:20),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                child: Image.asset(
                                  'assets/images/resized-1.jpg',
                                  height: 40,
                                  fit: BoxFit.fill,
                                  width: 40,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Hi, Abdul-Jemeel',
                                style: GoogleFonts.muli(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Add Money',
                                style: GoogleFonts.muli(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.9,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                height: 28,
                                width: 28,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Account Balance',
                            style: GoogleFonts.muli(
                              color: accentColor,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'N',
                                style: GoogleFonts.muli(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '450.98',
                                style: GoogleFonts.muli(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: accentColor,
                                    ),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Spend',
                                    style: GoogleFonts.muli(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Icon(
                                      Icons.monetization_on,
                                      size: 22,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Save',
                                    style: GoogleFonts.muli(
                                      color: Colors.grey.shade600,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Icon(
                                      Icons.add_chart,
                                      size: 22,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Text(
                                    'Borrow',
                                    style: GoogleFonts.muli(
                                      color: Colors.grey.shade600,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        child: Text(
                          '25 Mar 2021',
                          style: GoogleFonts.muli(
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Column(
                        children: Data()
                            .today
                            .map(
                              (transaction) => Container(
                                height: 70,
                                padding: EdgeInsets.symmetric(horizontal:29, vertical:10),
                                margin: EdgeInsets.symmetric(vertical: 1.5),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: accentColor,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: _getwidget(transaction),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          transaction.amount < 0
                                              ? '${transaction.recipient}'
                                              : '${transaction.sender}',
                                          style: GoogleFonts.muli(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '${transaction.time}',
                                          style: GoogleFonts.muli(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: SizedBox.expand(),
                                    ),
                                    Text(
                                      transaction.amount < 0
                                          ? '${transaction.amount.abs().toStringAsFixed(2)}'
                                          : '+${transaction.amount.toStringAsFixed(2)}',
                                      style: GoogleFonts.muli(
                                        color: transaction.amount < 0
                                            ? Colors.black
                                            : Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        child: Text(
                          '24 Mar 2021',
                          style: GoogleFonts.muli(
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Column(
                        children: Data()
                            .yesterday
                            .map(
                              (transaction) => Container(
                                height: 70,
                                padding: EdgeInsets.symmetric(horizontal:29, vertical:10),
                                margin: EdgeInsets.symmetric(vertical: 1.5),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: accentColor,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: _getwidget(transaction),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          transaction.amount < 0
                                              ? '${transaction.recipient}'
                                              : '${transaction.sender}',
                                          style: GoogleFonts.muli(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '${transaction.time}',
                                          style: GoogleFonts.muli(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: SizedBox.expand(),
                                    ),
                                    Text(
                                      transaction.amount < 0
                                          ? '${transaction.amount.abs().toStringAsFixed(2)}'
                                          : '+${transaction.amount.toStringAsFixed(2)}',
                                      style: GoogleFonts.muli(
                                        color: transaction.amount < 0
                                            ? Colors.black
                                            : Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                        child: Text(
                          '22 Mar 2021',
                          style: GoogleFonts.muli(
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Column(
                        children: Data()
                            .third_data
                            .map(
                              (transaction) => Container(
                                height: 70,
                                padding: EdgeInsets.symmetric(horizontal:29, vertical:10),
                                margin: EdgeInsets.symmetric(vertical: 1.5),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: accentColor,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: _getwidget(transaction),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          transaction.amount < 0
                                              ? '${transaction.recipient}'
                                              : '${transaction.sender}',
                                          style: GoogleFonts.muli(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '${transaction.time}',
                                          style: GoogleFonts.muli(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: SizedBox.expand(),
                                    ),
                                    Text(
                                      transaction.amount < 0
                                          ? '${transaction.amount.abs().toStringAsFixed(2)}'
                                          : '+${transaction.amount.toStringAsFixed(2)}',
                                      style: GoogleFonts.muli(
                                        color: transaction.amount < 0
                                            ? Colors.black
                                            : Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: Get.width,
        height: 60,
        padding: EdgeInsets.fromLTRB(30, 8, 30, 7),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey.shade600),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                  color: primaryColor,
                ),
                Text(
                  'Home',
                  style: GoogleFonts.muli(
                    fontSize: 10,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  LineAwesomeIcons.money_bill,
                  size: 30,
                  color: primaryColor.withOpacity(0.5),
                ),
                Text(
                  'Payments',
                  style: GoogleFonts.muli(
                    fontSize: 10,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  LineAwesomeIcons.clock,
                  size: 30,
                  color: primaryColor.withOpacity(0.5),
                ),
                Text(
                  'Budget',
                  style: GoogleFonts.muli(
                    fontSize: 10,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  LineAwesomeIcons.credit_card,
                  size: 30,
                  color: primaryColor.withOpacity(0.5),
                ),
                Text(
                  'Cards',
                  style: GoogleFonts.muli(
                    fontSize: 10,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  LineAwesomeIcons.clipboard_with_check,
                  size: 30,
                  color: primaryColor.withOpacity(0.5),
                ),
                Text(
                  'More',
                  style: GoogleFonts.muli(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getwidget(Transaction transaction) {
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
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(image, fit: BoxFit.fill, height: 30, width: 30));
    } else {
      var d = transaction.senderBank;
      print('sender');
      print('sender bank: $d');
      String image = data[d];
      print(image);
      return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(image, fit: BoxFit.fill, height: 30, width: 30));
    }
  }
}
