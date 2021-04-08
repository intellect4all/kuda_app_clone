import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/models/beneficiary.dart';
import 'package:kuda_app_clone/models/transaction.dart';
import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/recent_transactions_card.dart';
import 'package:kuda_app_clone/views/components/standardButton.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SendMoneyScreen extends StatelessWidget {
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
                          'Send Money',
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
                            text: 'next',
                            onPressed: null,
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
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
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
                              Text(
                                'Free transfers to other banks',
                                style: subTitleTextStyle.copyWith(
                                    letterSpacing: 0.5, color: primaryColor),
                              ),
                              SizedBox(width: 20),
                              Text(
                                '20',
                                style: boldTextStyle.copyWith(color: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(
                                LineAwesomeIcons.clock,
                                color: Colors.green,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text('Beneficiaries', style: subTitleTextStyle),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 95,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Data().beneficiaries.length,
                                  itemBuilder: (context, index) {
                                    var beneficiaries = [
                                      Beneficiary(
                                          name: 'Choose beneficiary',
                                          bank: 'uk',
                                          accountNumber: ''),
                                    ];
                                    var recentTransactions = [];
                                    var recent = [
                                      Data().today,
                                      Data().yesterday,
                                      Data().third_data
                                    ];
                                    for (var data in recent) {
                                      recentTransactions.addAll(data);
                                    }

                                    Map data = <String, String>{
                                      "Kuda": 'assets/images/kuda.jpg',
                                      "GTBank Plc": 'assets/images/GTBank_logo.png',
                                      "United Bank of Africa":
                                          'assets/images/acceleres.png',
                                      "Unknown Bank": 'assets/images/unknown.png',
                                      'uk': "assets/images/resized-1.jpg"
                                    };
                                    return index == 0
                                        ? Container(
                                            width: 55,
                                            margin: EdgeInsets.only(left: 20),
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(70),
                                                  child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      color: accentColor,
                                                      child: Icon(
                                                          Icons
                                                              .supervised_user_circle,
                                                          size: 30)),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  beneficiaries[index].name,
                                                  maxLines: 2,
                                                  softWrap: true,
                                                  textAlign: TextAlign.center,
                                                  style: subTitleTextStyle.copyWith(
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        : RecentTransactionCard(
                                            transaction:
                                                recentTransactions[index - 1]);
                                  },
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Amount',
                                style: labelTextStyle,
                              ),
                              Text(
                                'Balance: #13.50',
                                style: labelTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: '#0.00',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder:
                                  OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Bank',
                            style: labelTextStyle,
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintStyle: TextStyle(),
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder:
                                  OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Account Number',
                            style: labelTextStyle,
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: '0123456789',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder:
                                  OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Add a Note (Optional)',
                            style: labelTextStyle,
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: 'What\'s this for?',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder:
                                  OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          ),
                        ],
                      ),
                    )
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
